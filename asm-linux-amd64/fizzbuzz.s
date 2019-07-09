%define	WRITE	1
%define STDOUT	1

	global	main
	extern	printf

	section	.text
main:	enter	10, 0
	mov	[rbp-8], rbx
	mov	byte [rbp-9], 3		; next fizz
	mov	byte [rbp-10], 5	; next buzz
	xor	ebx, ebx
.loop:	inc	ebx
	cmp	ebx, 101
	je	.done
	mov	eax, WRITE		; common syscall args
	mov	edi, STDOUT		;
	mov	edx, 5			;
	cmp	bl, [rbp-9]
	je	.fizz
	cmp	bl, [rbp-10]
	je	.buzz
	mov	edi, s_num
	mov	esi, ebx
	xor	eax, eax
	call	printf
	jmp	.loop
.buzz:	add	byte [rbp-10], 5
	mov	esi, s_buzz
	syscall
	jmp	.loop
.fizz:	add	byte [rbp-9], 3
	cmp	bl, [rbp-10]
	je	.fibu
	mov	esi, s_fizz
	syscall
	jmp	.loop
.fibu:	add	byte [rbp-10], 5
	mov	esi, s_fibu
	mov	edx, 9
	syscall
	jmp	.loop
.done:	xor	eax, eax
	mov	rbx, [rbp-8]
	leave
	ret

	section .rodata
s_fizz:	db	"Fizz", 10
s_buzz:	db	"Buzz", 10
s_fibu:	db	"FizzBuzz", 10
s_num:	db	"%d", 10, 0
