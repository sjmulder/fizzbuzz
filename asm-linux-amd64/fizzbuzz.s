	global	main
	extern	printf

	section	.text
main:	xor	ebx, ebx
.loop: 	inc	ebx
	cmp	ebx, 100
	je	.done
	mov	eax, ebx	; fizz?
	mov	ecx, 3
	cdq
	div	ecx
	cmp	edx, 0
	je	.fizz
	mov	eax, ebx	; buzz?
	mov	ecx, 5
	cdq
	div	ecx
	cmp	edx, 0
	je	.buzz
	mov	edi, s_num	; num
	mov	esi, ebx
	xor	eax, eax
	call	printf
	jmp	.loop
.fizz:	mov	eax, ebx	; fizzbuzz?
	mov	ecx, 5
	cdq
	div	ecx
	cmp	edx, 0
	je	.fibu
	mov	edi, s_fizz	; fizz
	xor	eax, eax
	call	printf
	jmp	.loop
.fibu:	mov	edi, s_fibu	; fizzbuzz
	xor	eax, eax
	call	printf
	jmp	.loop
.buzz:	mov	edi, s_buzz	; buzz
	xor	eax, eax
	call	printf
	jmp	.loop
.done:	mov	eax, 0
	ret

	section .rodata
s_fizz:	db	"Fizz", 10, 0
s_buzz:	db	"Buzz", 10, 0
s_fibu:	db	"FizzBuzz", 10, 0
s_num:	db	"%d", 10, 0
