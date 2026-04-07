/* 
* here i will try to mimic a random thread illusions
*/



#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define BASE_SIZE 20

typedef struct {
    void *stack;
    void *funcion_pointer;
}Thread;

static Thread *__thread_init__(void *);
static void _thread_start(Thread *);
static void _push_to_stack(Thread *);

int main(void){
    void *stack[BASE_SIZE];
    memset(stack,NULL,sizeof(stack));

    return 0;
}

Thread *__thread_init__(void *func){
    Thread *new_thread = malloc(sizeof * new_thread);
    if (!new_thread){
        perror("Error while allocating memory to thread: ");
        exit(1);
    }

    new_thread->funcion_pointer = func;
    void *stack = malloc(sizeof * stack + BASE_SIZE);
    if (!stack){
        perror("Error while alocating memory to stack: ");
        exit(1);
    }

    new_thread->stack = stack;
    return new_thread;
}






