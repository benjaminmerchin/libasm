	global ft_strlen

	section .text
ft_strlen:
	xor		rax, rax ;set rax to 0
	dec		rax;

_loop:
	inc		rax ;so rax is at 0 at the beginning of the first loop
	cmp		byte [rdi + rax], 0 ;rdi is used to pass the first argument (second would be rsi then rdx, rcx, r8 and r9)
	jne		_loop
	ret
