#include "my_string_lib.h"



size_t my_strlen(const char *array){
    size_t len = 0;
    while (*array++ != '\0') len++;
    return len;
}


char *my_strcpy(char *dest,char *src){
    char *d = dest;
    while ((*d++ = *src++));
    return dest;
}



