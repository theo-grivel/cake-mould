#	Compilation setting

NAME	=	program	

CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror
OFLAGS	=	-fsanitize=address


#	Headers

DIR_INC	=	./headers/
HEADER	=	bar.h


#	Sources

DIR_SRC	=	./srcs
SRCS	=	${DIR_SRC}/main.c \
			${DIR_SRC}/foo.c


#	Objets

DIR_OBJ	=	./objs
OBJS	=	${addprefix ${DIR_OBJ}/, ${notdir ${SRCS:.c=.o}}}

#	Linux
ifeq ($(UNAME_S),Linux)
	@echo "It is linux os"
endif


#	Apple
ifeq ($(UNAME_S),Darwin)
	@echo "It is mac os"
endif

RM		=	rm -f

vpath %.c ${DIR_SRC}


all : ${NAME}

${NAME}:	${OBJS}
	${CC} ${OFLAGS} ${OBJS} -o ${NAME}

${DIR_OBJ}/%.o : %.c | ${DIR_OBJ}
	${CC} ${CFLAGS} -I ${DIR_INC} -o $@ -c $^

${DIR_OBJ} :
	@mkdir -p ${DIR_OBJ}

clean:
	${RM} ${OBJS}

fclean:	clean
	${RM} ${NAME}

re:		fclean all

norm:
	norminette ${SRCS}
	norminette ${HEADER}
