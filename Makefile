# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fbrisson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/01 17:49:55 by fbrisson          #+#    #+#              #
#    Updated: 2022/11/22 09:43:10 by fbrisson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c \
	ft_isprint.c ft_itoa.c ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c \
	ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c ft_split.c ft_strchr.c \
	ft_strdup.c ft_striteri.c ft_strjoin.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strmapi.c \
	ft_strncmp.c ft_strnstr.c ft_strrchr.c ft_strtrim.c ft_substr.c ft_tolower.c ft_toupper.c

BONUS_SRC = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
	ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJ = ${SRC:.c=.o}

BONUS_OBJ = ${BONUS_SRC:.c=.o}

.c.o:
	cc -Wall -Wextra -Werror -c $< -o ${<:.c=.o}

${NAME}: ${OBJ}
	ar -rcs ${NAME} ${OBJ}

bonus: ${OBJ} ${BONUS_OBJ}
	ar -rcs ${NAME} ${BONUS_OBJ} ${OBJ}

all: ${NAME}

clean:
	rm -f ${OBJ} ${BONUS_OBJ}

fclean: clean
	rm -f ${NAME}

re : fclean all

so:
	${CC} -nostartfiles -fPIC ${CFLAGS} ${SRC}
	gcc -nostartfiles -shared -o libft.so ${OBJ}

.PHONY: all clean fclean bonus re
