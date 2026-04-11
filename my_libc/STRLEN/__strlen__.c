/* 
creating my own str len func
*/


#include <stdio.h>
#include <string.h>
#include <inttypes.h>

size_t mystrlen(char *);

int main(void){
    char name[] = "sri annamalai";
    printf("len(name) = %zu (using strlen)\n",strlen(name));
    printf("len(name) = %zu (using mystrlen)\n",mystrlen(name));
    uint64_t *name_64 = (uint64_t*) name;
    int res = ((intptr_t)name_64 - 0x0101) & ~(intptr_t)name_64 & 0x8080;
    printf("res = %d\n",res);
    return 0;
}

size_t mystrlen(char *_s){
    size_t size = 0;
    while (*_s++ != '\0') size++;
    return size;
}

