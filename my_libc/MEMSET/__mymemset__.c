/* 
creating a memset on my own :)

Notes:
 - memset also works in byte to byte even the func signature 
   shows the set value type as int it would be considered or converted to unsigned char.
*/

#include <stdio.h>
#include <string.h>

static void print_int_arr(int [],size_t);
static void *my_memset(void *,int ,size_t );

int main(void){
    int mem_arr[10];
    int my_mem_arr[10];
    printf("before memset mem_arr; size = %zu\n",sizeof(mem_arr));
    print_int_arr(mem_arr,10);
    printf("before memset my_mem_arr; size = %zu\n",sizeof(my_mem_arr));
    print_int_arr(my_mem_arr,10);
    memset(mem_arr,'a',sizeof(mem_arr));
    my_memset(my_mem_arr,'a',sizeof(my_mem_arr));
    printf("after memset (mem_arr)\n");
    print_int_arr(mem_arr,10);
    printf("after memset (my_mem_arr)\n");
    print_int_arr(my_mem_arr,10);
    return 0;
}

void print_int_arr(int arr[], size_t size){
    printf("[");
    for(size_t i = 0;i<size;i++){
        if (i<size-1)
            printf("%d ",*(arr+i));
        else
            printf("%d",*(arr+i));
    }
    printf("]\n");
}

void *my_memset(void *_s,int _c, size_t _n){
    unsigned char *src = (unsigned char *)_s;
    unsigned char val = (unsigned char) _c;
    while (_n){
        *(src++) = val;
        _n--;
    }
    return src;
}