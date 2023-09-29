# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jakgonza <jakgonza@student.42urduliz.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/09/29 15:23:55 by jakgonza          #+#    #+#              #
#    Updated: 2023/09/29 18:35:42 by jakgonza         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = so_long

SRCS = 	so_long.c

OBJS = $(SRCS:.c=.o)

CFLAGS = -g -Wall -Werror -Wextra

LIBFT = libft/libft.a

MLX = mlx/libmlx.a

GNL = gnl/gnl.a

all: $(NAME)

$(LIBFT):
	@make -C ./libft

$(MLX):
	@make -C ./mlx

$(GNL):
	@make -C ./gnl

%.o: %.c
	gcc $(CFLAGS) -Imlx -c $< -o $@

$(NAME): $(OBJS) $(LIBFT) $(GNL) $(MLX)
	gcc $(CFLAGS) $(OBJS) $(LIBFT) $(GNL) $(MLX) -lmlx -framework OpenGL -framework AppKit -o $(NAME)

# gcc $(CFLAGS) $(OBJS) $(LIBFT) $(GNL) $(MLX) -lXext -lX11 -o $(NAME)	
# gcc $(CFLAGS) $(OBJS) $(LIBFT) $(GNL) $(MLX) -lmlx -framework OpenGL -framework AppKit -o $(NAME)

clean:
	rm -f $(OBJS)
	@echo "Object files removed"
	@make clean -C ./libft
	@make clean -C ./mlx
	@make clean -C ./gnl

fclean:
	rm -f $(NAME)
	@echo "Library removed"
	@make fclean -C ./libft
	@make fclean -C ./gnl

re: fclean all

iako: clean fclean

.PHONY: all clean fclean re
