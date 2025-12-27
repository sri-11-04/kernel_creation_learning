/* 
practice for memory creation
*/

#include <stdio.h>
#include <stdlib.h>

void func(void *ptr){
    printf("when moving with 1 ptr = %d\n",ptr+1);
}

int main(void){
    int *arr;
    arr = malloc(sizeof *arr);
    func(arr);
    free(arr);
    return 0;
}