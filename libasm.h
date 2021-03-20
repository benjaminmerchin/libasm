#ifndef LIBASM_H
# define LIBASM_H

# include <stdio.h>
# include <string.h>
# include <unistd.h>

size_t ft_strlen(const char *str);
int ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fildes, const void *buf, size_t nbyte);

#endif