	.file	"__builtins__.c"
# GNU C17 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"init capacity = %u\ninit size = %zu\n"
.LC1:
	.string	"lastindex = %d\n"
.LC2:
	.string	"index = %zu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$64, %rsp	#,
# __builtins__.c:35: int main(void){
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	movq	%rax, -8(%rbp)	# tmp125, D.3987
	xorl	%eax, %eax	# tmp125
# __builtins__.c:36:     int arr[INTARR_SIZE] = {0,1,2,3,4,5,6,7,8,9};
	movl	$0, -48(%rbp)	#, arr[0]
	movl	$1, -44(%rbp)	#, arr[1]
	movl	$2, -40(%rbp)	#, arr[2]
	movl	$3, -36(%rbp)	#, arr[3]
	movl	$4, -32(%rbp)	#, arr[4]
	movl	$5, -28(%rbp)	#, arr[5]
	movl	$6, -24(%rbp)	#, arr[6]
	movl	$7, -20(%rbp)	#, arr[7]
	movl	$8, -16(%rbp)	#, arr[8]
	movl	$9, -12(%rbp)	#, arr[9]
# __builtins__.c:37:     IntList *list = __list__(arr,INTARR_SIZE);
	leaq	-48(%rbp), %rax	#, tmp95
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	__list__	#
	movq	%rax, -56(%rbp)	# tmp96, list
# __builtins__.c:38:     intListPrint(list);
	movq	-56(%rbp), %rax	# list, tmp97
	movq	%rax, %rdi	# tmp97,
	call	intListPrint	#
# __builtins__.c:39:     printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
	movq	-56(%rbp), %rax	# list, tmp98
	movq	%rax, %rdi	# tmp98,
	call	len	#
	movq	%rax, %rdx	#, _1
# __builtins__.c:39:     printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
	movq	-56(%rbp), %rax	# list, tmp99
	movzbl	16(%rax), %eax	# list_26->__capacity__, _2
# __builtins__.c:39:     printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
	movzbl	%al, %eax	# _2, _3
	movl	%eax, %esi	# _3,
	leaq	.LC0(%rip), %rax	#, tmp100
	movq	%rax, %rdi	# tmp100,
	movl	$0, %eax	#,
	call	printf@PLT	#
# __builtins__.c:40:     for (int i = 10;i<101;i++) intListAppend(list,i);
	movl	$10, -64(%rbp)	#, i
# __builtins__.c:40:     for (int i = 10;i<101;i++) intListAppend(list,i);
	jmp	.L2	#
.L3:
# __builtins__.c:40:     for (int i = 10;i<101;i++) intListAppend(list,i);
	movl	-64(%rbp), %edx	# i, tmp101
	movq	-56(%rbp), %rax	# list, tmp102
	movl	%edx, %esi	# tmp101,
	movq	%rax, %rdi	# tmp102,
	call	intListAppend	#
# __builtins__.c:40:     for (int i = 10;i<101;i++) intListAppend(list,i);
	addl	$1, -64(%rbp)	#, i
.L2:
# __builtins__.c:40:     for (int i = 10;i<101;i++) intListAppend(list,i);
	cmpl	$100, -64(%rbp)	#, i
	jle	.L3	#,
# __builtins__.c:41:     intListPrint(list);
	movq	-56(%rbp), %rax	# list, tmp103
	movq	%rax, %rdi	# tmp103,
	call	intListPrint	#
# __builtins__.c:42:     printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
	movq	-56(%rbp), %rax	# list, tmp104
	movq	%rax, %rdi	# tmp104,
	call	len	#
	movq	%rax, %rdx	#, _4
# __builtins__.c:42:     printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
	movq	-56(%rbp), %rax	# list, tmp105
	movzbl	16(%rax), %eax	# list_26->__capacity__, _5
# __builtins__.c:42:     printf("init capacity = %u\ninit size = %zu\n",list->__capacity__,len(list));
	movzbl	%al, %eax	# _5, _6
	movl	%eax, %esi	# _6,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	printf@PLT	#
# __builtins__.c:43:     intListExtends(list,arr,INTARR_SIZE);
	leaq	-48(%rbp), %rcx	#, tmp107
	movq	-56(%rbp), %rax	# list, tmp108
	movl	$10, %edx	#,
	movq	%rcx, %rsi	# tmp107,
	movq	%rax, %rdi	# tmp108,
	call	intListExtends	#
# __builtins__.c:44:     intListAppend(list,100);
	movq	-56(%rbp), %rax	# list, tmp109
	movl	$100, %esi	#,
	movq	%rax, %rdi	# tmp109,
	call	intListAppend	#
# __builtins__.c:45:     int last_data = intListPop(list,len(list)-1);
	movq	-56(%rbp), %rax	# list, tmp110
	movq	%rax, %rdi	# tmp110,
	call	len	#
# __builtins__.c:45:     int last_data = intListPop(list,len(list)-1);
	subl	$1, %eax	#, _9
# __builtins__.c:45:     int last_data = intListPop(list,len(list)-1);
	movl	%eax, %edx	# _9, _10
	movq	-56(%rbp), %rax	# list, tmp111
	movl	%edx, %esi	# _10,
	movq	%rax, %rdi	# tmp111,
	call	intListPop	#
	movl	%eax, -60(%rbp)	# tmp112, last_data
# __builtins__.c:46:     printf("lastindex = %d\n",last_data);
	movl	-60(%rbp), %eax	# last_data, tmp113
	movl	%eax, %esi	# tmp113,
	leaq	.LC1(%rip), %rax	#, tmp114
	movq	%rax, %rdi	# tmp114,
	movl	$0, %eax	#,
	call	printf@PLT	#
# __builtins__.c:47:     intListAppend(list,101);
	movq	-56(%rbp), %rax	# list, tmp115
	movl	$101, %esi	#,
	movq	%rax, %rdi	# tmp115,
	call	intListAppend	#
# __builtins__.c:48:     intListInsert(list,0,1000);
	movq	-56(%rbp), %rax	# list, tmp116
	movl	$1000, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp116,
	call	intListInsert	#
# __builtins__.c:49:     intListInsert(list,0,2000);
	movq	-56(%rbp), %rax	# list, tmp117
	movl	$2000, %edx	#,
	movl	$0, %esi	#,
	movq	%rax, %rdi	# tmp117,
	call	intListInsert	#
# __builtins__.c:50:     printf("index = %zu\n",intListIndex(list,1000));
	movq	-56(%rbp), %rax	# list, tmp118
	movl	$1000, %esi	#,
	movq	%rax, %rdi	# tmp118,
	call	intListIndex	#
# __builtins__.c:50:     printf("index = %zu\n",intListIndex(list,1000));
	movq	%rax, %rsi	# _11,
	leaq	.LC2(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	printf@PLT	#
# __builtins__.c:51:     intListSort(list);
	movq	-56(%rbp), %rax	# list, tmp120
	movq	%rax, %rdi	# tmp120,
	call	intListSort	#
# __builtins__.c:52:     intListPrint(list);
	movq	-56(%rbp), %rax	# list, tmp121
	movq	%rax, %rdi	# tmp121,
	call	intListPrint	#
# __builtins__.c:53:     listClear(list);
	movq	-56(%rbp), %rax	# list, tmp122
	movq	%rax, %rdi	# tmp122,
	call	listClear	#
# __builtins__.c:54:     free(list);
	movq	-56(%rbp), %rax	# list, tmp123
	movq	%rax, %rdi	# tmp123,
	call	free@PLT	#
# __builtins__.c:55:     list = (void*)0;
	movq	$0, -56(%rbp)	#, list
# __builtins__.c:56:     return 0;
	movl	$0, %eax	#, _50
# __builtins__.c:57: }
	movq	-8(%rbp), %rdx	# D.3987, tmp126
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp126
	je	.L5	#,
	call	__stack_chk_fail@PLT	#
.L5:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC3:
	.string	"error while allocating memory!"
	.text
	.type	__list__, @function
__list__:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# arr, arr
	movq	%rsi, -48(%rbp)	# size, size
# __builtins__.c:61:     IntList *list = malloc(sizeof *list);
	movl	$24, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp100, list
# __builtins__.c:62:     if (!list){
	cmpq	$0, -16(%rbp)	#, list
	jne	.L7	#,
# __builtins__.c:63:         perror("error while allocating memory!");
	leaq	.LC3(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	perror@PLT	#
# __builtins__.c:64:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L7:
# __builtins__.c:66:     uint8_t capacity = 0;
	movb	$0, -21(%rbp)	#, capacity
# __builtins__.c:68:     while (1<<capacity < size)capacity++;
	jmp	.L8	#
.L9:
# __builtins__.c:68:     while (1<<capacity < size)capacity++;
	movzbl	-21(%rbp), %eax	# capacity, capacity.0_1
	addl	$1, %eax	#, tmp102
	movb	%al, -21(%rbp)	# tmp102, capacity
.L8:
# __builtins__.c:68:     while (1<<capacity < size)capacity++;
	movzbl	-21(%rbp), %eax	# capacity, _2
	movl	$1, %edx	#, tmp103
	movl	%eax, %ecx	# _2, tmp121
	sall	%cl, %edx	# tmp121, tmp103
	movl	%edx, %eax	# tmp103, _3
	cltq
# __builtins__.c:68:     while (1<<capacity < size)capacity++;
	cmpq	-48(%rbp), %rax	# size, _4
	jb	.L9	#,
# __builtins__.c:71:     int *nArr = malloc(sizeof *nArr *(1<<capacity));
	movzbl	-21(%rbp), %eax	# capacity, _5
	movl	$1, %edx	#, tmp104
	movl	%eax, %ecx	# _5, tmp123
	sall	%cl, %edx	# tmp123, tmp104
	movl	%edx, %eax	# tmp104, _6
	cltq
# __builtins__.c:71:     int *nArr = malloc(sizeof *nArr *(1<<capacity));
	salq	$2, %rax	#, _8
	movq	%rax, %rdi	# _8,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp105, nArr
# __builtins__.c:72:     if (!nArr){
	cmpq	$0, -8(%rbp)	#, nArr
	jne	.L10	#,
# __builtins__.c:73:         perror("error while allocating memory!");
	leaq	.LC3(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	perror@PLT	#
# __builtins__.c:74:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L10:
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	movl	$0, -20(%rbp)	#, i
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	jmp	.L11	#
.L12:
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	movl	-20(%rbp), %eax	# i, tmp107
	cltq
	leaq	0(,%rax,4), %rdx	#, _10
	movq	-40(%rbp), %rax	# arr, tmp108
	addq	%rdx, %rax	# _10, _11
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	movl	-20(%rbp), %edx	# i, tmp109
	movslq	%edx, %rdx	# tmp109, _12
	leaq	0(,%rdx,4), %rcx	#, _13
	movq	-8(%rbp), %rdx	# nArr, tmp110
	addq	%rcx, %rdx	# _13, _14
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	movl	(%rax), %eax	# *_11, _15
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	movl	%eax, (%rdx)	# _15, *_14
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	addl	$1, -20(%rbp)	#, i
.L11:
# __builtins__.c:76:     for (int i=0;i<size;i++) *(nArr+i) = *(arr+i);
	movl	-20(%rbp), %eax	# i, tmp111
	cltq
	cmpq	-48(%rbp), %rax	# size, _16
	jb	.L12	#,
# __builtins__.c:77:     list->arr = nArr;
	movq	-16(%rbp), %rax	# list, tmp112
	movq	-8(%rbp), %rdx	# nArr, tmp113
	movq	%rdx, 8(%rax)	# tmp113, list_22->arr
# __builtins__.c:78:     list->__capacity__ = capacity;
	movq	-16(%rbp), %rax	# list, tmp114
	movzbl	-21(%rbp), %edx	# capacity, tmp115
	movb	%dl, 16(%rax)	# tmp115, list_22->__capacity__
# __builtins__.c:79:     list->__len__ = size;
	movq	-16(%rbp), %rax	# list, tmp116
	movq	-48(%rbp), %rdx	# size, tmp117
	movq	%rdx, (%rax)	# tmp117, list_22->__len__
# __builtins__.c:80:     return list;
	movq	-16(%rbp), %rax	# list, _31
# __builtins__.c:81: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	__list__, .-__list__
	.section	.rodata
	.align 8
.LC4:
	.string	"error while allocating new memory!!"
	.text
	.type	listResize, @function
listResize:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
# __builtins__.c:85:     int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
	movq	-24(%rbp), %rax	# self, tmp98
	movzbl	16(%rax), %eax	# self_20(D)->__capacity__, _1
	movzbl	%al, %eax	# _1, _2
# __builtins__.c:85:     int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
	movl	$1, %edx	#, tmp99
	movl	%eax, %ecx	# _2, tmp113
	sall	%cl, %edx	# tmp113, tmp99
	movl	%edx, %eax	# tmp99, _3
	cltq
# __builtins__.c:85:     int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
	salq	$2, %rax	#, _5
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp100, newArr
# __builtins__.c:86:     if (!newArr){
	cmpq	$0, -8(%rbp)	#, newArr
	jne	.L15	#,
# __builtins__.c:88:         perror("error while allocating new memory!!");
	leaq	.LC4(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	perror@PLT	#
# __builtins__.c:89:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L15:
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movl	$0, -12(%rbp)	#, i
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	jmp	.L16	#
.L17:
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movq	-24(%rbp), %rax	# self, tmp102
	movq	8(%rax), %rax	# self_20(D)->arr, _6
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movl	-12(%rbp), %edx	# i, tmp103
	movslq	%edx, %rdx	# tmp103, _7
	salq	$2, %rdx	#, _8
	addq	%rdx, %rax	# _8, _9
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movl	-12(%rbp), %edx	# i, tmp104
	movslq	%edx, %rdx	# tmp104, _10
	leaq	0(,%rdx,4), %rcx	#, _11
	movq	-8(%rbp), %rdx	# newArr, tmp105
	addq	%rcx, %rdx	# _11, _12
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movl	(%rax), %eax	# *_9, _13
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movl	%eax, (%rdx)	# _13, *_12
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	addl	$1, -12(%rbp)	#, i
.L16:
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movl	-12(%rbp), %eax	# i, tmp106
	movslq	%eax, %rdx	# tmp106, _14
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	movq	-24(%rbp), %rax	# self, tmp107
	movq	(%rax), %rax	# self_20(D)->__len__, _15
# __builtins__.c:91:     for (int i=0;i<self->__len__;i++) *(newArr+i) = *(self->arr+i);
	cmpq	%rax, %rdx	# _15, _14
	jb	.L17	#,
# __builtins__.c:92:     free(self->arr);
	movq	-24(%rbp), %rax	# self, tmp108
	movq	8(%rax), %rax	# self_20(D)->arr, _16
# __builtins__.c:92:     free(self->arr);
	movq	%rax, %rdi	# _16,
	call	free@PLT	#
# __builtins__.c:93:     self->arr = newArr;
	movq	-24(%rbp), %rax	# self, tmp109
	movq	-8(%rbp), %rdx	# newArr, tmp110
	movq	%rdx, 8(%rax)	# tmp110, self_20(D)->arr
# __builtins__.c:94: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	listResize, .-listResize
	.type	len, @function
len:
.LFB9:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# self, self
# __builtins__.c:96: size_t len(IntList *self) {return self->__len__;}
	movq	-8(%rbp), %rax	# self, tmp84
	movq	(%rax), %rax	# self_2(D)->__len__, _3
# __builtins__.c:96: size_t len(IntList *self) {return self->__len__;}
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	len, .-len
	.section	.rodata
.LC5:
	.string	"%d"
.LC6:
	.string	"%d, "
.LC7:
	.string	"]"
	.text
	.type	intListPrint, @function
intListPrint:
.LFB10:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
# __builtins__.c:100:     printf("[");
	movl	$91, %edi	#,
	call	putchar@PLT	#
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	movl	$0, -4(%rbp)	#, i
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	jmp	.L21	#
.L24:
# __builtins__.c:105:         *(self->arr+i)
	movq	-24(%rbp), %rax	# self, tmp93
	movq	8(%rax), %rax	# self_17(D)->arr, _1
# __builtins__.c:105:         *(self->arr+i)
	movl	-4(%rbp), %edx	# i, tmp94
	movslq	%edx, %rdx	# tmp94, _2
	salq	$2, %rdx	#, _3
	addq	%rdx, %rax	# _3, _4
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	movl	(%rax), %edx	# *_4, _5
# __builtins__.c:102:         (i>=self->__len__-1) 
	movl	-4(%rbp), %eax	# i, tmp95
	movslq	%eax, %rcx	# tmp95, _6
# __builtins__.c:102:         (i>=self->__len__-1) 
	movq	-24(%rbp), %rax	# self, tmp96
	movq	(%rax), %rax	# self_17(D)->__len__, _7
# __builtins__.c:102:         (i>=self->__len__-1) 
	subq	$1, %rax	#, _8
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	cmpq	%rax, %rcx	# _8, _6
	jb	.L22	#,
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	leaq	.LC5(%rip), %rax	#, iftmp.1_12
	jmp	.L23	#
.L22:
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	leaq	.LC6(%rip), %rax	#, iftmp.1_12
.L23:
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	movl	%edx, %esi	# _5,
	movq	%rax, %rdi	# iftmp.1_12,
	movl	$0, %eax	#,
	call	printf@PLT	#
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	addl	$1, -4(%rbp)	#, i
.L21:
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	movl	-4(%rbp), %eax	# i, tmp97
	movslq	%eax, %rdx	# tmp97, _9
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	movq	-24(%rbp), %rax	# self, tmp98
	movq	(%rax), %rax	# self_17(D)->__len__, _10
# __builtins__.c:101:     for (int i = 0;i<self->__len__;i++) printf(
	cmpq	%rax, %rdx	# _10, _9
	jb	.L24	#,
# __builtins__.c:107:     printf("]\n");
	leaq	.LC7(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	call	puts@PLT	#
# __builtins__.c:108: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	intListPrint, .-intListPrint
	.type	listClear, @function
listClear:
.LFB11:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$16, %rsp	#,
	movq	%rdi, -8(%rbp)	# self, self
# __builtins__.c:111:     free(self->arr);
	movq	-8(%rbp), %rax	# self, tmp83
	movq	8(%rax), %rax	# self_3(D)->arr, _1
# __builtins__.c:111:     free(self->arr);
	movq	%rax, %rdi	# _1,
	call	free@PLT	#
# __builtins__.c:112:     self->arr = (void*)0;
	movq	-8(%rbp), %rax	# self, tmp84
	movq	$0, 8(%rax)	#, self_3(D)->arr
# __builtins__.c:113:     self->__len__ = 0;
	movq	-8(%rbp), %rax	# self, tmp85
	movq	$0, (%rax)	#, self_3(D)->__len__
# __builtins__.c:114:     self->__capacity__ = 0;
	movq	-8(%rbp), %rax	# self, tmp86
	movb	$0, 16(%rax)	#, self_3(D)->__capacity__
# __builtins__.c:115: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	listClear, .-listClear
	.section	.rodata
.LC8:
	.string	"error while allocating memory"
	.text
	.type	intListAppend, @function
intListAppend:
.LFB12:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
	movl	%esi, -28(%rbp)	# val, val
# __builtins__.c:118:     if (!self->arr){
	movq	-24(%rbp), %rax	# self, tmp102
	movq	8(%rax), %rax	# self_26(D)->arr, _1
# __builtins__.c:118:     if (!self->arr){
	testq	%rax, %rax	# _1
	jne	.L27	#,
# __builtins__.c:120:         int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
	movq	-24(%rbp), %rax	# self, tmp103
	movzbl	16(%rax), %eax	# self_26(D)->__capacity__, _2
	movzbl	%al, %eax	# _2, _3
# __builtins__.c:120:         int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
	movl	$1, %edx	#, tmp104
	movl	%eax, %ecx	# _3, tmp124
	sall	%cl, %edx	# tmp124, tmp104
	movl	%edx, %eax	# tmp104, _4
	cltq
# __builtins__.c:120:         int *newArr = malloc(sizeof *newArr * (1 << self->__capacity__));
	salq	$2, %rax	#, _6
	movq	%rax, %rdi	# _6,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp105, newArr
# __builtins__.c:121:         if (!newArr){
	cmpq	$0, -8(%rbp)	#, newArr
	jne	.L28	#,
# __builtins__.c:123:             perror("error while allocating memory");
	leaq	.LC8(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	call	perror@PLT	#
# __builtins__.c:124:             exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L28:
# __builtins__.c:126:         self->arr = newArr;
	movq	-24(%rbp), %rax	# self, tmp107
	movq	-8(%rbp), %rdx	# newArr, tmp108
	movq	%rdx, 8(%rax)	# tmp108, self_26(D)->arr
.L27:
# __builtins__.c:129:     if ((float) self->__len__ / (1<<self->__capacity__) >= 0.75) {
	movq	-24(%rbp), %rax	# self, tmp109
	movq	(%rax), %rax	# self_26(D)->__len__, _7
# __builtins__.c:129:     if ((float) self->__len__ / (1<<self->__capacity__) >= 0.75) {
	testq	%rax, %rax	# _7
	js	.L29	#,
	pxor	%xmm0, %xmm0	# _8
	cvtsi2ssq	%rax, %xmm0	# _7, _8
	jmp	.L30	#
.L29:
	movq	%rax, %rdx	# _7, tmp111
	shrq	%rdx	# tmp111
	andl	$1, %eax	#, tmp112
	orq	%rax, %rdx	# tmp112, tmp111
	pxor	%xmm0, %xmm0	# tmp110
	cvtsi2ssq	%rdx, %xmm0	# tmp111, tmp110
	addss	%xmm0, %xmm0	# tmp110, _8
.L30:
# __builtins__.c:129:     if ((float) self->__len__ / (1<<self->__capacity__) >= 0.75) {
	movq	-24(%rbp), %rax	# self, tmp113
	movzbl	16(%rax), %eax	# self_26(D)->__capacity__, _9
	movzbl	%al, %eax	# _9, _10
# __builtins__.c:129:     if ((float) self->__len__ / (1<<self->__capacity__) >= 0.75) {
	movl	$1, %edx	#, tmp114
	movl	%eax, %ecx	# _10, tmp127
	sall	%cl, %edx	# tmp127, tmp114
	movl	%edx, %eax	# tmp114, _11
# __builtins__.c:129:     if ((float) self->__len__ / (1<<self->__capacity__) >= 0.75) {
	pxor	%xmm1, %xmm1	# _12
	cvtsi2ssl	%eax, %xmm1	# _11, _12
	divss	%xmm1, %xmm0	# _12, _13
# __builtins__.c:129:     if ((float) self->__len__ / (1<<self->__capacity__) >= 0.75) {
	comiss	.LC9(%rip), %xmm0	#, _13
	jb	.L31	#,
# __builtins__.c:131:         self->__capacity__++;
	movq	-24(%rbp), %rax	# self, tmp115
	movzbl	16(%rax), %eax	# self_26(D)->__capacity__, _14
# __builtins__.c:131:         self->__capacity__++;
	leal	1(%rax), %edx	#, _16
	movq	-24(%rbp), %rax	# self, tmp116
	movb	%dl, 16(%rax)	# _16, self_26(D)->__capacity__
# __builtins__.c:132:         listResize(self);
	movq	-24(%rbp), %rax	# self, tmp117
	movq	%rax, %rdi	# tmp117,
	call	listResize	#
.L31:
# __builtins__.c:134:     *(self->arr + self->__len__++) = val;
	movq	-24(%rbp), %rax	# self, tmp118
	movq	8(%rax), %rsi	# self_26(D)->arr, _17
# __builtins__.c:134:     *(self->arr + self->__len__++) = val;
	movq	-24(%rbp), %rax	# self, tmp119
	movq	(%rax), %rax	# self_26(D)->__len__, _18
# __builtins__.c:134:     *(self->arr + self->__len__++) = val;
	leaq	1(%rax), %rcx	#, _20
	movq	-24(%rbp), %rdx	# self, tmp120
	movq	%rcx, (%rdx)	# _20, self_26(D)->__len__
# __builtins__.c:134:     *(self->arr + self->__len__++) = val;
	salq	$2, %rax	#, _21
	leaq	(%rsi,%rax), %rdx	#, _22
# __builtins__.c:134:     *(self->arr + self->__len__++) = val;
	movl	-28(%rbp), %eax	# val, tmp121
	movl	%eax, (%rdx)	# tmp121, *_22
# __builtins__.c:135: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	intListAppend, .-intListAppend
	.type	mymemcpy, @function
mymemcpy:
.LFB13:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# source, source
	movq	%rsi, -16(%rbp)	# destination, destination
	movq	%rdx, -24(%rbp)	# size, size
# __builtins__.c:139: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	mymemcpy, .-mymemcpy
	.type	intListExtends, @function
intListExtends:
.LFB14:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
	movq	%rsi, -32(%rbp)	# arr, arr
	movq	%rdx, -40(%rbp)	# size, size
# __builtins__.c:142:     size_t new_size = self->__len__ + size;
	movq	-24(%rbp), %rax	# self, tmp107
	movq	(%rax), %rdx	# self_31(D)->__len__, _1
# __builtins__.c:142:     size_t new_size = self->__len__ + size;
	movq	-40(%rbp), %rax	# size, tmp111
	addq	%rdx, %rax	# _1, tmp110
	movq	%rax, -8(%rbp)	# tmp110, new_size
# __builtins__.c:143:     uint8_t prev_capacity = self->__capacity__;
	movq	-24(%rbp), %rax	# self, tmp112
	movzbl	16(%rax), %eax	# self_31(D)->__capacity__, tmp113
	movb	%al, -13(%rbp)	# tmp113, prev_capacity
# __builtins__.c:144:     while (1<<self->__capacity__ < new_size) self->__capacity__++;
	jmp	.L36	#
.L37:
# __builtins__.c:144:     while (1<<self->__capacity__ < new_size) self->__capacity__++;
	movq	-24(%rbp), %rax	# self, tmp114
	movzbl	16(%rax), %eax	# self_31(D)->__capacity__, _2
# __builtins__.c:144:     while (1<<self->__capacity__ < new_size) self->__capacity__++;
	leal	1(%rax), %edx	#, _4
	movq	-24(%rbp), %rax	# self, tmp115
	movb	%dl, 16(%rax)	# _4, self_31(D)->__capacity__
.L36:
# __builtins__.c:144:     while (1<<self->__capacity__ < new_size) self->__capacity__++;
	movq	-24(%rbp), %rax	# self, tmp116
	movzbl	16(%rax), %eax	# self_31(D)->__capacity__, _5
	movzbl	%al, %eax	# _5, _6
# __builtins__.c:144:     while (1<<self->__capacity__ < new_size) self->__capacity__++;
	movl	$1, %edx	#, tmp117
	movl	%eax, %ecx	# _6, tmp132
	sall	%cl, %edx	# tmp132, tmp117
	movl	%edx, %eax	# tmp117, _7
	cltq
# __builtins__.c:144:     while (1<<self->__capacity__ < new_size) self->__capacity__++;
	cmpq	-8(%rbp), %rax	# new_size, _8
	jb	.L37	#,
# __builtins__.c:146:     if (prev_capacity!=self->__capacity__) listResize(self);
	movq	-24(%rbp), %rax	# self, tmp118
	movzbl	16(%rax), %eax	# self_31(D)->__capacity__, _9
# __builtins__.c:146:     if (prev_capacity!=self->__capacity__) listResize(self);
	cmpb	%al, -13(%rbp)	# _9, prev_capacity
	je	.L39	#,
# __builtins__.c:146:     if (prev_capacity!=self->__capacity__) listResize(self);
	movq	-24(%rbp), %rax	# self, tmp119
	movq	%rax, %rdi	# tmp119,
	call	listResize	#
# __builtins__.c:148:     for (;self->__len__<new_size;self->__len__++) {
	jmp	.L39	#
.L40:
# __builtins__.c:149:         int index = size - (new_size - self->__len__);
	movq	-24(%rbp), %rax	# self, tmp120
	movq	(%rax), %rax	# self_31(D)->__len__, _10
# __builtins__.c:149:         int index = size - (new_size - self->__len__);
	movl	%eax, %ecx	# _10, _11
	movq	-8(%rbp), %rax	# new_size, tmp121
	movl	%eax, %edx	# tmp121, _12
	movl	%ecx, %eax	# _11, _11
	subl	%edx, %eax	# _12, _11
	movq	-40(%rbp), %rdx	# size, tmp122
	addl	%edx, %eax	# _14, _15
# __builtins__.c:149:         int index = size - (new_size - self->__len__);
	movl	%eax, -12(%rbp)	# _15, index
# __builtins__.c:151:         *(self->arr+self->__len__) = *(arr + index);}
	movl	-12(%rbp), %eax	# index, tmp123
	cltq
	leaq	0(,%rax,4), %rdx	#, _17
	movq	-32(%rbp), %rax	# arr, tmp124
	leaq	(%rdx,%rax), %rcx	#, _18
# __builtins__.c:151:         *(self->arr+self->__len__) = *(arr + index);}
	movq	-24(%rbp), %rax	# self, tmp125
	movq	8(%rax), %rdx	# self_31(D)->arr, _19
# __builtins__.c:151:         *(self->arr+self->__len__) = *(arr + index);}
	movq	-24(%rbp), %rax	# self, tmp126
	movq	(%rax), %rax	# self_31(D)->__len__, _20
# __builtins__.c:151:         *(self->arr+self->__len__) = *(arr + index);}
	salq	$2, %rax	#, _21
	addq	%rax, %rdx	# _21, _22
# __builtins__.c:151:         *(self->arr+self->__len__) = *(arr + index);}
	movl	(%rcx), %eax	# *_18, _23
# __builtins__.c:151:         *(self->arr+self->__len__) = *(arr + index);}
	movl	%eax, (%rdx)	# _23, *_22
# __builtins__.c:148:     for (;self->__len__<new_size;self->__len__++) {
	movq	-24(%rbp), %rax	# self, tmp127
	movq	(%rax), %rax	# self_31(D)->__len__, _24
# __builtins__.c:148:     for (;self->__len__<new_size;self->__len__++) {
	leaq	1(%rax), %rdx	#, _25
	movq	-24(%rbp), %rax	# self, tmp128
	movq	%rdx, (%rax)	# _25, self_31(D)->__len__
.L39:
# __builtins__.c:148:     for (;self->__len__<new_size;self->__len__++) {
	movq	-24(%rbp), %rax	# self, tmp129
	movq	(%rax), %rax	# self_31(D)->__len__, _26
# __builtins__.c:148:     for (;self->__len__<new_size;self->__len__++) {
	cmpq	-8(%rbp), %rax	# new_size, _26
	jb	.L40	#,
# __builtins__.c:152: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	intListExtends, .-intListExtends
	.section	.rodata
.LC10:
	.string	"poping from an empty list"
.LC11:
	.string	"List index out of range"
	.text
	.type	intListPop, @function
intListPop:
.LFB15:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
	movl	%esi, -28(%rbp)	# index, index
# __builtins__.c:156:     if (!self->__len__) {
	movq	-24(%rbp), %rax	# self, tmp115
	movq	(%rax), %rax	# self_37(D)->__len__, _1
# __builtins__.c:156:     if (!self->__len__) {
	testq	%rax, %rax	# _1
	jne	.L42	#,
# __builtins__.c:157:         printf("poping from an empty list");
	leaq	.LC10(%rip), %rax	#, tmp116
	movq	%rax, %rdi	# tmp116,
	movl	$0, %eax	#,
	call	printf@PLT	#
# __builtins__.c:158:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L42:
# __builtins__.c:159:     }else if (index >= self->__len__){
	movl	-28(%rbp), %eax	# index, tmp117
	movslq	%eax, %rdx	# tmp117, _2
# __builtins__.c:159:     }else if (index >= self->__len__){
	movq	-24(%rbp), %rax	# self, tmp118
	movq	(%rax), %rax	# self_37(D)->__len__, _3
# __builtins__.c:159:     }else if (index >= self->__len__){
	cmpq	%rax, %rdx	# _3, _2
	jb	.L43	#,
# __builtins__.c:160:         printf("List index out of range");
	leaq	.LC11(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	movl	$0, %eax	#,
	call	printf@PLT	#
# __builtins__.c:161:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L43:
# __builtins__.c:164:     int res = *(self->arr+index);
	movq	-24(%rbp), %rax	# self, tmp120
	movq	8(%rax), %rax	# self_37(D)->arr, _4
# __builtins__.c:164:     int res = *(self->arr+index);
	movl	-28(%rbp), %edx	# index, tmp121
	movslq	%edx, %rdx	# tmp121, _5
	salq	$2, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
# __builtins__.c:164:     int res = *(self->arr+index);
	movl	(%rax), %eax	# *_7, tmp122
	movl	%eax, -4(%rbp)	# tmp122, res
# __builtins__.c:166:     for (int i = index;i<self->__len__-1;i++)
	movl	-28(%rbp), %eax	# index, tmp123
	movl	%eax, -8(%rbp)	# tmp123, i
# __builtins__.c:166:     for (int i = index;i<self->__len__-1;i++)
	jmp	.L44	#
.L45:
# __builtins__.c:167:         *(self->arr+i) = *(self->arr+i+1);
	movq	-24(%rbp), %rax	# self, tmp124
	movq	8(%rax), %rax	# self_37(D)->arr, _8
# __builtins__.c:167:         *(self->arr+i) = *(self->arr+i+1);
	movl	-8(%rbp), %edx	# i, tmp125
	movslq	%edx, %rdx	# tmp125, _9
	addq	$1, %rdx	#, _10
	salq	$2, %rdx	#, _11
	leaq	(%rax,%rdx), %rcx	#, _12
# __builtins__.c:167:         *(self->arr+i) = *(self->arr+i+1);
	movq	-24(%rbp), %rax	# self, tmp126
	movq	8(%rax), %rax	# self_37(D)->arr, _13
# __builtins__.c:167:         *(self->arr+i) = *(self->arr+i+1);
	movl	-8(%rbp), %edx	# i, tmp127
	movslq	%edx, %rdx	# tmp127, _14
	salq	$2, %rdx	#, _15
	addq	%rax, %rdx	# _13, _16
# __builtins__.c:167:         *(self->arr+i) = *(self->arr+i+1);
	movl	(%rcx), %eax	# *_12, _17
# __builtins__.c:167:         *(self->arr+i) = *(self->arr+i+1);
	movl	%eax, (%rdx)	# _17, *_16
# __builtins__.c:166:     for (int i = index;i<self->__len__-1;i++)
	addl	$1, -8(%rbp)	#, i
.L44:
# __builtins__.c:166:     for (int i = index;i<self->__len__-1;i++)
	movl	-8(%rbp), %eax	# i, tmp128
	movslq	%eax, %rdx	# tmp128, _18
# __builtins__.c:166:     for (int i = index;i<self->__len__-1;i++)
	movq	-24(%rbp), %rax	# self, tmp129
	movq	(%rax), %rax	# self_37(D)->__len__, _19
# __builtins__.c:166:     for (int i = index;i<self->__len__-1;i++)
	subq	$1, %rax	#, _20
# __builtins__.c:166:     for (int i = index;i<self->__len__-1;i++)
	cmpq	%rax, %rdx	# _20, _18
	jb	.L45	#,
# __builtins__.c:169:     self->__len__--;
	movq	-24(%rbp), %rax	# self, tmp130
	movq	(%rax), %rax	# self_37(D)->__len__, _21
# __builtins__.c:169:     self->__len__--;
	leaq	-1(%rax), %rdx	#, _22
	movq	-24(%rbp), %rax	# self, tmp131
	movq	%rdx, (%rax)	# _22, self_37(D)->__len__
# __builtins__.c:171:     if ((float)self->__len__/(1<<self->__capacity__) <= 0.25){
	movq	-24(%rbp), %rax	# self, tmp132
	movq	(%rax), %rax	# self_37(D)->__len__, _23
# __builtins__.c:171:     if ((float)self->__len__/(1<<self->__capacity__) <= 0.25){
	testq	%rax, %rax	# _23
	js	.L46	#,
	pxor	%xmm0, %xmm0	# _24
	cvtsi2ssq	%rax, %xmm0	# _23, _24
	jmp	.L47	#
.L46:
	movq	%rax, %rdx	# _23, tmp134
	shrq	%rdx	# tmp134
	andl	$1, %eax	#, tmp135
	orq	%rax, %rdx	# tmp135, tmp134
	pxor	%xmm0, %xmm0	# tmp133
	cvtsi2ssq	%rdx, %xmm0	# tmp134, tmp133
	addss	%xmm0, %xmm0	# tmp133, _24
.L47:
# __builtins__.c:171:     if ((float)self->__len__/(1<<self->__capacity__) <= 0.25){
	movq	-24(%rbp), %rax	# self, tmp136
	movzbl	16(%rax), %eax	# self_37(D)->__capacity__, _25
	movzbl	%al, %eax	# _25, _26
# __builtins__.c:171:     if ((float)self->__len__/(1<<self->__capacity__) <= 0.25){
	movl	$1, %edx	#, tmp137
	movl	%eax, %ecx	# _26, tmp146
	sall	%cl, %edx	# tmp146, tmp137
	movl	%edx, %eax	# tmp137, _27
# __builtins__.c:171:     if ((float)self->__len__/(1<<self->__capacity__) <= 0.25){
	pxor	%xmm2, %xmm2	# _28
	cvtsi2ssl	%eax, %xmm2	# _27, _28
	movaps	%xmm0, %xmm1	# _24, _24
	divss	%xmm2, %xmm1	# _28, _24
# __builtins__.c:171:     if ((float)self->__len__/(1<<self->__capacity__) <= 0.25){
	movss	.LC12(%rip), %xmm0	#, tmp138
	comiss	%xmm1, %xmm0	# _29, tmp138
	jb	.L48	#,
# __builtins__.c:172:         self->__capacity__--;
	movq	-24(%rbp), %rax	# self, tmp139
	movzbl	16(%rax), %eax	# self_37(D)->__capacity__, _30
# __builtins__.c:172:         self->__capacity__--;
	leal	-1(%rax), %edx	#, _32
	movq	-24(%rbp), %rax	# self, tmp140
	movb	%dl, 16(%rax)	# _32, self_37(D)->__capacity__
# __builtins__.c:173:         listResize(self);
	movq	-24(%rbp), %rax	# self, tmp141
	movq	%rax, %rdi	# tmp141,
	call	listResize	#
.L48:
# __builtins__.c:176:     return res;
	movl	-4(%rbp), %eax	# res, _44
# __builtins__.c:177: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	intListPop, .-intListPop
	.section	.rodata
.LC13:
	.string	"list index out of range"
.LC14:
	.string	"index cannot be negative"
	.align 8
.LC15:
	.string	"Error while allocating new memory."
	.text
	.type	intListInsert, @function
intListInsert:
.LFB16:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
	movl	%esi, -28(%rbp)	# index, index
	movl	%edx, -32(%rbp)	# val, val
# __builtins__.c:181:     if (self->__len__ < index){
	movq	-24(%rbp), %rax	# self, tmp116
	movq	(%rax), %rdx	# self_41(D)->__len__, _1
# __builtins__.c:181:     if (self->__len__ < index){
	movl	-28(%rbp), %eax	# index, tmp117
	cltq
# __builtins__.c:181:     if (self->__len__ < index){
	cmpq	%rax, %rdx	# _2, _1
	jnb	.L53	#,
# __builtins__.c:182:         perror("list index out of range");
	leaq	.LC13(%rip), %rax	#, tmp118
	movq	%rax, %rdi	# tmp118,
	call	perror@PLT	#
# __builtins__.c:183:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L53:
# __builtins__.c:184:     }else if (index < 0){
	cmpl	$0, -28(%rbp)	#, index
	jns	.L54	#,
# __builtins__.c:185:         perror("index cannot be negative");
	leaq	.LC14(%rip), %rax	#, tmp119
	movq	%rax, %rdi	# tmp119,
	call	perror@PLT	#
# __builtins__.c:186:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L54:
# __builtins__.c:189:     if (!self->arr){
	movq	-24(%rbp), %rax	# self, tmp120
	movq	8(%rax), %rax	# self_41(D)->arr, _3
# __builtins__.c:189:     if (!self->arr){
	testq	%rax, %rax	# _3
	jne	.L55	#,
# __builtins__.c:190:         int *newArr = malloc(sizeof * newArr * (1<<self->__capacity__)); 
	movq	-24(%rbp), %rax	# self, tmp121
	movzbl	16(%rax), %eax	# self_41(D)->__capacity__, _4
	movzbl	%al, %eax	# _4, _5
# __builtins__.c:190:         int *newArr = malloc(sizeof * newArr * (1<<self->__capacity__)); 
	movl	$1, %edx	#, tmp122
	movl	%eax, %ecx	# _5, tmp149
	sall	%cl, %edx	# tmp149, tmp122
	movl	%edx, %eax	# tmp122, _6
	cltq
# __builtins__.c:190:         int *newArr = malloc(sizeof * newArr * (1<<self->__capacity__)); 
	salq	$2, %rax	#, _8
	movq	%rax, %rdi	# _8,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp123, newArr
# __builtins__.c:191:         if (!newArr){
	cmpq	$0, -8(%rbp)	#, newArr
	jne	.L56	#,
# __builtins__.c:192:             perror("Error while allocating new memory.");
	leaq	.LC15(%rip), %rax	#, tmp124
	movq	%rax, %rdi	# tmp124,
	call	perror@PLT	#
# __builtins__.c:193:             exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L56:
# __builtins__.c:196:         self->arr = newArr;
	movq	-24(%rbp), %rax	# self, tmp125
	movq	-8(%rbp), %rdx	# newArr, tmp126
	movq	%rdx, 8(%rax)	# tmp126, self_41(D)->arr
.L55:
# __builtins__.c:199:     if ((float)self->__len__ / (1<<self->__capacity__) >= 0.75){
	movq	-24(%rbp), %rax	# self, tmp127
	movq	(%rax), %rax	# self_41(D)->__len__, _9
# __builtins__.c:199:     if ((float)self->__len__ / (1<<self->__capacity__) >= 0.75){
	testq	%rax, %rax	# _9
	js	.L57	#,
	pxor	%xmm0, %xmm0	# _10
	cvtsi2ssq	%rax, %xmm0	# _9, _10
	jmp	.L58	#
.L57:
	movq	%rax, %rdx	# _9, tmp129
	shrq	%rdx	# tmp129
	andl	$1, %eax	#, tmp130
	orq	%rax, %rdx	# tmp130, tmp129
	pxor	%xmm0, %xmm0	# tmp128
	cvtsi2ssq	%rdx, %xmm0	# tmp129, tmp128
	addss	%xmm0, %xmm0	# tmp128, _10
.L58:
# __builtins__.c:199:     if ((float)self->__len__ / (1<<self->__capacity__) >= 0.75){
	movq	-24(%rbp), %rax	# self, tmp131
	movzbl	16(%rax), %eax	# self_41(D)->__capacity__, _11
	movzbl	%al, %eax	# _11, _12
# __builtins__.c:199:     if ((float)self->__len__ / (1<<self->__capacity__) >= 0.75){
	movl	$1, %edx	#, tmp132
	movl	%eax, %ecx	# _12, tmp152
	sall	%cl, %edx	# tmp152, tmp132
	movl	%edx, %eax	# tmp132, _13
# __builtins__.c:199:     if ((float)self->__len__ / (1<<self->__capacity__) >= 0.75){
	pxor	%xmm1, %xmm1	# _14
	cvtsi2ssl	%eax, %xmm1	# _13, _14
	divss	%xmm1, %xmm0	# _14, _15
# __builtins__.c:199:     if ((float)self->__len__ / (1<<self->__capacity__) >= 0.75){
	comiss	.LC9(%rip), %xmm0	#, _15
	jb	.L59	#,
# __builtins__.c:200:         self->__capacity__++;
	movq	-24(%rbp), %rax	# self, tmp133
	movzbl	16(%rax), %eax	# self_41(D)->__capacity__, _16
# __builtins__.c:200:         self->__capacity__++;
	leal	1(%rax), %edx	#, _18
	movq	-24(%rbp), %rax	# self, tmp134
	movb	%dl, 16(%rax)	# _18, self_41(D)->__capacity__
# __builtins__.c:201:         listResize(self);
	movq	-24(%rbp), %rax	# self, tmp135
	movq	%rax, %rdi	# tmp135,
	call	listResize	#
.L59:
# __builtins__.c:204:     self->__len__++;
	movq	-24(%rbp), %rax	# self, tmp136
	movq	(%rax), %rax	# self_41(D)->__len__, _19
# __builtins__.c:204:     self->__len__++;
	leaq	1(%rax), %rdx	#, _20
	movq	-24(%rbp), %rax	# self, tmp137
	movq	%rdx, (%rax)	# _20, self_41(D)->__len__
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movq	-24(%rbp), %rax	# self, tmp138
	movq	(%rax), %rax	# self_41(D)->__len__, _21
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movl	%eax, -12(%rbp)	# _21, i
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	jmp	.L61	#
.L62:
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movq	-24(%rbp), %rax	# self, tmp139
	movq	8(%rax), %rax	# self_41(D)->arr, _22
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movl	-12(%rbp), %edx	# i, tmp140
	movslq	%edx, %rdx	# tmp140, _23
	salq	$2, %rdx	#, _24
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	subq	$4, %rdx	#, _25
	leaq	(%rax,%rdx), %rcx	#, _26
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movq	-24(%rbp), %rax	# self, tmp141
	movq	8(%rax), %rax	# self_41(D)->arr, _27
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movl	-12(%rbp), %edx	# i, tmp142
	movslq	%edx, %rdx	# tmp142, _28
	salq	$2, %rdx	#, _29
	addq	%rax, %rdx	# _27, _30
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movl	(%rcx), %eax	# *_26, _31
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movl	%eax, (%rdx)	# _31, *_30
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	subl	$1, -12(%rbp)	#, i
.L61:
# __builtins__.c:205:     for (int i = self->__len__;i > index;i--) *(self->arr+i) = *(self->arr+i-1);
	movl	-12(%rbp), %eax	# i, tmp143
	cmpl	-28(%rbp), %eax	# index, tmp143
	jg	.L62	#,
# __builtins__.c:206:     *(self->arr+index) = val;
	movq	-24(%rbp), %rax	# self, tmp144
	movq	8(%rax), %rax	# self_41(D)->arr, _32
# __builtins__.c:206:     *(self->arr+index) = val;
	movl	-28(%rbp), %edx	# index, tmp145
	movslq	%edx, %rdx	# tmp145, _33
	salq	$2, %rdx	#, _34
	addq	%rax, %rdx	# _32, _35
# __builtins__.c:206:     *(self->arr+index) = val;
	movl	-32(%rbp), %eax	# val, tmp146
	movl	%eax, (%rdx)	# tmp146, *_35
# __builtins__.c:207: }
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	intListInsert, .-intListInsert
	.section	.rodata
.LC16:
	.string	"list has no such value"
	.text
	.type	intListIndex, @function
intListIndex:
.LFB17:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
	movl	%esi, -28(%rbp)	# val, val
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	movq	$0, -8(%rbp)	#, i
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	jmp	.L65	#
.L68:
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	movq	-24(%rbp), %rax	# self, tmp89
	movq	8(%rax), %rax	# self_9(D)->arr, _1
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	movq	-8(%rbp), %rdx	# i, tmp90
	salq	$2, %rdx	#, _2
	addq	%rdx, %rax	# _2, _3
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	movl	(%rax), %eax	# *_3, _4
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	cmpl	%eax, -28(%rbp)	# _4, val
	jne	.L66	#,
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	movq	-8(%rbp), %rax	# i, _14
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	jmp	.L69	#
.L66:
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	addq	$1, -8(%rbp)	#, i
.L65:
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	movq	-24(%rbp), %rax	# self, tmp91
	movq	(%rax), %rax	# self_9(D)->__len__, _5
# __builtins__.c:211:     for (size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return i;
	cmpq	%rax, -8(%rbp)	# _5, i
	jb	.L68	#,
# __builtins__.c:213:     perror("list has no such value");
	leaq	.LC16(%rip), %rax	#, tmp92
	movq	%rax, %rdi	# tmp92,
	call	perror@PLT	#
# __builtins__.c:214:     exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L69:
# __builtins__.c:215: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	intListIndex, .-intListIndex
	.type	__includes__, @function
__includes__:
.LFB18:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# self, self
	movl	%esi, -28(%rbp)	# val, val
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	movq	$0, -8(%rbp)	#, i
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	jmp	.L71	#
.L74:
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	movq	-24(%rbp), %rax	# self, tmp89
	movq	8(%rax), %rax	# self_10(D)->arr, _1
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	movq	-8(%rbp), %rdx	# i, tmp90
	salq	$2, %rdx	#, _2
	addq	%rdx, %rax	# _2, _3
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	movl	(%rax), %eax	# *_3, _4
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	cmpl	%eax, -28(%rbp)	# _4, val
	jne	.L72	#,
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	movl	$1, %eax	#, _7
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	jmp	.L73	#
.L72:
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	addq	$1, -8(%rbp)	#, i
.L71:
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	movq	-24(%rbp), %rax	# self, tmp91
	movq	(%rax), %rax	# self_10(D)->__len__, _5
# __builtins__.c:218:     for(size_t i = 0; i<self->__len__;i++) if (*(self->arr+i) == val) return 1;
	cmpq	%rax, -8(%rbp)	# _5, i
	jb	.L74	#,
# __builtins__.c:219:     return 0;
	movl	$0, %eax	#, _7
.L73:
# __builtins__.c:220: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	__includes__, .-__includes__
	.type	listReverse, @function
listReverse:
.LFB19:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$24, %rsp	#,
	movq	%rdi, -24(%rbp)	# self, self
# __builtins__.c:223:     size_t l = 0,r = len(self);
	movq	$0, -16(%rbp)	#, l
# __builtins__.c:223:     size_t l = 0,r = len(self);
	movq	-24(%rbp), %rax	# self, tmp118
	movq	%rax, %rdi	# tmp118,
	call	len	#
	movq	%rax, -8(%rbp)	# tmp119, r
# __builtins__.c:224:     while (l<r){
	jmp	.L76	#
.L77:
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	movq	-24(%rbp), %rax	# self, tmp120
	movq	8(%rax), %rax	# self_42(D)->arr, _1
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	movq	-16(%rbp), %rdx	# l, tmp121
	salq	$2, %rdx	#, _2
	addq	%rdx, %rax	# _2, _3
	movl	(%rax), %ecx	# *_3, _4
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	movq	-24(%rbp), %rax	# self, tmp122
	movq	8(%rax), %rax	# self_42(D)->arr, _5
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	movq	-8(%rbp), %rdx	# r, tmp123
	salq	$2, %rdx	#, _6
	addq	%rdx, %rax	# _6, _7
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	movl	(%rax), %edx	# *_7, _8
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	movq	-24(%rbp), %rax	# self, tmp124
	movq	8(%rax), %rax	# self_42(D)->arr, _9
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	movq	-16(%rbp), %rsi	# l, tmp125
	salq	$2, %rsi	#, _10
	addq	%rsi, %rax	# _10, _11
# __builtins__.c:225:         *(self->arr+l) ^= *(self->arr+r);
	xorl	%ecx, %edx	# _4, _12
	movl	%edx, (%rax)	# _12, *_11
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	movq	-24(%rbp), %rax	# self, tmp126
	movq	8(%rax), %rax	# self_42(D)->arr, _13
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	movq	-8(%rbp), %rdx	# r, tmp127
	salq	$2, %rdx	#, _14
	addq	%rdx, %rax	# _14, _15
	movl	(%rax), %ecx	# *_15, _16
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	movq	-24(%rbp), %rax	# self, tmp128
	movq	8(%rax), %rax	# self_42(D)->arr, _17
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	movq	-16(%rbp), %rdx	# l, tmp129
	salq	$2, %rdx	#, _18
	addq	%rdx, %rax	# _18, _19
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	movl	(%rax), %edx	# *_19, _20
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	movq	-24(%rbp), %rax	# self, tmp130
	movq	8(%rax), %rax	# self_42(D)->arr, _21
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	movq	-8(%rbp), %rsi	# r, tmp131
	salq	$2, %rsi	#, _22
	addq	%rsi, %rax	# _22, _23
# __builtins__.c:226:         *(self->arr+r) ^= *(self->arr+l);
	xorl	%ecx, %edx	# _16, _24
	movl	%edx, (%rax)	# _24, *_23
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	movq	-24(%rbp), %rax	# self, tmp132
	movq	8(%rax), %rax	# self_42(D)->arr, _25
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	movq	-16(%rbp), %rdx	# l, tmp133
	salq	$2, %rdx	#, _26
	addq	%rdx, %rax	# _26, _27
	movl	(%rax), %ecx	# *_27, _28
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	movq	-24(%rbp), %rax	# self, tmp134
	movq	8(%rax), %rax	# self_42(D)->arr, _29
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	movq	-8(%rbp), %rdx	# r, tmp135
	salq	$2, %rdx	#, _30
	addq	%rdx, %rax	# _30, _31
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	movl	(%rax), %edx	# *_31, _32
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	movq	-24(%rbp), %rax	# self, tmp136
	movq	8(%rax), %rax	# self_42(D)->arr, _33
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	movq	-16(%rbp), %rsi	# l, tmp137
	salq	$2, %rsi	#, _34
	addq	%rsi, %rax	# _34, _35
# __builtins__.c:227:         *(self->arr+l) ^= *(self->arr+r);
	xorl	%ecx, %edx	# _28, _36
	movl	%edx, (%rax)	# _36, *_35
# __builtins__.c:228:         l++;
	addq	$1, -16(%rbp)	#, l
# __builtins__.c:229:         r--;
	subq	$1, -8(%rbp)	#, r
.L76:
# __builtins__.c:224:     while (l<r){
	movq	-16(%rbp), %rax	# l, tmp138
	cmpq	-8(%rbp), %rax	# r, tmp138
	jb	.L77	#,
# __builtins__.c:231: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	listReverse, .-listReverse
	.section	.rodata
	.align 8
.LC17:
	.string	"Error while allocating memory!"
	.text
	.type	intListCopy, @function
intListCopy:
.LFB20:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$48, %rsp	#,
	movq	%rdi, -40(%rbp)	# self, self
# __builtins__.c:234:     IntList *newList = malloc(sizeof * newList);
	movl	$24, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -16(%rbp)	# tmp98, newList
# __builtins__.c:235:     int *arr = malloc(sizeof * arr * (1<<self->__capacity__));
	movq	-40(%rbp), %rax	# self, tmp99
	movzbl	16(%rax), %eax	# self_20(D)->__capacity__, _1
	movzbl	%al, %eax	# _1, _2
# __builtins__.c:235:     int *arr = malloc(sizeof * arr * (1<<self->__capacity__));
	movl	$1, %edx	#, tmp100
	movl	%eax, %ecx	# _2, tmp117
	sall	%cl, %edx	# tmp117, tmp100
	movl	%edx, %eax	# tmp100, _3
	cltq
# __builtins__.c:235:     int *arr = malloc(sizeof * arr * (1<<self->__capacity__));
	salq	$2, %rax	#, _5
	movq	%rax, %rdi	# _5,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp101, arr
# __builtins__.c:236:     if (!newList || !arr){
	cmpq	$0, -16(%rbp)	#, newList
	je	.L79	#,
# __builtins__.c:236:     if (!newList || !arr){
	cmpq	$0, -8(%rbp)	#, arr
	jne	.L80	#,
.L79:
# __builtins__.c:237:         perror("Error while allocating memory!");
	leaq	.LC17(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	call	perror@PLT	#
# __builtins__.c:238:         exit(1);
	movl	$1, %edi	#,
	call	exit@PLT	#
.L80:
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	movq	$0, -24(%rbp)	#, i
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	jmp	.L81	#
.L82:
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	movq	-40(%rbp), %rax	# self, tmp103
	movq	8(%rax), %rax	# self_20(D)->arr, _6
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	movq	-24(%rbp), %rdx	# i, tmp104
	salq	$2, %rdx	#, _7
	addq	%rdx, %rax	# _7, _8
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	movq	-24(%rbp), %rdx	# i, tmp105
	leaq	0(,%rdx,4), %rcx	#, _9
	movq	-8(%rbp), %rdx	# arr, tmp106
	addq	%rcx, %rdx	# _9, _10
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	movl	(%rax), %eax	# *_8, _11
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	movl	%eax, (%rdx)	# _11, *_10
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	addq	$1, -24(%rbp)	#, i
.L81:
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	movq	-40(%rbp), %rax	# self, tmp107
	movq	(%rax), %rax	# self_20(D)->__len__, _12
# __builtins__.c:241:     for (size_t i = 0; i < self->__len__;i++) *(arr+i) = *(self->arr+i);
	cmpq	%rax, -24(%rbp)	# _12, i
	jb	.L82	#,
# __builtins__.c:243:     newList->arr = arr;
	movq	-16(%rbp), %rax	# newList, tmp108
	movq	-8(%rbp), %rdx	# arr, tmp109
	movq	%rdx, 8(%rax)	# tmp109, newList_19->arr
# __builtins__.c:244:     newList->__capacity__ = self->__capacity__;
	movq	-40(%rbp), %rax	# self, tmp110
	movzbl	16(%rax), %edx	# self_20(D)->__capacity__, _13
# __builtins__.c:244:     newList->__capacity__ = self->__capacity__;
	movq	-16(%rbp), %rax	# newList, tmp111
	movb	%dl, 16(%rax)	# _13, newList_19->__capacity__
# __builtins__.c:245:     newList->__len__ = self->__len__;
	movq	-40(%rbp), %rax	# self, tmp112
	movq	(%rax), %rdx	# self_20(D)->__len__, _14
# __builtins__.c:245:     newList->__len__ = self->__len__;
	movq	-16(%rbp), %rax	# newList, tmp113
	movq	%rdx, (%rax)	# _14, newList_19->__len__
# __builtins__.c:246:     return newList;
	movq	-16(%rbp), %rax	# newList, _27
# __builtins__.c:247: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	intListCopy, .-intListCopy
	.type	intListSort, @function
intListSort:
.LFB21:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)	# self, self
# __builtins__.c:251:     for (size_t i = 1;i<self->__len__;i++){
	movq	$1, -16(%rbp)	#, i
# __builtins__.c:251:     for (size_t i = 1;i<self->__len__;i++){
	jmp	.L85	#
.L88:
# __builtins__.c:252:         int cur = *(self->arr+i);
	movq	-40(%rbp), %rax	# self, tmp102
	movq	8(%rax), %rax	# self_27(D)->arr, _1
# __builtins__.c:252:         int cur = *(self->arr+i);
	movq	-16(%rbp), %rdx	# i, tmp103
	salq	$2, %rdx	#, _2
	addq	%rdx, %rax	# _2, _3
# __builtins__.c:252:         int cur = *(self->arr+i);
	movl	(%rax), %eax	# *_3, tmp104
	movl	%eax, -20(%rbp)	# tmp104, cur
# __builtins__.c:253:         size_t j = i-1;
	movq	-16(%rbp), %rax	# i, tmp108
	subq	$1, %rax	#, tmp107
	movq	%rax, -8(%rbp)	# tmp107, j
# __builtins__.c:255:         while (j>=0 && cur < *(self->arr+j)) {
	jmp	.L86	#
.L87:
# __builtins__.c:257:             *(self->arr+j+1) = *(self->arr+j);
	movq	-40(%rbp), %rax	# self, tmp109
	movq	8(%rax), %rax	# self_27(D)->arr, _4
# __builtins__.c:257:             *(self->arr+j+1) = *(self->arr+j);
	movq	-8(%rbp), %rdx	# j, tmp110
	salq	$2, %rdx	#, _5
	leaq	(%rax,%rdx), %rcx	#, _6
# __builtins__.c:257:             *(self->arr+j+1) = *(self->arr+j);
	movq	-40(%rbp), %rax	# self, tmp111
	movq	8(%rax), %rax	# self_27(D)->arr, _7
# __builtins__.c:257:             *(self->arr+j+1) = *(self->arr+j);
	movq	-8(%rbp), %rdx	# j, tmp112
	addq	$1, %rdx	#, _8
	salq	$2, %rdx	#, _9
	addq	%rax, %rdx	# _7, _10
# __builtins__.c:257:             *(self->arr+j+1) = *(self->arr+j);
	movl	(%rcx), %eax	# *_6, _11
# __builtins__.c:257:             *(self->arr+j+1) = *(self->arr+j);
	movl	%eax, (%rdx)	# _11, *_10
# __builtins__.c:258:             j--;
	subq	$1, -8(%rbp)	#, j
.L86:
# __builtins__.c:255:         while (j>=0 && cur < *(self->arr+j)) {
	movq	-40(%rbp), %rax	# self, tmp113
	movq	8(%rax), %rax	# self_27(D)->arr, _12
# __builtins__.c:255:         while (j>=0 && cur < *(self->arr+j)) {
	movq	-8(%rbp), %rdx	# j, tmp114
	salq	$2, %rdx	#, _13
	addq	%rdx, %rax	# _13, _14
# __builtins__.c:255:         while (j>=0 && cur < *(self->arr+j)) {
	movl	(%rax), %eax	# *_14, _15
# __builtins__.c:255:         while (j>=0 && cur < *(self->arr+j)) {
	cmpl	%eax, -20(%rbp)	# _15, cur
	jl	.L87	#,
# __builtins__.c:260:         *(self->arr+j+1) = cur;
	movq	-40(%rbp), %rax	# self, tmp115
	movq	8(%rax), %rax	# self_27(D)->arr, _16
# __builtins__.c:260:         *(self->arr+j+1) = cur;
	movq	-8(%rbp), %rdx	# j, tmp116
	addq	$1, %rdx	#, _17
	salq	$2, %rdx	#, _18
	addq	%rax, %rdx	# _16, _19
# __builtins__.c:260:         *(self->arr+j+1) = cur;
	movl	-20(%rbp), %eax	# cur, tmp117
	movl	%eax, (%rdx)	# tmp117, *_19
# __builtins__.c:251:     for (size_t i = 1;i<self->__len__;i++){
	addq	$1, -16(%rbp)	#, i
.L85:
# __builtins__.c:251:     for (size_t i = 1;i<self->__len__;i++){
	movq	-40(%rbp), %rax	# self, tmp118
	movq	(%rax), %rax	# self_27(D)->__len__, _20
# __builtins__.c:251:     for (size_t i = 1;i<self->__len__;i++){
	cmpq	%rax, -16(%rbp)	# _20, i
	jb	.L88	#,
# __builtins__.c:263: }
	nop	
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	intListSort, .-intListSort
	.section	.rodata
	.align 4
.LC9:
	.long	1061158912
	.align 4
.LC12:
	.long	1048576000
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
