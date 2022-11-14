/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_substr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: fbrisson <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/10 14:52:51 by fbrisson          #+#    #+#             */
/*   Updated: 2022/11/11 19:25:23 by fbrisson         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_substr(const char *s, unsigned int start, size_t len)
{
	char	*dest;
	size_t	i;

	if (!s)
		return (NULL);
	dest = malloc(sizeof(*dest) * (len + 1));
	if (!dest)
		return (NULL);
	i = start;
	while ((i - start) < len)
	{
		dest[i - start] = s[i];
		i++;
	}
	dest[i - start] = '\0';
	return (dest);
}

/*

int	main(void)
{
	char	tab1[] = "HOOD IS THE NEW TREND BABINKS IS THE WEY";
	char	*tab2;
	int	a = 22;
	int	b = 7;

	tab2 = ft_substr(tab1, a, b);
	printf("%s \n", tab2);
	return (0);
}*/