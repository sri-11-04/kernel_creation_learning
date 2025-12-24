/* 
for notes refer notes.txt
*/

#include <stdio.h>
#include <stdlib.h>


typedef struct IntList IntList;

void reverse(IntList *self);
void append(IntList *self,int value);
void resize(IntList *self,size_t size);
void __init__(IntList *self,int *array,int size);
int pop_last(IntList *self);
void shrunk(IntList *self);
int pop(IntList *self,int index);
void swap(int *a,int *b);
void list_remove(IntList *self,int val);
int *find_index(IntList *self,int val);
void _clear_(IntList *self);
void __str__(IntList *self);

struct IntList{
    int size;
    int capacity;
    int *array;
    void (*reverse)(IntList *self);
    void (*append)(IntList *self,int value);
    void (*resize)(IntList *self,size_t size);
    int (*l_pop)(IntList *self);
    int (*pop)(IntList*self,int index);
    void (*shrunk)(IntList *self);
    void (*remove)(IntList *self,int val);
    int *(*index)(IntList *self,int val);
    void (*clear)(IntList *self);
    void (*str)(IntList *self);
};


int main(void){
    IntList list;
    IntList *self = &list;
    __init__(self,malloc(sizeof(int)),0);

    list.append(self,1);
    list.append(self,2);
    list.append(self,3);
    list.append(self,4);

    list.str(self);
    printf("len = %d\n",list.size);

    printf("poped element is %d\n",list.l_pop(self));
    list.str(self);
    printf("len = %d\n",list.size);

    int index = 0;
    
    printf("poped element at the index %d is %d\n",index,list.pop(self,index));
    list.str(self);
    printf("len = %d\n",list.size);

    // list.append(self,5);
    // list.append(self,6);
    // list.str(self);
    // printf("len = %d\n",list.size);

    // list.remove(self,5);
    // list.append(self,7);
    // list.str(self);
    // printf("len = %d\n",list.size);

    list.clear(self);
    return 0;
}


void append(IntList *self,int value){
    if (self->size >= self->capacity){
        self->resize(self,self->capacity*(12/100));
    }
    *(self->array+self->size++) = value;
}

void __init__(IntList *self,int *array,int size){
    self->array = array;
    self->size = size;
    self->capacity = size+1;
    self->append = append;
    self->reverse = reverse;
    self->remove = list_remove;
    self->clear=_clear_;
    self->l_pop = pop_last;
    self->pop = pop;
    self->shrunk = shrunk;
    self->resize = resize;
    self->index = find_index;
    self->str = __str__;

}

void resize(IntList *self,size_t cap){
    int *temp_arr = malloc(cap * sizeof *temp_arr);
    if (!temp_arr){
        printf("resize failed, attempting to resize again!!!!\n");
        return resize(self,cap);
    }
    for (int i = 0; i<self->size;i++)
        *(temp_arr+i) = *(self->array+i);
    free(self->array);
    self->array = temp_arr;
    self->capacity = cap;
}

int pop_last(IntList *self){
    if (!self->size){
        return -1;
    }
    int last = *(self->array+self->size---1);
    self->shrunk(self);
    return last;
}

int pop(IntList *self,int index){
    if (!self->size){
        return -1;
    }
    for (int i=index;i<self->size-1;i++){
        swap((self->array+index),self->array+index+1);
    }
    return pop_last(self);
}

void shrunk(IntList *self){
    if (self->size <= self->capacity/2)
        self->resize(self,self->size+1);
}

void swap(int *a,int *b){
    *a = *a ^ *b;
    *b = *a ^ *b;
    *a = *a ^ *b;
}

void reverse(IntList *self){
    int l=0,r=self->size-1;
    while(l<r){
        swap(self->array+l++,self->array+r--);
    }
}

int *find_index(IntList *self,int val){
    for (int i = 0; i< self->size;i++){
        if (*(self->array+i)==val){
            int *heap_mem = malloc(sizeof *heap_mem);
            *heap_mem = i; 
            return heap_mem;
        }
    }
    return NULL;
}


void list_remove(IntList *self,int val){
    int *index;
    if ((index = self->index(self,val))!=NULL){
        int i = *(int*) index;
        free(index);
        pop(self,i);
    }
}

void _clear_(IntList *self){
    free(self->array);
}

void __str__(IntList *self){
    printf("[");
    for (int i = 0;i<self->size;i++){
        int *ptr = self->array+i;
        printf("(add = %p, val = %d)",ptr,*ptr);
        if (i < self->size-1){
            printf(", ");
        }
    }
    printf("]\n");
}

