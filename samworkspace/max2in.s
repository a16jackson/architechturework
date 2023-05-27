	.file	"max2in.c"
	.text
	.section	.rodata
.LC0:
	.string	"Usage: ./max2in int int" 
.LC1:
	.string	"%d is larger than %d\n"
.LC2:
	.string	"Undefined"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64 
	pushq	%rbp				# pushes the frame pointer onto the stack
	.cfi_def_cfa_offset 16		
	.cfi_offset 6, -16			
	movq	%rsp, %rbp			# copies the value at %rsp, puts it in register %rbp
	.cfi_def_cfa_register 6		
	subq	$32, %rsp			#
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)		# copies the value at %rsi, puts it 32 below %rbp
	cmpl	$3, -20(%rbp)		# compares 
	je	.L2
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi			# copies the value at %rax, puts it in %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L3
.L2:
	movq	-32(%rbp), %rax		# copies the value 32 below %rbp, puts it in %rax
	addq	$8, %rax
	movq	(%rax), %rax		# copies the value at %rax, puts it in %rax
	movq	%rax, %rdi			# copies the value at %rax, puts it in %rdi
	call	atoi@PLT
	movl	%eax, -8(%rbp)
	movq	-32(%rbp), %rax		# copies the value 32 below %rbp, puts it in %rax
	addq	$16, %rax
	movq	(%rax), %rax		# copies the value at %rax, puts it in %rax
	movq	%rax, %rdi			# copies the value at %rax, puts it in %rdi
	call	atoi@PLT
	movl	%eax, -4(%rbp)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L4
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi			# copies the value at %rax, puts it in %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L5
.L4:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jle	.L6
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi			# copies the value at %rax, puts it in %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L5
.L6:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi			# copies the value at %rax, puts it in %rdi
	call	puts@PLT
.L5:
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
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
