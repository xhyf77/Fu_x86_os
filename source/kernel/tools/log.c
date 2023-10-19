#include<stdarg.h>
#include"tools/log.h"
#include"comm/cpu_instr.h"
#include"tools/klib.h"
#include"cpu/irq.h"
#include"ipc/mutex.h"
#define COM1_PORT   0x3F8

static mutex_t mutex;

void log_init( void ){
    mutex_init(&mutex);
    outb( COM1_PORT + 1 , 0x00 );
    outb( COM1_PORT + 3 , 0x80 ); 
    outb( COM1_PORT + 0 , 0x03 );
    outb( COM1_PORT + 1 , 0x00 );
    outb( COM1_PORT + 3 , 0x03 );
    outb( COM1_PORT + 2 , 0xc7 );
    outb( COM1_PORT + 4 , 0x0f );
}

void log_printf( const char * fmt , ... ){
    char str_buf[128];
    va_list args;
    kernel_memset( str_buf , '\0' , sizeof(str_buf) );
    va_start( args , fmt );
    kernel_vsprintf( str_buf , fmt , args );
    va_end( args );

    mutex_lock(&mutex);
//临界区
    const char * p = str_buf;
    while( *p != '\0' ){
        while((inb(COM1_PORT + 5) & ( 1 << 6 )) == 0 );
        outb( COM1_PORT , *p++ );
    }

    outb( COM1_PORT , '\r' );
    outb( COM1_PORT , '\n' );
//临界区
    mutex_unlock(&mutex);
}