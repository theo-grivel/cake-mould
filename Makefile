DIR_SRC	=	./srcs
DIR_OBJ	=	./objs
DIR_HEADER	=	./headers/

SRCS	=	${DIR_SRC}/main.c \
			${DIR_SRC}/foo.c

OBJS	=	${SRCS:.c=.o}

NAME	=	program	

CC		=	gcc
FLAGS	=	-Wall -Wextra -Werror

RM		=	rm -f

.c.o:
	${CC} ${FLAGS} -I ${DIR_HEADER} -c $< -o  ${addprefix ${DIR_OBJ}/, ${notdir ${<:.c=.o}}}

all:	${OBJS}
	${CC} ${FLAGS} -o ${NAME} ${addprefix ${DIR_OBJ}/, ${notdir ${OBJS}}}

clean:
	${RM} ${addprefix ${DIR_OBJ}/, ${notdir ${OBJS}}}

fclean:	clean
	${RM} ${NAME}

re:		fclean all
