#include"core/task.h"
#include"tools/log.h"
#include"core/memory.h"
#include"applib/lib_syscall.h"
int first_task_main( void ){
    for( ; ; ){
//        log_printf("first task");
        msleep(1000);
    }

    return 0;
}