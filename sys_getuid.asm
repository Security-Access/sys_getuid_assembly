BITS 64

extern printf

global _start

section .rodata

	printformat db "ID = %d", 10, 0 	

section .text

_start:
	mov rax, 102
	syscall
	mov rdi, printformat
	mov rsi, rax
	call printf
	syscall
	jmp _exit

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
