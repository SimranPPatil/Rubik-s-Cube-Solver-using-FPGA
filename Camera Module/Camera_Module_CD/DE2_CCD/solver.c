#include <stdio.h>
#include <stdlib.h>
#include "solver.h"

int cubieColor[6][9];

int main()
{
	int i, face, f;

	unsigned int colors[54];

	for(i = 0; i<54; i++)
		colors[i] = 0;
	// Start with pressing reset
	*to_hw_sig = 0;
	*to_hw_port = 0;
	printf("Press reset!\n");
	while (*to_sw_sig != 3);

	while (1)
	{
		*to_hw_sig = 3;
		
		printf("To Software Sig: %d", *to_sw_sig);
		while (*to_sw_sig != 2);

		*to_hw_sig = 1;
		while (*to_sw_sig != 1);
		face = *to_sw_port;
		*to_hw_sig = 2;
		while (*to_sw_sig != 0);
		f = (face - 1) * 9;
		
		for (i = f; i < f+9; i++)
		{
			*to_hw_sig = 1;
			while (*to_sw_sig != 1);
			colors[i] = *to_sw_port;
			*to_hw_sig = 2;
			while (*to_sw_sig != 0);
		}
	
		for(i = f; i<f + 9; i++)
			printf("%2x", colors[i]);
	}

	for(i=0; i<54; i++)
		cubeColors[i/9][i%9] = colors[i];	

	return 0;
}