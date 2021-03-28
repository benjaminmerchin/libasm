; in rdi we have the fd
; in rsi we have the string to print
; in rdx we have the string length

	global	ft_write
	extern	__errno_location

	section .text
ft_write:

_core:
	mov		rax, 1 				;ID to write from the table
	mov		rbx, rdi			;for the standard output
	mov		rcx, rsi
;	mov		rdx, rdx			;Not usefull because rdx is already at the right place		
	syscall					;code to execute kernell
	cmp		rax, 0
	jl		_error				; if there is an errror (with the flag)
	ret						; this is the return if everything is fine

_error:
	neg		rax
	mov		r15, rax			;save rax
	call	__errno_location wrt ..plt
	mov		[rax], r15
	mov		rax, -1
	ret
