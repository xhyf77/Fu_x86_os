#include"core/task.h"
#include"tools/log.h"
#include"core/memory.h"
#include"applib/lib_syscall.h"
int first_task_main( void ){
    int pid = getpid();
    int value = 20;

    for( ; ; ){
        print_msg("task id = %d" , pid );
        msleep(1000);
    }

    return 0;
}