; in rdi we have the fd
; in rsi we have the string buffer
; in rdx we have the length to read

	global ft_read
	extern	__errno_location

ft_read:

_core:
	mov		rax, 0 				;ID to read from the table
	mov		rbx, rdi			;standard output
	mov		rcx, rsi			;buffer
;	mov		rdx, rdx			;Not usefull because rdx is already at the right place		
	syscall					;execute

	cmp		rax, 0				;compare the output
	jl		_error				; if there is an errror
	ret						; this is the return if everything is fine

_error:
	neg		rax
	mov		r15, rax			;we save rax
	call	__errno_location wrt ..plt
	mov		[rax], r15			;put the initial value of rax
	mov		rax, -1				; return value of -1 because there is an error
	ret
