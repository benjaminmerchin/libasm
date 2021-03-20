#include "libasm.h"

void	ok_or_error(long expected, long result)
{
	if (result == expected)
		printf("OK\n");
	else
		printf("ERROR\n");
}

void 	clean_buff(char buff[1000])
{
	int i;

	i = 0;
	while (i < 1000)
	{
		buff[i] = 0;
		i++;
	}
}

int		main(void)
{
	int i;
	int j;
	char *s1;
	char *s2;
	int fd;
	char buff[1000];
	char *source;

	/*printf("LIBASM - Testor\n");
	printf("-----------------------------\n");
	printf("ft_strlen\n");

	i = strlen("");
	j = ft_strlen("");
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	i = strlen(" ");
	j = ft_strlen(" ");
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	i = strlen("1234567890 ");
	j = ft_strlen("1234567890 ");
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	printf("-----------------------------\n");
	printf("ft_strcmp\n");

	s1 = "r";
	s2 = "ra";
	i = strcmp(s1, s2);
	j = ft_strcmp(s1, s2);
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	s1 = "abc";
	s2 = "123";
	i = strcmp(s1, s2);
	j = ft_strcmp(s1, s2);
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	s1 = "afnefvna987yfav0 98r0";
	s2 = " a987y ha 98fh 0a8h 0";
	i = strcmp(s1, s2);
	j = ft_strcmp(s1, s2);
	printf("Expected %d: %d ", i, j);
	ok_or_error(i, j);

	printf("-----------------------------\n");
	printf("ft_write\n");

	s1 = "ab";
	i = strlen(s1);
	write(1, s1, i);
	write(1, " | ", 3);
	ft_write(1, s1, i);
	write(1, "\n", 1);

	s1 = "Hello World!";
	i = strlen(s1);
	write(1, s1, i);
	write(1, " | ", 3);
	ft_write(1, s1, i);
	write(1, "\n", 1);

	s1 = "(*&^$@*(& (*";
	i = strlen(s1);
	write(1, s1, i);
	write(1, " | ", 3);
	ft_write(1, s1, i);
	write(1, "\n", 1);

	printf("-----------------------------\n");
	printf("ft_read\n");

	i = 0;
	fd = open("main.c", O_RDONLY);
	buff[i] = '\0';
	read(fd, buff, i);
	printf("Expected: %s\n", buff);
	close(fd);
	fd = open("main.c", O_RDONLY);
	buff[i] = '\0';
	ft_read(fd, buff, i);
	printf("Result  : %s\n", buff);
	close(fd);

	i = 5;
	fd = open("main.c", O_RDONLY);
	buff[i] = '\0';
	read(fd, buff, i);
	printf("Expected: %s\n", buff);
	close(fd);
	fd = open("main.c", O_RDONLY);
	buff[i] = '\0';
	ft_read(fd, buff, i);
	printf("Result  : %s\n", buff);
	close(fd);

	i = 15;
	fd = open("main.c", O_RDONLY);
	buff[i] = '\0';
	read(fd, buff, i);
	printf("Expected: %s\n", buff);
	close(fd);
	fd = open("main.c", O_RDONLY);
	buff[i] = '\0';
	ft_read(fd, buff, i);
	printf("Result  : %s\n", buff);
	close(fd);

	printf("-----------------------------\n");*/
	printf("ft_strcpy\n");

	source = "abcdef";
/*	s1 = strcpy(buff, source);
	printf("Expected: %s\n", s1);
	clean_buff(buff);*/
	s2 = ft_strcpy(buff, source);
	//printf("Result  : %s\n", s2);


	return (0);
}
