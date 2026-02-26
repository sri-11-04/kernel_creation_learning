/* 
trying to learn intrusive list
*/



#include <stdio.h>
#include <stdlib.h>


#ifndef offsetof

    #define offsetof(TYPE,MEMBER) ((size_t) &((TYPE*)0)->MEMBER)

#endif


typedef struct Task Task;
typedef struct ListNode ListNode;

struct ListNode{
    ListNode* prev;
    ListNode* next;
};

struct Task{
    int pid;
    long runtime;
    ListNode runq;
};

static ListNode* initList(ListNode*);
static void addToList(ListNode* , ListNode* );
static void addToTail(ListNode* , ListNode* );
static void removeList(ListNode*);
static _Bool checkEmptyList(ListNode*);


int main(void){

    return 0;
}