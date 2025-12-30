/* 
for notes refer notes.txt

not nested pointers
*/


#include <stdio.h>
#include <stdlib.h>
#define MAX_CHARS 100


typedef struct Student Student;


void copy_student(void *src,void *dest,size_t size);
void print_stu_struct(Student *stu);

struct Student{
    char name[MAX_CHARS];
    unsigned int roll;
};

int main(void){
    Student stu1 = {.name="sri annamalai",.roll=1};
    Student *stu2 = malloc(sizeof *stu2);
    if (stu2 == NULL){
        perror("Failed to allocate memory");
        return 1;
    }
    copy_student(&stu1,stu2,sizeof(Student));
    print_stu_struct(&stu1);
    print_stu_struct(stu2);
    free(stu2);
    stu2=(void *)0;
    return 0;
}

void copy_student(void *src, void *dest, size_t size){
    unsigned char *s = src,*d = dest;
    while (size--) {
        printf("char %c and int is %d\n",*s,*d);
        *d++ = *s++;
    };
}

void print_stu_struct(Student *stu){
    printf("Student %s with a roll number %d\n",stu->name,stu->roll);
}

