.intel_syntax noprefix
.extern _print, _alloc4
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, rbp
	sub rax, 8
	push rax
	pop rdi
	push 1
	pop rsi
	push 2
	pop rdx
	push 4
	pop rcx
	push 8
	pop r8
	mov rax, 5
	test rsp, 15
	jne call.else0
	call _alloc4
	jmp call.end0
call.else0:
	push rsi
	call _alloc4
	pop rsi
call.end0:
	mov rax, rbp
	sub rax, 16
	push rax
	mov rax, rbp
	sub rax, 8
	push rax
	pop rax
	mov rax, [rax]
	push rax
	push 2
	push 4
	pop rdi
	pop rax
	mul rdi
	push rax
	pop rdi
	pop rax
	add rax, rdi
	push rax
	pop rdi
	pop rax
	mov [rax], rdi
	push rdi
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else1
	call _print
	jmp call.end1
call.else1:
	push rsi
	call _print
	pop rsi
call.end1:
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else2
	call _print
	jmp call.end2
call.else2:
	push rsi
	call _print
	pop rsi
call.end2:
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else3
	call _print
	jmp call.end3
call.else3:
	push rsi
	call _print
	pop rsi
call.end3:
	mov rax, rbp
	sub rax, 16
	push rax
	mov rax, rbp
	sub rax, 8
	push rax
	pop rax
	mov rax, [rax]
	push rax
	push 3
	push 4
	pop rdi
	pop rax
	mul rdi
	push rax
	pop rdi
	pop rax
	add rax, rdi
	push rax
	pop rdi
	pop rax
	mov [rax], rdi
	push rdi
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
