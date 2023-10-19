#ifndef KLIB_H
#define KLIB_H
#include"comm/types.h"
#include<stdarg.h>
#define REALSE

static inline uint32_t down2( uint32_t size , uint32_t bounds ){
    return size / bounds * bounds;
}

static inline uint32_t up2( uint32_t size , uint32_t bounds ){
    return (size + bounds - 1)/ bounds * bounds;
}

void kernel_strcpy( char * dest , const char * src );
void kernel_strncpy( char * dest , const char * src , int size );
int kernel_strncpm( const char * s1 , const char * s2 , int size );
int kernel_strlen( const char * str );

void kernel_memcpy( void * dest , void * src , int size );
void kernel_memset( void * dest , uint8_t v , int size );
int kernel_memcmp( void * d1 , void * d2 , int size );

void kernel_vsprintf( char * str_buf , const char * fmt , va_list args );
void kernel_sprintf( char * str_buf , const char * fmt , ... );

#ifndef RELEASE
#define ASSERT(condition)    \
    if (!(condition)) pannic(__FILE__, __LINE__, __func__, #condition)
void pannic (const char * file, int line, const char * func, const char * cond);
#else
#define ASSERT(condition)    ((void)0)
#endif
#endif