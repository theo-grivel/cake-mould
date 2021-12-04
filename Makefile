DIR_SRC	=	./srcs
DIR_OBJ	=	./objs
DIR_INC	=	./headers/

SRCS	=	${DIR_SRC}/main.c \
			${DIR_SRC}/foo.c

OBJS	=	${addprefix ${DIR_OBJ}/, ${notdir ${SRCS:.c=.o}}}

NAME	=	program	

CC		=	gcc
FLAGS	=	-Wall -Wextra -Werror

RM		=	rm -f

vpath %.c ${DIR_SRC}

all : ${NAME}

${DIR_OBJ}/%.o : %.c | ${DIR_OBJ}
	${CC} ${CFLAGS} -o $@ -I ${DIR_INC}  -c $^

${NAME}:	${OBJS}
	${CC} ${FLAGS} -o ${NAME}  ${OBJS}

${DIR_OBJ} :
	@mkdir -p ${DIR_OBJ}

clean:
	${RM} ${OBJS}

fclean:	clean
	${RM} ${NAME}

re:		fclean all
