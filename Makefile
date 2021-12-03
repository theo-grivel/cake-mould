SRC_DIR	=	./srcs
OBJ_DIR	=	./objs

SRCS	=	${SRC_DIR}/main.c \
			${SRC_DIR}/foo.c

OBJS	=	${SRCS:.c=.o}

NAME	=	program	

CC		=	gcc
FLAGS	=	-Wall -Wextra -Werror

RM		=	rm -f

.c.o:
	${CC} ${FLAGS} -c $< -o  ${addprefix ${OBJ_DIR}/, ${notdir ${<:.c=.o}}}

all:	${OBJS}
	${CC} ${FLAGS} -o ${NAME} ${addprefix ${OBJ_DIR}/, ${notdir ${OBJS}}}

clean:
	${RM} ${addprefix ${OBJ_DIR}/, ${notdir ${OBJS}}}

fclean:	clean
	${RM} ${NAME}

re:		fclean all
