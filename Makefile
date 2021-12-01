SRC_DIR	=	./srcs

SRCS	=	${SRC_DIR}/main.c \
			${SRC_DIR}/foo.c

OBJS	= ${SRCS:.c=.o}

NAME	=	program

CC		=	gcc
FLAGS	=	-Wall -Wextra -Werror


.c.o:
	${CC} ${FLAGS} -c $< -o ${<:.c=.o}

all:	${OBJS}
	${CC} ${FLAGS} -o ${NAME} ${OBJS}
