/* 
for any notes refer notes.txt
*/

#include <stdio.h>
#include <string.h>
#include <stdlib.h>


int main(void){
    int *arr = malloc(sizeof * arr * 10);
    for (int i = 0; i<10;i++) printf("%d\n",*(arr+i)); 
    printf("after mem set\n");
    memset(arr,10,sizeof * arr);
    for (int i = 0; i<10;i++) printf("%d\n",*(arr+i)); 
    free(arr);
    return 0;
}