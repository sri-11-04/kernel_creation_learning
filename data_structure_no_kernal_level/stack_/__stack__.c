/* 
Here i will create a stack data structure (initial stage to mimic stack memory)
*/



#include <stdio.h>
#include <stdlib.h>

#define MAX_SIZE 4096

typedef struct {
    int array[MAX_SIZE];
    size_t size;
} IntStack;

static IntStack *__stack_init__(int [],size_t);
static void int_stack_push(IntStack *, int);
static int int_stack_pop(IntStack *);
static 

int main(void){
    
    return 0;
}