/* 
trying to recreate offsetof macro
*/

#include <stdio.h>
#include <stddef.h>

// defining macro my_offsetof
#ifndef my_offsetof
    #define my_offsetof(TYPE,MEMBER) ((size_t) &((TYPE*)0)->MEMBER) // logic is creating a pointer with the type and accessing its memb's address
#endif

struct Test{
    int a;
    char b;
};

int main(void){
    size_t offset = my_offsetof(struct Test,b);
    printf("offset of Test b is %zu (with my offset) and %zu (with offsetof)\n",offset,offsetof(struct Test,b));
    return 0;
}