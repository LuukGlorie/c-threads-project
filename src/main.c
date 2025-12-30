#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "threadpool.h"

int main(){
    threadpool_t pool;
    threadpool_init(&pool);

    int task_arg = 42;
    threadpool_add_task(&pool, example_task, &task_arg);

    sleep(1); // Give some time for the task to complete

    threadpool_destroy(&pool);

    return 0;
}