/* 
here i will try to replicate the memmove from the string lib
*/


#include <stdio.h>
#include <string.h>
#include <inttypes.h>



int main(void){
    int *ptr = (int*)0x1;
    uintptr_t *iptr = (uintptr_t*)ptr;
    printf("pointer of ptr is %p\n",ptr);
    printf("pointer of iptr is %p\n",iptr);
    return 0;
}