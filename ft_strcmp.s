	global ft_strcmp

	section .text
ft_strcmp:
	xor		rax, rax ;set rax to 0
	dec		rax

_loop:
	inc		rax
	mov		r8b, [rdi + rax]
	mov		r9b, [rsi + rax]
	cmp		r8b, 0
	je		_end
	cmp		r9b, 0
	je		_end
	cmp		r8b, r9b
	je		_loop

_end:
	xor		rax, rax ; useless ?
	xor		rbx, rbx ; useless ?
	mov		al, r8b
	mov		bl, r9b
	sub		rax, rbx
	ret
