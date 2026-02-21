/* 
Creating a singly linked list
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// type alias
typedef struct SlinglyLinkedList SlinglyLinkedList;
typedef struct Node Node;

// prototypes (fuction signature)
static void insert_head(SlinglyLinkedList **,int);
static void insert_tail(SlinglyLinkedList **,int);
static void insert_at(SlinglyLinkedList **,int,int);
static void delete_val(SlinglyLinkedList **,int);
static void delete_list(SlinglyLinkedList **);
static void print_list(SlinglyLinkedList **);

struct Node{
    Node *node;
    int data;
};

struct SlinglyLinkedList{
    Node *head;
    void (*insert_head)(SlinglyLinkedList **,int);
    void (*append)(SlinglyLinkedList **,int);
    void (*insert)(SlinglyLinkedList **,int,int);
    void (*remove)(SlinglyLinkedList **,int);
    void (*clear)(SlinglyLinkedList **);
    void (*print)(SlinglyLinkedList **);
};

int main(void){
    // SlinglyLinkedList sll;
    SlinglyLinkedList sll = {
        .head = (void*)0,
        .append = insert_tail,
        .clear = delete_list,
        .insert_head = insert_head,
        .insert = insert_at,
        .remove = delete_val,
        .print = print_list
    };

    SlinglyLinkedList *self_ptr = &sll;
    SlinglyLinkedList **self = &self_ptr;

    sll.print(self);
    sll.append(self,1);
    sll.append(self,2);
    sll.append(self,3);
    sll.append(self,4);
    sll.insert_head(self,0);
    sll.insert_head(self,-1);
    sll.append(self,5);
    sll.insert(self,0,0);
    sll.insert(self,10,1);
    sll.insert(self,100,9);
    sll.append(self,1000);
    sll.remove(self,1000);
    sll.remove(self,100);
    sll.remove(self,1);
    sll.append(self,10000);
    sll.print(self);

    sll.clear(self);
    printf("head is %p\n",sll.head);

    return 0;
}

static void insert_head(SlinglyLinkedList **self,int data){
    Node* new_node = malloc(sizeof *new_node);

    if (!new_node){
        perror("error in creating memory");
        (*self)->clear(self);
        exit(1);
    }

    new_node->data = data;
    new_node->node = (*self)->head;
    (*self)->head = new_node;
    // printf("head memory is %p\n",(*self)->head);
}

static void print_list(SlinglyLinkedList **self){
    // print
    printf("Head ->");
    Node *temp = (*self)->head;

    while (temp){
        printf(" %d ->",temp->data);
        temp = temp->node;
    }
    
    printf(" Tail\n");
}

static void delete_list(SlinglyLinkedList **self){
    // clear
    Node *head,*next;
    next = (void*)0;
    head = (*self)->head;

    if (!head) return;

    while (head) {
        next = head->node;
        free(head);
        head = next;
    }

    (*self)->head = (void*)0;
}

static void insert_tail(SlinglyLinkedList **self,int data){
    // append
    if (!(*self)->head) return (*self)->insert_head(self,data);

    Node *new_node,*head,*prev;
    new_node = malloc(sizeof *new_node);

    if (!new_node){
        perror("error in creating memory");
        (*self)->clear(self);
        exit(1);
    }

    new_node->data = data;
    new_node->node = (void*)0;
    head = (*self)->head;
    prev = (void*)0;

    while (head){
        prev = head;
        head = head->node;
    }

    prev->node = new_node;
}

static void insert_at(SlinglyLinkedList **self,int data,int index){
    // insert
    if (index == 0){
        return (*self)->insert_head(self,data);
    }
    int count = 0;
    Node *head,*new_node;
    head = (*self)->head;
    new_node = malloc(sizeof *new_node);

    if (!new_node){
        perror("error in creating memory");
        (*self)->clear(self);
        exit(1);
    }

    while (++count < index && head) head = head->node;
    printf("count = %d\n",count);
    if (count != index || !head){
        free(new_node);
        new_node = (void*)0;
        printf("list index out of range\n");
        (*self)->clear(self);
        exit(1);
    }

    new_node->data = data;
    new_node->node = head->node;
    head->node = new_node;   
}

static void delete_val(SlinglyLinkedList **self,int data){
    // remove
    Node *head = (*self)->head, *prev = (void*)0;

    while(head && head->data != data){
        prev = head;
        head = head->node;
    }

    if (!head){
        printf("data %d not found\n",data);
        (*self)->clear(self);
        exit(1);
    }

    if (!prev) (*self)->head = head->node;
    else prev->node = head->node;

    free(head);
    head = (void*)0;
}