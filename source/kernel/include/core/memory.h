#ifndef MEMORY_H
#define MEMORY_H
#define MEM_EXT_START      (1024 * 1024)
#define MEM_EXT_END        (127 * 1024 * 1024 )
#define MEM_PAGE_SIZE      ( 4096 )
#define MEM_EBDA_START     0x80000
#define MEMORY_TASK_BASE   0x80000000
#include"comm/types.h"
#include"tools/bitmap.h"
#include"ipc/mutex.h"
#include"comm/boot_info.h"
#include"cpu/mmu.h"


typedef struct _addr_alloc_t {
    mutex_t mutex;
    bitmap_t bitmap;
    uint32_t start;
    uint32_t size;
    uint32_t page_size;
}addr_alloc_t;

typedef struct _memory_map_t{
    void * vstart;
    void * vend;
    void * p_start;
    uint32_t perm;
}memory_map_t;

void memory_init( boot_info_t * boot_info );
uint32_t memory_create_uvm( void );

int memory_alloc_page_for( uint32_t addr , uint32_t size , int prem );
int memory_alloc_for_page_dir( uint32_t page_dir , uint32_t vaddr , uint32_t size,  int prem );
void free_pagemap( addr_alloc_t * alloc , uint32_t vaddr , uint32_t page_count , pde_t * page_dir );
void task_free_page_map( uint32_t vaddr , uint32_t page_count , pde_t * page_dir );
uint32_t memory_alloc_page(void);
void memory_free_page( uint32_t addr );
  
#endif