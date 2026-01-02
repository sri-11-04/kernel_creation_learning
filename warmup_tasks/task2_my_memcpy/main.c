/* 
for notes refer notes.txt

not nested pointers
*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define MAX_CHARS 100


typedef struct Student Student;


void copy_student(void *src,void *dest,size_t size);
void print_stu_struct(Student *stu);
void deep_copy_stu_struct(Student *dest,Student *source);

struct Student{
    char *name;
    unsigned int roll;
};

int main(void){
    Student stu1 = {.roll=1};
    stu1.name = malloc(MAX_CHARS * sizeof * stu1.name);
    if (stu1.name == (void *)0){
        perror("Failed to allocate memory");
        return 1;
    }

    strcpy(stu1.name,"sri annamalai");

    Student *stu2 = malloc(sizeof *stu2);
    if (stu2 == NULL){
        perror("Failed to allocate memory");
        return 1;
    }
    Student *stu3 = malloc(sizeof *stu3);
    if (stu3 == NULL){
        perror("Failed to allocate memory");
        return 1;
    }
    copy_student(&stu1,stu2,sizeof(stu1));
    deep_copy_stu_struct(stu3,&stu1);
    print_stu_struct(&stu1);
    print_stu_struct(stu2);
    print_stu_struct(stu3);
    free(stu2);
    free(stu1.name);
    free(stu3->name);
    free(stu3);
    stu2=(void *)0;
    stu3 = (void *)0;
    return 0;
}

void copy_student(void *src, void *dest, size_t size){
    unsigned char *s = src,*d = dest;
    while (size--) {
        // printf("char %c and int is %d\n",*s,*s); // log
        // printf("addr %p val %3d char %c\n", s, *s, (*s >= 32 && *s <= 126) ? *s : '.'); // log
        *d++ = *s++;
    };
}

void deep_copy_stu_struct(Student *dest,Student *source){
    dest->roll = source->roll;
    dest->name = malloc(strlen(source->name));
    if (!dest->name){
        perror("Malloc failed to allocate memory");
        exit(1);
    }

    const unsigned char *s = source->name;
    unsigned char *d = dest->name;

    while((*d++ = *s++));
}

void print_stu_struct(Student *stu){
    printf("Student %s with a roll number %d\nname addr is %p\n",stu->name,stu->roll,stu->name);
}

