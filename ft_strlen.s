;int	ft_strlen(const char *s)
;{
;	int i;
;
;	i = 0;
;	while (s[i])
;		i++;
;	return (i);
;}

; rax = i

	global ft_strlen
	section .text
ft_strlen:
	xor rdi, rdi
	

loop

