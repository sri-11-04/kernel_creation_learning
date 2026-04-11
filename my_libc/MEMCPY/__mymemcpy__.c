/* 
My task here is to create my own memcpy 

which will copy byte by byte

and an optimized memcpy which will copy word by word (as this sys has x86_64 the word size is 64bit which is 8 bytes)
*/


#include <stdio.h>
#include <string.h>
#include <inttypes.h>


static void *mymemcy(void *, void *, size_t);
static void print_int_arr(int [],size_t);
static void *opt_memcpy(void *,void *,size_t);

int main(void){
    int arr1[] = {0,1,2,3,4,5,6,7,8,9};
    char name[] = "By checking if (size >= 8) first, you never hit the underflow. Your big loop handles the bulk, and your byte loop handles the leftovers (0 to set it).!";
    char name2[sizeof(name)/sizeof(*name)];
    size_t size = sizeof(arr1)/sizeof(*arr1);
    int arr2[size];
    printf("size = %zu\n",size);
    printf("printing array 1\n");
    print_int_arr(arr1,size);
    printf("printing array 2\n");
    print_int_arr(arr2,size);
    printf("-----------------------------------memcpy---------------------------\n");
    // opt_memcpy(arr2,arr1,sizeof(arr1));
    opt_memcpy(name2,name,sizeof(name));
    printf("printing name after memcpy %s\n",name2);
    printf("printing array 2 after memcpy\n");
    // print_int_arr(arr2,size);
    return 0;
}


void print_int_arr(int arr[],size_t size){
    printf("[");
    for (size_t i = 0; i<size; i++){
        printf(
            i<size-1 ? 
            "%d, " :
            "%d",
            *(arr+i)
        );
    }
    printf("]\n");
}


void *mymemcy(void *_dst, void *_src, size_t _n){
    unsigned char const *src = (unsigned char*) _src;
    unsigned char *dst = (unsigned char*) _dst;
    while (_n--) *dst++ = *src++;
    return dst;
}

void *opt_memcpy(void *_dst,void *_src,size_t _n){
    char word_size = 8;
    unsigned char const *src = (unsigned char*) _src;
    unsigned char *dst = (unsigned char*) _dst;

    if (_n<=16){
        while(_n--) *dst++ = *src++;
        return _dst;
    }

    printf("pointer to the source is %p\n",src);
    while ((uintptr_t)src%word_size){
        printf("inside finding divible by 8\n");
        *dst++ = *src++;
        _n--;
    }

    uint64_t const *src_64 = (uint64_t*) src;
    uint64_t *dst_64 = (uint64_t*) dst;

    while (_n && _n>=word_size){
        printf("inside word movment _n = %zu\n",_n);
        *dst_64++ = *src_64++;
        _n-=word_size;
    }

    unsigned char const *s1 = (unsigned char*) src_64;
    unsigned char *d1 = (unsigned char*) dst_64;

    uint8_t backing_count = word_size - _n;
    printf("backing_count = %u\n",backing_count);
    s1-=backing_count;
    d1-=backing_count;

    uint64_t const *src_64_n = (uint64_t*) s1;
    uint64_t *dst_64_n = (uint64_t*) d1;
    *dst_64_n++ = *src_64_n++;

    return _dst;
}




