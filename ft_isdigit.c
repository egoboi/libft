/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isdigit.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fbrisson <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/07 14:32:24 by fbrisson          #+#    #+#             */
/*   Updated: 2022/11/08 12:38:11 by fbrisson         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

int	ft_isdigit(int c)
{
	return (c >= '0' && c <= '9');
}

/*

#include <stdio.h>

int	main(void)
{
	int	a;
	int	b;

	b = 'A';
	a = ft_isdigit(b);
	printf("%d", a);
}*/
