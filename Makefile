##
## EPITECH PROJECT, 2024
## chocolatine-mirror
## File description:
## Makefile
##

CC = gcc
CFLAGS = -Wall -Wextra -Werror
NAME = chocolatine_mirror
SRC	= chocolatine_mirror.c
lIB_EPITECH = -L./lib/ -lmy
OBJ	=	$(SRC:.c=.o)

all: $(NAME)

$(NAME):
		cd lib/my && $(MAKE)
		$(CC) -o $(NAME) $(SRC) $(CFLAGS)

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)
		rm -f coding-style-reports.log

re: fclean all
