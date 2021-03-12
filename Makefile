NAME	=	YouTube
SRC		=	youtube.asm
OBJ		=	$(SRC:.asm=.o)

all: $(NAME)

$(NAME):
	@nasm -felf64 $(SRC)
	@ld $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean all re bonus
