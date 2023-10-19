#include"core/memory.h"
#include"tools/bitmap.h"
#include"tools/log.h"
#include"tools/klib.h"
#include"cpu/mmu.h"

static addr_alloc_t paddr_alloc;

static pde_t kernel_page_dir[PDE_CNT] __attribute__((aligned(MEM_PAGE_SIZE))); 
static void addr_alloc_init( addr_alloc_t * alloc , uint8_t * bits , 
    uint32_t start , uint32_t size , uint32_t page_size ){
    mutex_init(&alloc->mutex);
    alloc->start = start;
    alloc->size = size;
    alloc->page_size = page_size;
    bitmap_init( &alloc->bitmap , bits , alloc->size / page_size , 0 );
}

static uint32_t addr_alloc_page( addr_alloc_t * alloc , int page_count ){
    uint32_t addr = 0;
    mutex_lock(&alloc->mutex);

    int page_index = bitmap_alloc_nbits( &alloc->bitmap , 0 , page_count );
    if( page_index >= 0 ){
        addr = alloc->start + page_index * alloc->page_size;
    }
    mutex_unlock(&alloc->mutex);
    return addr;
}

static void addr_free_page( addr_alloc_t * alloc , uint32_t addr , int page_count ){
    mutex_lock(&alloc->mutex);
    uint32_t pg_index = ( addr - alloc->start ) / alloc->page_size;
    bitmap_set_bit( &alloc->bitmap , pg_index , page_count , 0 );
    mutex_unlock(&alloc->mutex);

}

void show_mem_info( boot_info_t * boot_info ){
    log_printf("mem region");
    for( int i = 0 ; i < boot_info->ram_region_count ; i ++ ){
        log_printf("[%d]:%x - %x\n" , i , boot_info->ram_region_cfg[i].start , 
        boot_info->ram_region_cfg[i].size);
    }
}

pte_t * find_pte( pde_t * page_dir , uint32_t vaddr , int alloc ){

    pte_t * page_table;
    //找到是页目录表中的表项
    pde_t * pde = page_dir + pde_index( vaddr );
    //判断该表项是否存在
    if( pde->present ){
        page_table = (pte_t *)pde_paddr(pde);
    }
    else{
        if( alloc == 0 ){
            return (pte_t *)0;
        }
        //创建一个二级页表
        uint32_t pg_paddr = addr_alloc_page( &paddr_alloc , 1 );
        if( pg_paddr == 0 ){
            return (pte_t * )0;
        }

        pde->v = pg_paddr | PDE_P | PDE_W | PDE_U; 
        page_table = (pte_t *)pg_paddr;
        kernel_memset( page_table , 0 , MEM_PAGE_SIZE );
    }

    return page_table + pte_index( vaddr );
}

int memory_create_map (pde_t * page_dir , uint32_t vaddr , uint32_t paddr , int count , uint32_t prem ){
    for( int i = 0 ; i < count ; i ++ ){
        pte_t * pte = find_pte( page_dir , vaddr , 1 );
        if( pte == (pte_t *)0 ){
            return -1;
        }
        ASSERT( pte->present == 0 );
        pte->v = paddr | prem | PTE_P;
        vaddr += MEM_PAGE_SIZE;
        paddr += MEM_PAGE_SIZE;
    }
}

void create_kernel_table( void ){
    extern uint8_t s_text[] , e_text[] , s_data[] , kernel_base[];
    static memory_map_t kernel_map[] = {
        { kernel_base , s_text , kernel_base , PTE_W },
        { s_text , e_text ,  s_text , 0 },
        { s_data , (void *)MEM_EBDA_START , s_data , PTE_W } ,
        { (void *)MEM_EXT_START , (void *)MEM_EXT_END , (void *)MEM_EXT_START , PTE_W }
    };

    for( int i = 0 ; i < sizeof(kernel_map) / sizeof(memory_map_t) ; i ++ ){
        memory_map_t * map = kernel_map + i;
        uint32_t vstart = down2( (uint32_t)map->vstart , MEM_PAGE_SIZE );
        uint32_t vend = up2( (uint32_t)map->vend , MEM_PAGE_SIZE );
        uint32_t paddr = down2((uint32_t)map->p_start , MEM_PAGE_SIZE );
        int page_count = (vend - vstart) / MEM_PAGE_SIZE;
        memory_create_map( kernel_page_dir ,  vstart , paddr , page_count , map->perm );
    }
}

static uint32_t total_mem_size( boot_info_t * boot_info ){
    uint32_t mem_size = 0;
    for( int i = 0 ; i < boot_info->ram_region_count ; i ++ ){
        mem_size += boot_info -> ram_region_cfg[i].size;
    }
    return mem_size;
}

void memory_init( boot_info_t * boot_info ){
    extern uint8_t * mem_free_start;
    log_printf("mem init");
    show_mem_info( boot_info );
    uint8_t * mem_free = (uint8_t *)&mem_free_start;
    uint32_t mem_up1MB_free = total_mem_size(boot_info) - MEM_EXT_START;
    mem_up1MB_free = down2( mem_up1MB_free , MEM_PAGE_SIZE );
    log_printf("free memory:%x , size:%x" , MEM_EXT_START , mem_up1MB_free );
    addr_alloc_init( &paddr_alloc , mem_free , MEM_EXT_START , mem_up1MB_free , MEM_PAGE_SIZE );
    mem_free += bitmap_byte_count( paddr_alloc.size / MEM_PAGE_SIZE );
    ASSERT( mem_free < (uint8_t *)MEM_EBDA_START );

    create_kernel_table();
    mmu_set_page_dir((uint32_t)kernel_page_dir);
}

uint32_t memory_create_uvm( void ){
    pde_t * page_dir = (pde_t *)addr_alloc_page(&paddr_alloc , 1);
    if( page_dir == 0 ){
        return 0;
    }
    kernel_memset((void *)page_dir , 0 , MEM_PAGE_SIZE );
    uint32_t user_pde_start = pde_index(MEMORY_TASK_BASE);
    for(int i = 0 ; i < user_pde_start ; i ++ ){
        page_dir[i].v = kernel_page_dir[i].v;
    }

    return (uint32_t)page_dir;
}

void free_pagemap( addr_alloc_t * alloc , uint32_t vaddr , uint32_t page_count , pde_t * page_dir ){
    //没收二级页表的页表项
    for(int i = 0 ; i < page_count ; i ++ ){
        pte_t * pte = find_pte( page_dir , vaddr , 0 );
        if( pte == 0 ) continue;
        uint32_t paddr = ( pte->phy_page_addr ) << 12;
        addr_free_page( &paddr_alloc , paddr , 1 );
        vaddr = vaddr + MEM_PAGE_SIZE;
        pte->v = 0;
    } 
    //没收二级页表
    for(int i = 0 ; i < ( page_count / 1024 ); i ++ ){
        pde_t * pde = page_dir + pde_index(vaddr);
        if( pde->present == 0 ) continue;
        uint32_t paddr = ( pde->phy_pt_addr ) << 12;
        addr_free_page( &paddr_alloc , paddr , 1 );
        vaddr = vaddr + MEM_PAGE_SIZE * 1024 ;
        pde->v = 0;
    }     
}

void task_free_page_map( uint32_t vaddr , uint32_t page_count , pde_t * page_dir ){
    free_pagemap( &paddr_alloc , vaddr , page_count , page_dir );
    return ;
}

int memory_alloc_for_page_dir( uint32_t page_dir , uint32_t vaddr , uint32_t size,  int prem ){
    uint32_t curr_vaddr = vaddr;
    int page_count = up2( size , MEM_PAGE_SIZE ) / MEM_PAGE_SIZE; 

    for( int i = 0 ; i < page_count ; i ++ ){
        uint32_t paddr = addr_alloc_page( &paddr_alloc , 1 );
        if( paddr == 0 ){
            log_printf("mem alloc failed. At memory_alloc_for_page_dir()");
            return 0;
        }

        int err = memory_create_map((pde_t *)page_dir , curr_vaddr , paddr , 1 , prem );
        if( err < 0 ){
            log_printf("create memory failed . err = %d " , err );
            free_pagemap( &paddr_alloc , vaddr , i  , (pde_t *)page_dir );
            return 0;
        }

        curr_vaddr += MEM_PAGE_SIZE;
    }
    return 0;
}

int memory_alloc_page_for( uint32_t addr , uint32_t size , int prem ){
    return memory_alloc_for_page_dir( task_current() -> tss.cr3 , addr , size , prem );
}

uint32_t memory_alloc_page(void){
    uint32_t addr = addr_alloc_page( &paddr_alloc , 1 );
    return addr;
}

static pde_t * curr_page_dir ( void ){
    return (pde_t *)( task_current()->tss.cr3 );
}

void memory_free_page( uint32_t addr ){
    if( addr < MEMORY_TASK_BASE ){
        addr_free_page(&paddr_alloc , addr , 1 );
    }
    else{
        pte_t * pte = find_pte( curr_page_dir() , addr , 0 );
        addr_free_page( &paddr_alloc , pte_paddr(pte), 1 );
        pte->v = 0; 
    }
}