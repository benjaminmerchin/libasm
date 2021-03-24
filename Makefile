NAME	=	libasm.a
SRC		=	ft_strcmp.s ft_write.s ft_strlen.s ft_read.s ft_strdup.s ft_strcpy.s
OBJ		=	$(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@ranlib $(NAME)

testor: fclean $(NAME)
	@gcc main.c $(NAME) -o libasm
	@./libasm

%.o: %.s
	@nasm -felf64 $<

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME) libasm

re: fclean all

.PHONY: clean fclean all re bonus
