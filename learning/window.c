/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   window.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jakgonza <jakgonza@student.42urduliz.co    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/09/29 17:50:23 by jakgonza          #+#    #+#             */
/*   Updated: 2023/09/29 18:38:28 by jakgonza         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../mlx/mlx.h"

int main(void)
{
	void	*mlx;			// Connection
	void	*window;		// Window instance
	void	*img;

	/* This establish a connection to the grafical system */
	mlx = mlx_init();

	/* This will be an image instance to print on windows */
	img = mlx_new_image(mlx, 1000, 600);
	
	/* This will create the window */
	window = mlx_new_window(mlx, 1200, 800, "Iakito's Window!!");

	/* This will maintain the window open in an infinite loop */
	mlx_loop(mlx);

	return 0;
}
