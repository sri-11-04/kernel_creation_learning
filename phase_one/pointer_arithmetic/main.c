/* 
p+n = p + n * sizeof *p
*/


#include <stdio.h>

#define MAX_SIZE 5

int main(void){
    int arr[MAX_SIZE] = {10,20,30,40,50};
    int *intPtr = arr;
    char *charPtr = (char*) arr;
    short *shortPtr = (short*) arr;
    void *voidPtr = (void*) arr;
    printf("before adding 1\n");
    printf("address intptr = %p ; value intptr = %d\n",intPtr,*(intPtr));
    printf("address charptr = %p ; value charptr = %d\n",charPtr,*(charPtr));
    printf("address shortptr = %p ; value shortptr = %d\n",shortPtr,*(shortPtr));
    printf("address voidptr = %p ; value voidptr = %d\n",voidPtr,*((int*)voidPtr));
    intPtr++; // int pointer => ptr + 4*n (in 64bit system else 2)
    charPtr++; // char pointer => ptr + 1*n
    shortPtr++; // short pointer => ptr + 2*n 
    voidPtr++; // void pointer => ptr + 1*n it is compiler specific gcc might consider 1 byte
    printf("after adding 1\n");
    printf("address intptr = %p ; value intptr = %d\n",intPtr,*(intPtr));
    printf("address charptr = %p ; value charptr = %d\n",charPtr,*(charPtr));
    printf("address shortptr = %p ; value shortptr = %d\n",shortPtr,*(shortPtr));
    printf("address voidptr = %p ; value voidptr = %d\n",voidPtr,*((int*)voidPtr));
    return 0;
}