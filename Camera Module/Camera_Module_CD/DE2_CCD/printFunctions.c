//#include "system.h"
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
//#include "sys/alt_irq.h"
//#include "altera_avalon_pio_regs.h"
//#include "altera_up_avalon_parallel_port.h"
//#include "altera_up_avalon_parallel_port_regs.h"

#include "printFunctions.h"
#include "mainf.h"
//#include "solver.h"

void writeMove(int move, int reset)
{
	/*if(reset){
		IOWR_ALTERA_AVALON_PIO_DATA(CUBE_MOVE_BASE, 0);
		IOWR_ALTERA_AVALON_PIO_DATA(CUBE_MOVE_BASE, RESET);
	} else {			
		IOWR_ALTERA_AVALON_PIO_DATA(CUBE_MOVE_BASE, WE | CLOCK | move);
		IOWR_ALTERA_AVALON_PIO_DATA(CUBE_MOVE_BASE, WE | move);
	}*/
}

void cvrtToColorPrint(int face, int i)
{
	switch(cubieColor[face][i])
	{
		case W:
			printf("W ");
			break;
		case Y:
			printf("Y ");
			break;
		case O:
			printf("O ");
			break;
		case R:
			printf("R ");
			break;
		case G:
			printf("G ");
			break;
		case B:
			printf("B ");
			break;
		default:
			printf("X ");
			break;
	}
}

void printcube(int cubieColor[][9])
{
	int i,j;
	for (i = 0; i < 9; i++)
	{
		if (i % 3 == 0)
		{
			printf("\n       ");
		}
		cvrtToColorPrint(0, i);
	}
	
	printf("\n"); 
	
	for (i = 0; i < 3; i++)
	{
		printf("\n");
		if (i == 0)
		{
			for (j = 0; j < 3; j++)
			{
				cvrtToColorPrint(4, j);
			}
			printf(" ");
			for (j = 0; j < 3; j++)
			{
				cvrtToColorPrint(3, j);
			}
			printf(" ");
			for (j = 0; j < 3; j++)
			{
				cvrtToColorPrint(5, j);
			}
			printf(" ");
			for (j = 0; j < 3; j++)
			{
				cvrtToColorPrint(2, j);
			}
		}
		
		if (i == 1)
		{
			for (j = 3; j < 6; j++)
			{
				cvrtToColorPrint(4, j);
			}
			printf(" ");
			for (j = 3; j < 6; j++)
			{
				cvrtToColorPrint(3, j);
			}
			printf(" ");
			for (j = 3; j < 6; j++)
			{
				cvrtToColorPrint(5, j);
			}
			printf(" ");
			for (j = 3; j < 6; j++)
			{
				cvrtToColorPrint(2, j);
			}
		}
		if (i == 2)
		{
			for (j = 6; j < 9; j++)
			{
				cvrtToColorPrint(4, j);
			}
			printf(" ");
			for (j = 6; j < 9; j++)
			{
				cvrtToColorPrint(3, j);
			}
			printf(" ");
			for (j = 6; j < 9; j++)
			{
				cvrtToColorPrint(5, j);
			}
			printf(" ");
			for (j = 6; j < 9; j++)
			{
				cvrtToColorPrint(2, j);
			}
		}
	}

	printf("\n");
	
	for (i = 0; i < 9; i++)
	{
		if (i % 3 == 0)
		{
			printf("\n       ");
		}
		cvrtToColorPrint(1, i);
	}
	
	printf("\n\n");
}

void printAllSteps(int order)
{
int i;

	printf("\nTotal Moves: %d \n\n", moveCounter);
	printf("New Total Moves: %d\n\n", order);
	int newMove = 0;
	for (i = 0; i < order; i++)		
	{
		if ( (moves[i] != vRotate) && (moves[i] != hRotate) )
		{
			newMove++;
		}
	}
	printf("New Total Moves(Without Rotations): %d\n\n", newMove);
	
	moveCounter = 0;
			
	printf("Moves:\n");	
			
	for (i = 0; i < order; i++)		
	{	
		moveCounter++;
		switch(moves[i])		
		{		
			case uClock:		
				printf("U ");		
				break;		
			case uCClock:		
				printf("U' ");		
				break;		
			case dClock:		
				printf("D ");		
				break;		
			case dCClock:		
				printf("D' ");		
				break;		
			case bClock:		
				printf("B ");		
				break;		
			case bCClock:		
				printf("B' ");		
				break;		
			case fClock:		
				printf("F ");		
				break;		
			case fCClock:		
				printf("F' ");		
				break;		
			case lClock:		
				printf("L ");		
				break;		
			case lCClock:		
				printf("L' ");		
				break;		
			case rClock:		
				printf("R ");		
				break;		
			case rCClock:		
				printf("R' ");		
				break;		
			case hRotate:		
				printf("H ");		
				break;		
			case vRotate:		
				printf("V ");		
				break;	
			default:
				printf("WTF?");
				break;
		}		
		//putStr("%d ", moves[i]);	
		//writeMove(moves[i], 0);	
	}		
	printf("\n");		
}
