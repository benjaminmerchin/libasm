; in rdi we have the destination
; in rsi we have the string source

	global ft_strcpy

ft_strcpy:
	xor		rax, rax ;clean rax
	xor		r9, r9 ;clean r9
	mov		r9, rdi ;we save the destination in r9 to be able to return it later

_loop:
	cmp		byte [rsi + rax], 0
	mov		r8b , byte [rsi + rax]
	mov		byte [rdi + rax], r8b
	je		_end
	inc		rax
	jmp		_loop

_end:
	xor		rax, rax
	mov		rax, r9
	ret
