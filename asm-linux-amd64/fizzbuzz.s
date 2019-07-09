	global	main
	extern	printf

	section	.text
main:	enter	0, 0
	push	rbx
	xor	ebx, ebx
.loop:	inc	ebx
	cmp	ebx, 101
	je	.done
	cmp	ebx, [i_nf]
	je	.fizz
	cmp	ebx, [i_nb]
	je	.buzz
	mov	edi, s_num
	mov	esi, ebx
	xor	eax, eax
	call	printf
	jmp	.loop
.buzz:	add	dword [i_nb], 5
	mov	edi, s_buzz
	xor	eax, eax
	call	printf
	jmp	.loop
.fizz:	add	dword [i_nf], 3
	cmp	ebx, [i_nb]
	je	.fibu
	mov	edi, s_fizz
	xor	eax, eax
	call	printf
	jmp	.loop
.fibu:	add	dword [i_nb], 5
	mov	edi, s_fibu
	xor	eax, eax
	call	printf
	jmp	.loop
.done:	xor	eax, eax
	pop	rbx
	leave
	ret

	section .data
i_nf:	dd	3		; next fizz
i_nb:	dd	5		; next buzz

	section .rodata
s_fizz:	db	"Fizz", 10, 0
s_buzz:	db	"Buzz", 10, 0
s_fibu:	db	"FizzBuzz", 10, 0
s_num:	db	"%d", 10, 0
