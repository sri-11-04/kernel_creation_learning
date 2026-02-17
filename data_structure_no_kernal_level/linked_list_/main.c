/* 
Creating a singly linked list
*/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// type alias
typedef struct SlinglyLinkedList SlinglyLinkedList;
typedef struct Node Node;

// prototypes
void insert_head(SlinglyLinkedList **,int);
void insert_tail(SlinglyLinkedList **,int);
void insert_at(SlinglyLinkedList **,int,int);
void delete_val(SlinglyLinkedList **,int);
void delete_list(SlinglyLinkedList **);


int main(void){

    return 0;
}

struct SlinglyLinkedList{
    Node *head;
    void (*insert_head)(SlinglyLinkedList **,int);
    void (*insert_tail)(SlinglyLinkedList **,int);
    void (*insert_at)(SlinglyLinkedList **,int,int);
    void (*delete_val)(SlinglyLinkedList **,int);
    void (*delete_list)(SlinglyLinkedList **);
};

struct Node{
    Node *node;
    int data;
};

void insert_head(SlinglyLinkedList **self,int data){
    Node* new_node = malloc(sizeof *new_node);
    if (!new_node){
        perror("error in creating memory");
        exit(1);
    }
    // Node *temp = *
}