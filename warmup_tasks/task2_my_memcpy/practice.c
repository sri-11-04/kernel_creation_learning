/* 
practice for memory creation

when it comes to void pointer; pointer arithmetic is illegal and the std c compiler doesnt know how much to increment 
so it is better to convert it to char ptr before arithmetic operation

But in GNU the void pointer has 1 bytes so adding 1 will move 1 byte like char 
*/

#include <stdio.h>
#include <stdlib.h>

void func(void *ptr){
    printf("ptr = %p\nwhen moving void pointer with 1 ptr = %p\n",ptr,ptr+4);
}

int main(void){
    int *arr;
    arr = malloc(sizeof *arr);
    func(arr);
    free(arr);
    arr=NULL;
    return 0;
}