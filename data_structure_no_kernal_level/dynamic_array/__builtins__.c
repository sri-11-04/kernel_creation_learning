/* 
this is where my list contructor is going to be there
*/

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define INTARR_SIZE 10

// size of list struct in 64bit cpu architecture is 24 bytes 
typedef struct {
    size_t __len__;
    int *arr;
    uint8_t __capacity__;
} IntList;

static void intListAppend(IntList*,int);
static void intListExtends(IntList*,int [],size_t);
static int intListPop(IntList*,int);
static size_t len(IntList*);
static IntList *intListCopy(IntList*);
static void listReverse(IntList*);
static void intListSort(IntList*);
static size_t intListIndex(IntList*,int);
static void listClear(IntList*);
static void intListInsert(IntList*,int,int);
static void intListPrint(IntList*);
static void listResize(IntList*);
static IntList *__list__(int [],size_t);
static void* mymemcpy(void*,void*,size_t);
static char __includes__(IntList*,int);


int main(void){
    int arr[INTARR_SIZE] = {0,1,2,3,4,5,6,7,8,9};
    IntList *list = __list__(arr,INTARR_SIZE);
    intListPrint(list);
    printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
    for (int i = 10;i<101;i++) intListAppend(list,i);
    intListPrint(list);
    printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
    intListExtends(list,arr,INTARR_SIZE);
    intListAppend(list,100);
    int last_data = intListPop(list,len(list)-1);
    printf("lastindex = %d\n",last_data);
    intListAppend(list,101);
    intListInsert(list,0,1000);
    intListInsert(list,0,2000);
    printf("index = %zu\n",intListIndex(list,1000));
    intListSort(list);
    intListPrint(list);
    listClear(list);
    free(list);
    list = (void*)0;
    return 0;
}


IntList *__list__(int arr[],size_t size){
    IntList *list = malloc(sizeof *list);
    if (!list){
        perror("error while allocating memory!");
        exit(1);
    }
    uint8_t capacity = 0;
    // setting the base value for cap;
    while (1<<capacity < size)capacity++;
    // to match the power of 2 (with out mathematical)
    //while (capacity&capacity-1) capacity++; // no need as we got that in the first loop itself.
    int *nArr = malloc(sizeof *nArr *(1<<capacity));
    if (!nArr){
        perror("error while allocating memory!");
        exit(1);
    }
    for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
    list->arr = nArr;
    list->__capacity__ = capacity;
    list->__len__ = size;
    return list;
}


void listResize(IntList *self){
    int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
    if (!newArr){
        // printf("cap = %u\n",self->__capacity__);
        perror("error while allocating new memory!!");
        exit(1);
    }
    for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
    free(self->arr);
    self->arr = newArr;
}

size_t len(IntList *self) {return self->__len__;}


void intListPrint(IntList *self){
    printf("[");
    for (int i = 0;i<self->__len__;i++) printf(
        (i>=self->__len__-1) 
        ? "%d" 
        : "%d, ",
        *(self->arr+i)
    );
    printf("]\n");
}

void listClear(IntList *self){
    free(self->arr);
    self->arr = (void*)0;
    self->__len__ = 0;
    self->__capacity__ = 0;
}

void intListAppend(IntList *self,int val){
    if (!self->arr){
        // printf("inside\n");
        int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
        if (!newArr){
            // printf("cap = %u ",self->__capacity__);
            perror("error while allocating memory");
            exit(1);
        }
        self->arr = newArr;
    }

    if ((float) self->__len__ / (1<<self->__capacity__) >= 0.75) {
        // printf("cap before resize = %u and len = %zu\n",self->__capacity__,self->__len__);
        self->__capacity__++;
        listResize(self);
    }
    *(self->arr + self->__len__++) = val;
}

void *mymemcpy(void *source, void *destination, size_t size){
    
}

void intListExtends(IntList* self,int arr[],size_t size){
    size_t new_size = self->__len__ + size;
    uint8_t prev_capacity = self->__capacity__;
    while (1<<self->__capacity__ < new_size) self->__capacity__++;
    // printf("before cap = %u\nsize = %zu\n",self->__capacity__,self->__len__);
    if (prev_capacity!=self->__capacity__) listResize(self);
    // printf("after cap = %u\nsize = %zu\n",self->__capacity__,self->__len__);
    for (;self->__len__<new_size;self->__len__++) {
        int index = size - (new_size - self->__len__);
        // printf("new_size - self->__len__ - size = %d\n",index);
        *(self->arr+self->__len__) = *(arr + index);}
}


int intListPop(IntList *self,int index){
    if (!self->__len__) {
        printf("poping from an empty list");
        exit(1);
    }else if (index >= self->__len__){
        printf("List index out of range");
        exit(1);
    }

    int res = *(self->arr+index);

    for (int i = index;i<self->__len__-1;i++)
        *(self->arr+i) = *(self->arr+i+1);

    self->__len__--;

    if ((float)self->__len__/(1<<self->__capacity__) <= 0.25){
        self->__capacity__--;
        listResize(self);
    }

    return res;
}


void intListInsert(IntList *self,int index,int val){
    if (self->__len__ < index){
        perror("list index out of range");
        exit(1);
    }else if (index < 0){
        perror("index cannot be negative");
        exit(1);
    }

    if (!self->arr){
        int *newArr = malloc(sizeof * newArr * (1<<self->__capacity__)); 
        if (!newArr){
            perror("Error while allocating new memory.");
            exit(1);
        }

        self->arr = newArr;
    }

    if ((float)self->__len__ / (1<<self->__capacity__) >= 0.75){
        self->__capacity__++;
        listResize(self);
    }

    self->__len__++;
    for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
    *(self->arr+index) = val;
}


size_t intListIndex(IntList *self,int val){
    for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;

    perror("list has no such value");
    exit(1);
}

char __includes__(IntList *self,int val){
    for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
    return 0;
}

void listReverse(IntList *self){
    size_t l = 0,r = len(self);
    while (l<r){
        *(self->arr+l) ^= *(self->arr+r);
        *(self->arr+r) ^= *(self->arr+l);
        *(self->arr+l) ^= *(self->arr+r);
        l++;
        r--;
    }
}

IntList *intListCopy(IntList *self){
    IntList *newList = malloc(sizeof * newList);
    int *arr = malloc(sizeof * arr * (1<<self->__capacity__));
    if (!newList || !arr){
        perror("Error while allocating memory!");
        exit(1);
    }

    for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);

    newList->arr = arr;
    newList->__capacity__ = self->__capacity__;
    newList->__len__ = self->__len__;
    return newList;
}


void intListSort(IntList *self){
    for (size_t i = 1;i<self->__len__;i++){
        int cur = *(self->arr+i);
        size_t j = i-1;

        while (j>=0 && cur < *(self->arr+j)) {
            // printf("j = %zu & i = %zu\n",j,i);
            *(self->arr+j+1) = *(self->arr+j);
            j--;
        }
        *(self->arr+j+1) = cur;
        // printf("arr[i] = %d\n",self->arr[i]);
    }
}



















