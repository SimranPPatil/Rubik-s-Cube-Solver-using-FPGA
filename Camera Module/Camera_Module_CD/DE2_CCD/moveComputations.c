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

#include "moveComputations.h"
#include "main.h"

void turnCube(int turn)
{	
	moveCounter++;
	moves = (int *) realloc(moves, moveCounter*sizeof(int));		
	moves[moveCounter-1] = turn;		
	if (moves == 0)		
	{		
		printf("ERROR: Out of memory\n");		
	}
	switch(turn)
	{
		case uClock:
			printf("U");
			break;
		case uCClock:
			printf("U'");
			break;
		case dClock:
			printf("D");
			break;
		case dCClock:
			printf("D'");
			break;
		case bClock:
			printf("B");
			break;
		case bCClock:
			printf("B'");
			break;
		case fClock:
			printf("F");
			break;
		case fCClock:
			printf("F'");
			break;
		case lClock:
			printf("L");
			break;
		case lCClock:
			printf("L'");
			break;
		case rClock:
			printf("R");
			break;
		case rCClock:
			printf("R'");
			break;
	}
	
	//writeMove(turn, 0);
	
	int cubieTemp[6][9];
	int i,j;
	
	for (i = 0; i < 6; i++)
	{
		for (j = 0; j < 9; j++)
		{
			cubieTemp[i][j] = cubieColor[i][j];
		}
	}
	
	switch(turn)
	{
		case uClock:
			cubieColor[4][0] = cubieTemp[3][0];
			cubieColor[4][1] = cubieTemp[3][1];
			cubieColor[4][2] = cubieTemp[3][2];
			
			cubieColor[3][0] = cubieTemp[5][0];
			cubieColor[3][1] = cubieTemp[5][1];
			cubieColor[3][2] = cubieTemp[5][2];
			
			cubieColor[5][0] = cubieTemp[2][0];
			cubieColor[5][1] = cubieTemp[2][1];
			cubieColor[5][2] = cubieTemp[2][2];
			
			cubieColor[2][0] = cubieTemp[4][0];
			cubieColor[2][1] = cubieTemp[4][1];
			cubieColor[2][2] = cubieTemp[4][2];
			
			cubieColor[0][0] = cubieTemp[0][6];
			cubieColor[0][1] = cubieTemp[0][3];
			cubieColor[0][2] = cubieTemp[0][0];
			cubieColor[0][3] = cubieTemp[0][7];
			cubieColor[0][4] = cubieTemp[0][4];
			cubieColor[0][5] = cubieTemp[0][1];
			cubieColor[0][6] = cubieTemp[0][8];
			cubieColor[0][7] = cubieTemp[0][5];
			cubieColor[0][8] = cubieTemp[0][2];
			break;
		case uCClock:
			cubieColor[4][0] = cubieTemp[2][0];
			cubieColor[4][1] = cubieTemp[2][1];
			cubieColor[4][2] = cubieTemp[2][2];
			
			cubieColor[3][0] = cubieTemp[4][0];
			cubieColor[3][1] = cubieTemp[4][1];
			cubieColor[3][2] = cubieTemp[4][2];
			
			cubieColor[5][0] = cubieTemp[3][0];
			cubieColor[5][1] = cubieTemp[3][1];
			cubieColor[5][2] = cubieTemp[3][2];
			
			cubieColor[2][0] = cubieTemp[5][0];
			cubieColor[2][1] = cubieTemp[5][1];
			cubieColor[2][2] = cubieTemp[5][2];
			
			cubieColor[0][0] = cubieTemp[0][2];
			cubieColor[0][1] = cubieTemp[0][5];
			cubieColor[0][2] = cubieTemp[0][8];
			cubieColor[0][3] = cubieTemp[0][1];
			cubieColor[0][4] = cubieTemp[0][4];
			cubieColor[0][5] = cubieTemp[0][7];
			cubieColor[0][6] = cubieTemp[0][0];
			cubieColor[0][7] = cubieTemp[0][3];
			cubieColor[0][8] = cubieTemp[0][6];
			break;
		case dClock:
			cubieColor[4][6] = cubieTemp[2][6];
			cubieColor[4][7] = cubieTemp[2][7];
			cubieColor[4][8] = cubieTemp[2][8];
			
			cubieColor[3][6] = cubieTemp[4][6];
			cubieColor[3][7] = cubieTemp[4][7];
			cubieColor[3][8] = cubieTemp[4][8];
			
			cubieColor[5][6] = cubieTemp[3][6];
			cubieColor[5][7] = cubieTemp[3][7];
			cubieColor[5][8] = cubieTemp[3][8];
			
			cubieColor[2][6] = cubieTemp[5][6];
			cubieColor[2][7] = cubieTemp[5][7];
			cubieColor[2][8] = cubieTemp[5][8];
			
			cubieColor[1][0] = cubieTemp[1][6];
			cubieColor[1][1] = cubieTemp[1][3];
			cubieColor[1][2] = cubieTemp[1][0];
			cubieColor[1][3] = cubieTemp[1][7];
			cubieColor[1][4] = cubieTemp[1][4];
			cubieColor[1][5] = cubieTemp[1][1];
			cubieColor[1][6] = cubieTemp[1][8];
			cubieColor[1][7] = cubieTemp[1][5];
			cubieColor[1][8] = cubieTemp[1][2];
			break;
		case dCClock:
			cubieColor[4][6] = cubieTemp[3][6];
			cubieColor[4][7] = cubieTemp[3][7];
			cubieColor[4][8] = cubieTemp[3][8];
			
			cubieColor[3][6] = cubieTemp[5][6];
			cubieColor[3][7] = cubieTemp[5][7];
			cubieColor[3][8] = cubieTemp[5][8];
			
			cubieColor[5][6] = cubieTemp[2][6];
			cubieColor[5][7] = cubieTemp[2][7];
			cubieColor[5][8] = cubieTemp[2][8];
			
			cubieColor[2][6] = cubieTemp[4][6];
			cubieColor[2][7] = cubieTemp[4][7];
			cubieColor[2][8] = cubieTemp[4][8];
			
			cubieColor[1][0] = cubieTemp[1][2];
			cubieColor[1][1] = cubieTemp[1][5];
			cubieColor[1][2] = cubieTemp[1][8];
			cubieColor[1][3] = cubieTemp[1][1];
			cubieColor[1][4] = cubieTemp[1][4];
			cubieColor[1][5] = cubieTemp[1][7];
			cubieColor[1][6] = cubieTemp[1][0];
			cubieColor[1][7] = cubieTemp[1][3];
			cubieColor[1][8] = cubieTemp[1][6];
			break;
		case bClock:
			cubieColor[0][0] = cubieTemp[5][2];
			cubieColor[0][1] = cubieTemp[5][5];
			cubieColor[0][2] = cubieTemp[5][8];
			
			cubieColor[1][6] = cubieTemp[4][0];
			cubieColor[1][7] = cubieTemp[4][3];
			cubieColor[1][8] = cubieTemp[4][6];
			
			cubieColor[4][0] = cubieTemp[0][2];
			cubieColor[4][3] = cubieTemp[0][1];
			cubieColor[4][6] = cubieTemp[0][0];
			
			cubieColor[5][2] = cubieTemp[1][8];
			cubieColor[5][5] = cubieTemp[1][7];
			cubieColor[5][8] = cubieTemp[1][6];
			
			cubieColor[2][0] = cubieTemp[2][6];
			cubieColor[2][1] = cubieTemp[2][3];
			cubieColor[2][2] = cubieTemp[2][0];
			cubieColor[2][3] = cubieTemp[2][7];
			cubieColor[2][4] = cubieTemp[2][4];
			cubieColor[2][5] = cubieTemp[2][1];
			cubieColor[2][6] = cubieTemp[2][8];
			cubieColor[2][7] = cubieTemp[2][5];
			cubieColor[2][8] = cubieTemp[2][2];
			break;
		case bCClock:
			cubieColor[0][0] = cubieTemp[4][6];
			cubieColor[0][1] = cubieTemp[4][3];
			cubieColor[0][2] = cubieTemp[4][0];
			
			cubieColor[1][6] = cubieTemp[5][8];
			cubieColor[1][7] = cubieTemp[5][5];
			cubieColor[1][8] = cubieTemp[5][2];
			
			cubieColor[4][0] = cubieTemp[1][6];
			cubieColor[4][3] = cubieTemp[1][7];
			cubieColor[4][6] = cubieTemp[1][8];
			
			cubieColor[5][2] = cubieTemp[0][0];
			cubieColor[5][5] = cubieTemp[0][1];
			cubieColor[5][8] = cubieTemp[0][2];
			
			cubieColor[2][0] = cubieTemp[2][2];
			cubieColor[2][1] = cubieTemp[2][5];
			cubieColor[2][2] = cubieTemp[2][8];
			cubieColor[2][3] = cubieTemp[2][1];
			cubieColor[2][4] = cubieTemp[2][4];
			cubieColor[2][5] = cubieTemp[2][7];
			cubieColor[2][6] = cubieTemp[2][0];
			cubieColor[2][7] = cubieTemp[2][3];
			cubieColor[2][8] = cubieTemp[2][6];
			break;
		case fClock:
			cubieColor[0][6] = cubieTemp[4][8];
			cubieColor[0][7] = cubieTemp[4][5];
			cubieColor[0][8] = cubieTemp[4][2];
			
			cubieColor[1][0] = cubieTemp[5][6];
			cubieColor[1][1] = cubieTemp[5][3];
			cubieColor[1][2] = cubieTemp[5][0];
			
			cubieColor[4][2] = cubieTemp[1][0];
			cubieColor[4][5] = cubieTemp[1][1];
			cubieColor[4][8] = cubieTemp[1][2];
			
			cubieColor[5][0] = cubieTemp[0][6];
			cubieColor[5][3] = cubieTemp[0][7];
			cubieColor[5][6] = cubieTemp[0][8];
			
			cubieColor[3][0] = cubieTemp[3][6];
			cubieColor[3][1] = cubieTemp[3][3];
			cubieColor[3][2] = cubieTemp[3][0];
			cubieColor[3][3] = cubieTemp[3][7];
			cubieColor[3][4] = cubieTemp[3][4];
			cubieColor[3][5] = cubieTemp[3][1];
			cubieColor[3][6] = cubieTemp[3][8];
			cubieColor[3][7] = cubieTemp[3][5];
			cubieColor[3][8] = cubieTemp[3][2];
			break;
		case fCClock:
			cubieColor[0][6] = cubieTemp[5][0];
			cubieColor[0][7] = cubieTemp[5][3];
			cubieColor[0][8] = cubieTemp[5][6];
			
			cubieColor[1][0] = cubieTemp[4][2];
			cubieColor[1][1] = cubieTemp[4][5];
			cubieColor[1][2] = cubieTemp[4][8];
			
			cubieColor[4][2] = cubieTemp[0][8];
			cubieColor[4][5] = cubieTemp[0][7];
			cubieColor[4][8] = cubieTemp[0][6];
			
			cubieColor[5][0] = cubieTemp[1][2];
			cubieColor[5][3] = cubieTemp[1][1];
			cubieColor[5][6] = cubieTemp[1][0];
			
			cubieColor[3][0] = cubieTemp[3][2];
			cubieColor[3][1] = cubieTemp[3][5];
			cubieColor[3][2] = cubieTemp[3][8];
			cubieColor[3][3] = cubieTemp[3][1];
			cubieColor[3][4] = cubieTemp[3][4];
			cubieColor[3][5] = cubieTemp[3][7];
			cubieColor[3][6] = cubieTemp[3][0];
			cubieColor[3][7] = cubieTemp[3][3];
			cubieColor[3][8] = cubieTemp[3][6];
			break;
		case lClock:
			cubieColor[3][0] = cubieTemp[0][0];
			cubieColor[3][3] = cubieTemp[0][3];
			cubieColor[3][6] = cubieTemp[0][6];
			
			cubieColor[1][0] = cubieTemp[3][0];
			cubieColor[1][3] = cubieTemp[3][3];
			cubieColor[1][6] = cubieTemp[3][6];
			
			cubieColor[2][2] = cubieTemp[1][6];
			cubieColor[2][5] = cubieTemp[1][3];
			cubieColor[2][8] = cubieTemp[1][0];
			
			cubieColor[0][0] = cubieTemp[2][8];
			cubieColor[0][3] = cubieTemp[2][5];
			cubieColor[0][6] = cubieTemp[2][2];
			
			cubieColor[4][0] = cubieTemp[4][6];
			cubieColor[4][1] = cubieTemp[4][3];
			cubieColor[4][2] = cubieTemp[4][0];
			cubieColor[4][3] = cubieTemp[4][7];
			cubieColor[4][4] = cubieTemp[4][4];
			cubieColor[4][5] = cubieTemp[4][1];
			cubieColor[4][6] = cubieTemp[4][8];
			cubieColor[4][7] = cubieTemp[4][5];
			cubieColor[4][8] = cubieTemp[4][2];
			break;
		case lCClock:
			cubieColor[3][0] = cubieTemp[1][0];
			cubieColor[3][3] = cubieTemp[1][3];
			cubieColor[3][6] = cubieTemp[1][6];
			
			cubieColor[1][0] = cubieTemp[2][8];
			cubieColor[1][3] = cubieTemp[2][5];
			cubieColor[1][6] = cubieTemp[2][2];
			
			cubieColor[2][2] = cubieTemp[0][6];
			cubieColor[2][5] = cubieTemp[0][3];
			cubieColor[2][8] = cubieTemp[0][0];
			
			cubieColor[0][0] = cubieTemp[3][0];
			cubieColor[0][3] = cubieTemp[3][3];
			cubieColor[0][6] = cubieTemp[3][6];
			
			cubieColor[4][0] = cubieTemp[4][2];
			cubieColor[4][1] = cubieTemp[4][5];
			cubieColor[4][2] = cubieTemp[4][8];
			cubieColor[4][3] = cubieTemp[4][1];
			cubieColor[4][4] = cubieTemp[4][4];
			cubieColor[4][5] = cubieTemp[4][7];
			cubieColor[4][6] = cubieTemp[4][0];
			cubieColor[4][7] = cubieTemp[4][3];
			cubieColor[4][8] = cubieTemp[4][6];
			break;
		case rClock:
			cubieColor[3][2] = cubieTemp[1][2];
			cubieColor[3][5] = cubieTemp[1][5];
			cubieColor[3][8] = cubieTemp[1][8];
			
			cubieColor[1][2] = cubieTemp[2][6];
			cubieColor[1][5] = cubieTemp[2][3];
			cubieColor[1][8] = cubieTemp[2][0];
			
			cubieColor[2][0] = cubieTemp[0][8];
			cubieColor[2][3] = cubieTemp[0][5];
			cubieColor[2][6] = cubieTemp[0][2];
			
			cubieColor[0][2] = cubieTemp[3][2];
			cubieColor[0][5] = cubieTemp[3][5];
			cubieColor[0][8] = cubieTemp[3][8];
			
			cubieColor[5][0] = cubieTemp[5][6];
			cubieColor[5][1] = cubieTemp[5][3];
			cubieColor[5][2] = cubieTemp[5][0];
			cubieColor[5][3] = cubieTemp[5][7];
			cubieColor[5][4] = cubieTemp[5][4];
			cubieColor[5][5] = cubieTemp[5][1];
			cubieColor[5][6] = cubieTemp[5][8];
			cubieColor[5][7] = cubieTemp[5][5];
			cubieColor[5][8] = cubieTemp[5][2];
			break;
		case rCClock:
			cubieColor[3][2] = cubieTemp[0][2];
			cubieColor[3][5] = cubieTemp[0][5];
			cubieColor[3][8] = cubieTemp[0][8];
			
			cubieColor[1][2] = cubieTemp[3][2];
			cubieColor[1][5] = cubieTemp[3][5];
			cubieColor[1][8] = cubieTemp[3][8];
			
			cubieColor[2][0] = cubieTemp[1][8];
			cubieColor[2][3] = cubieTemp[1][5];
			cubieColor[2][6] = cubieTemp[1][2];
			
			cubieColor[0][2] = cubieTemp[2][6];
			cubieColor[0][5] = cubieTemp[2][3];
			cubieColor[0][8] = cubieTemp[2][0];
			
			cubieColor[5][0] = cubieTemp[5][2];
			cubieColor[5][1] = cubieTemp[5][5];
			cubieColor[5][2] = cubieTemp[5][8];
			cubieColor[5][3] = cubieTemp[5][1];
			cubieColor[5][4] = cubieTemp[5][4];
			cubieColor[5][5] = cubieTemp[5][7];
			cubieColor[5][6] = cubieTemp[5][0];
			cubieColor[5][7] = cubieTemp[5][3];
			cubieColor[5][8] = cubieTemp[5][6];
			break;
	}
}

int findEdge(int fEC, int sEC) //firstEdgeColor, secondEdgeColor
{
	int edgeNumber = 0;
	
	if (((cubieColor[0][7] == fEC) && (cubieColor[3][1] == sEC)) ||
		((cubieColor[0][7] == sEC) && (cubieColor[3][1] == fEC)))
	{
		edgeNumber = 1;
	}
	if (((cubieColor[0][3] == fEC) && (cubieColor[4][1] == sEC)) ||
		((cubieColor[0][3] == sEC) && (cubieColor[4][1] == fEC)))
	{
		edgeNumber = 2;
	}
	if (((cubieColor[0][1] == fEC) && (cubieColor[2][1] == sEC)) ||
		((cubieColor[0][1] == sEC) && (cubieColor[2][1] == fEC)))
	{
		edgeNumber = 3;
	}
	if (((cubieColor[0][5] == fEC) && (cubieColor[5][1] == sEC)) ||
		((cubieColor[0][5] == sEC) && (cubieColor[5][1] == fEC)))
	{
		edgeNumber = 4;
	}
	if (((cubieColor[3][3] == fEC) && (cubieColor[4][5] == sEC)) ||
		((cubieColor[3][3] == sEC) && (cubieColor[4][5] == fEC)))
	{
		edgeNumber = 5;
	}
	if (((cubieColor[4][3] == fEC) && (cubieColor[2][5] == sEC)) ||
		((cubieColor[4][3] == sEC) && (cubieColor[2][5] == fEC)))
	{
		edgeNumber = 6;
	}
	if (((cubieColor[5][5] == fEC) && (cubieColor[2][3] == sEC)) ||
		((cubieColor[5][5] == sEC) && (cubieColor[2][3] == fEC)))
	{
		edgeNumber = 7;
	}
	if (((cubieColor[3][5] == fEC) && (cubieColor[5][3] == sEC)) ||
		((cubieColor[3][5] == sEC) && (cubieColor[5][3] == fEC)))
	{
		edgeNumber = 8;
	}
	if (((cubieColor[1][1] == fEC) && (cubieColor[3][7] == sEC)) ||
		((cubieColor[1][1] == sEC) && (cubieColor[3][7] == fEC)))
	{
		edgeNumber = 9;
	}
	if (((cubieColor[1][3] == fEC) && (cubieColor[4][7] == sEC)) ||
		((cubieColor[1][3] == sEC) && (cubieColor[4][7] == fEC)))
	{
		edgeNumber = 10;
	}
	if (((cubieColor[1][7] == fEC) && (cubieColor[2][7] == sEC)) ||
		((cubieColor[1][7] == sEC) && (cubieColor[2][7] == fEC)))
	{
		edgeNumber = 11;
	}
	if (((cubieColor[1][5] == fEC) && (cubieColor[5][7] == sEC)) ||
		((cubieColor[1][5] == sEC) && (cubieColor[5][7] == fEC)))
	{
		edgeNumber = 12;
	}
	
	return edgeNumber;
}

void f2l()
{
	int rotatecounter = 0;
	//http://cubewhiz.com/f2l.php
	//until it finds a match
	//printf("???????????");	
	while ((!((findEdge(cubieColor[front][4],
	cubieColor[right][4]) == 5) || 
	(findEdge(cubieColor[front][4],
	cubieColor[right][4]) == 6) || 
	(findEdge(cubieColor[front][4],
	cubieColor[right][4]) == 7))) &&
	(!(((cubieColor[front][4] == cubieColor[front][8]) &&
	(cubieColor[right][4] == cubieColor[right][6]) &&
	(cubieColor[bottom][4] == cubieColor[bottom][2])) &&
	edgeCorrect(8))))
	{
		rotatecounter++;
		
		//Corners Correct, Edges Not Placed
		if ((cubieColor[front][4] == cubieColor[front][8]) &&
		(cubieColor[right][4] == cubieColor[right][6]) &&
		(cubieColor[bottom][4] == cubieColor[bottom][2]))
		{
			//#01
			if ((cubieColor[front][4] == cubieColor[right][3]) &&
			(cubieColor[right][4] == cubieColor[front][5]))
			{
				//(R U' R') Dw (R' U2) (R U2') (R' U R)
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				break;
			}
			//#02
			else if ((cubieColor[front][4] == cubieColor[front][1]) &&
			(cubieColor[right][4] == cubieColor[top][7]))
			{
				//[U] (R U' R') Dw' (L' U L)
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(lCClock);
				turnCube(uClock);
				turnCube(lClock);
				break;
			}
			//#03
			else if ((cubieColor[front][4] == cubieColor[top][5]) &&
			(cubieColor[right][4] == cubieColor[right][1]))
			{
				//[Dw'] (L' U L Dw) (R U' R')
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(lCClock);
				turnCube(uClock);
				turnCube(lClock);
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
		}
		//Edge Correct, Corner Slot Free
		else if ((cubieColor[front][4] == cubieColor[front][5]) &&
		(cubieColor[right][4] == cubieColor[right][3]))
		{
			//#04
			if ((cubieColor[front][4] == cubieColor[right][0]) &&
			(cubieColor[right][4] == cubieColor[front][2]) &&
			(cubieColor[bottom][4] == cubieColor[top][6]))
			{
				//((R U R' U') (R U R' U') (R U R')
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
			//#05
			else if ((cubieColor[front][4] == cubieColor[front][2]) &&
			(cubieColor[right][4] == cubieColor[top][6]) &&
			(cubieColor[bottom][4] == cubieColor[right][0]))
			{
				//[Dw] (R' U) (R U2) (R' U R)
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				break;
			}
			//#06
			else if ((cubieColor[front][4] == cubieColor[top][6]) &&
			(cubieColor[right][4] == cubieColor[right][0]) &&
			(cubieColor[bottom][4] == cubieColor[left][2]))
			{
				//[U'] (R U') (R' U2) (R U' R')
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
		}
		//Corner In First Layer Twisted Clockwise
		else if ((cubieColor[front][4] == cubieColor[right][6]) &&
		(cubieColor[right][4] == cubieColor[bottom][2]) &&
		(cubieColor[bottom][4] == cubieColor[front][8]))
		{
			//#07
			if ((cubieColor[front][4] == cubieColor[front][5]) &&
			(cubieColor[right][4] == cubieColor[right][3]))
			{
				//(R'2 U2) (R' U' R U') (R' U2 R')
				turnCube(rCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;				
			}
			//#08
			else if ((cubieColor[front][4] == cubieColor[right][3]) &&
			(cubieColor[right][4] == cubieColor[front][5]))
			{
				//(R U' R U) y (R U') (R' F2)
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				rotateCubeHorizontal();
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(fClock);
				turnCube(fClock);
				break;
			}
			//#09
			else if ((cubieColor[front][4] == cubieColor[front][1]) &&
			(cubieColor[right][4] == cubieColor[top][7]))
			{
				//[U2] (R U' R') y (L' U' L)
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				turnCube(lCClock);
				turnCube(uCClock);
				turnCube(lClock);
				break;
			}
			//#10
			else if ((cubieColor[front][4] == cubieColor[top][5]) &&
			(cubieColor[right][4] == cubieColor[right][1]))
			{
				//(R U') (R' U) (R U' R')
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
		}
		//Corner In First Layer Twisted Counter-Clockwise
		else if ((cubieColor[front][4] == cubieColor[bottom][2]) &&
		(cubieColor[right][4] == cubieColor[front][8]) &&
		(cubieColor[bottom][4] == cubieColor[right][6]))
		{
			//#11
			if ((cubieColor[front][4] == cubieColor[front][5]) &&
			(cubieColor[right][4] == cubieColor[right][3]))
			{
				//(R U'2) (R U R' U) (R U'2 R'2)
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(rCClock);
				break;
			}
			//#12
			else if ((cubieColor[front][4] == cubieColor[right][3]) &&
			(cubieColor[right][4] == cubieColor[front][5]))
			{
				//(R U' R') (F' L' U2) (L F)
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(fCClock);
				turnCube(lCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(lClock);
				turnCube(fClock);
				break;
			}
			//#13
			else if ((cubieColor[front][4] == cubieColor[front][1]) &&
			(cubieColor[right][4] == cubieColor[top][7]))
			{
				//(R U2 R') y' (R' U2 R)
				turnCube(rClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				break;
			}
			//#14
			else if ((cubieColor[front][4] == cubieColor[top][5]) &&
			(cubieColor[right][4] == cubieColor[right][1]))
			{
				//(R U R' U') (R U R')
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
		}
		//Corner In U-Layer With Cross-Color on U-Face
		else if ((cubieColor[front][4] == cubieColor[right][0]) &&
		(cubieColor[right][4] == cubieColor[front][2]) &&
		(cubieColor[bottom][4] == cubieColor[top][8]))
		{
			//#15
			if ((cubieColor[front][4] == cubieColor[right][3]) &&
			(cubieColor[right][4] == cubieColor[front][5]))
			{
				//(R U' R' Dw) (R' U R)
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				break;
			}
			//#16
			else if ((cubieColor[front][4] == cubieColor[front][1]) &&
			(cubieColor[right][4] == cubieColor[top][7]))
			{
				//y' (R' U2 R U) (R' U' R)
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				break;
			}
			//#17
			else if ((cubieColor[front][4] == cubieColor[top][7]) &&
			(cubieColor[right][4] == cubieColor[front][1]))
			{
				// [U2] (R2 U'2) (R' U' R U' R'2)
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(rCClock);
				break;
			}
			//#18
			else if ((cubieColor[front][4] == cubieColor[left][1]) &&
			(cubieColor[right][4] == cubieColor[top][3]))
			{
				//[Dw'] (L' U2 L U') (L' U L)
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(lCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(lClock);
				turnCube(uCClock);
				turnCube(lCClock);
				turnCube(uClock);
				turnCube(lClock);
				break;
			}
			//#19
			else if ((cubieColor[front][4] == cubieColor[top][3]) &&
			(cubieColor[right][4] == cubieColor[left][1]))
			{
				//[U2] (R U R' U) (R U' R')
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
			//#20
			else if ((cubieColor[front][4] == cubieColor[top][5]) &&
			(cubieColor[right][4] == cubieColor[right][1]))
			{
				//(R U2 R' U') (R U R')
				turnCube(rClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
			//#21
			else if ((cubieColor[front][4] == cubieColor[right][1]) &&
			(cubieColor[right][4] == cubieColor[top][5]))
			{
				//y' [U2] (R2' U2) (R U R' U R2)
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(rClock);
				break;
			}
			//#22
			else if ((cubieColor[front][4] == cubieColor[top][1]) &&
			(cubieColor[right][4] == cubieColor[back][1]))
			{
				//[U] (R U'2 R' U) (R U' R')
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
			//#23
			else if ((cubieColor[front][4] == cubieColor[back][1]) &&
			(cubieColor[right][4] == cubieColor[top][1]))
			{
				//(F' L' U2) (L F)
				turnCube(fCClock);
				turnCube(lCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(lClock);
				turnCube(fClock);
				break;
			}
		}
		//Corner In U-Layer With Cross-Color on R-Face
		else if ((cubieColor[front][4] == cubieColor[front][2]) &&
		(cubieColor[right][4] == cubieColor[top][8]) &&
		(cubieColor[bottom][4] == cubieColor[right][0]))
		{
			//#24
			if ((cubieColor[front][4] == cubieColor[right][3]) &&
			(cubieColor[right][4] == cubieColor[front][5]))
			{
				//[Dw] (R' U' R Dw') (R U R')
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
			//#25
			else if ((cubieColor[front][4] == cubieColor[front][1]) &&
			(cubieColor[right][4] == cubieColor[top][7]))
			{
				// [Dw'] (L' U L)
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(lCClock);
				turnCube(uClock);
				turnCube(lClock);
				break;
			}
			//#26
			else if ((cubieColor[front][4] == cubieColor[top][7]) &&
			(cubieColor[right][4] == cubieColor[front][1]))
			{
				// [Dw] (R' U2 R Dw') (R U R')
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
			//#27
			else if ((cubieColor[front][4] == cubieColor[left][1]) &&
			(cubieColor[right][4] == cubieColor[top][3]))
			{
				//[Dw] (R' U' R U'2) (R' U R)
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				break;
			}
			//#28
			else if ((cubieColor[front][4] == cubieColor[top][3]) &&
			(cubieColor[right][4] == cubieColor[left][1]))
			{
				//[Dw] (R' U R Dw') (R U R')
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				rotateCubeHorizontal();
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
			//#29
			else if ((cubieColor[front][4] == cubieColor[top][5]) &&
			(cubieColor[right][4] == cubieColor[right][1]))
			{
				//[U'] (R U' R' U) (R U R')
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
			//#30
			else if ((cubieColor[front][4] == cubieColor[right][1]) &&
			(cubieColor[right][4] == cubieColor[top][5]))
			{
				// (R U') (R' U2) y' (R' U' R)
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				break;
			}
			//#31
			else if ((cubieColor[front][4] == cubieColor[top][1]) &&
			(cubieColor[right][4] == cubieColor[back][1]))
			{
				//(R U R')
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				break;
			}
			//#32
			else if ((cubieColor[front][4] == cubieColor[back][1]) &&
			(cubieColor[right][4] == cubieColor[top][1]))
			{
				// [Dw] (R' U2 R U2') (R' U R)
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				break;
			}
		}
		//Corner In U-Layer With Cross-Color on F-Face
		else if ((cubieColor[front][4] == cubieColor[top][8]) &&
		(cubieColor[right][4] == cubieColor[right][0]) &&
		(cubieColor[bottom][4] == cubieColor[front][2]))
		{
			//#33
			if ((cubieColor[front][4] == cubieColor[right][3]) &&
			(cubieColor[right][4] == cubieColor[front][5]))
			{
				//[U'] (R U R' Dw) (R' U' R)
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				break;
			}
			//#34
			else if ((cubieColor[front][4] == cubieColor[front][1]) &&
			(cubieColor[right][4] == cubieColor[top][7]))
			{
				// [Dw] (R' U R U') (R' U' R)
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				break;
			}
			//#35
			else if ((cubieColor[front][4] == cubieColor[top][7]) &&
			(cubieColor[right][4] == cubieColor[front][1]))
			{
				// (Lw U L F') (L' U' Lw')
				rotateCubeVertical();
				rotateCubeVertical();
				rotateCubeVertical();
				turnCube(rClock);
				turnCube(uClock);
				turnCube(lClock);
				turnCube(fCClock);
				turnCube(lCClock);
				turnCube(uCClock);
				rotateCubeVertical();
				turnCube(rCClock);
				break;
			}
			//#36
			else if ((cubieColor[front][4] == cubieColor[left][1]) &&
			(cubieColor[right][4] == cubieColor[top][3]))
			{
				// y' (R' U' R)
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				break;
			}
			//#37
			else if ((cubieColor[front][4] == cubieColor[top][3]) &&
			(cubieColor[right][4] == cubieColor[left][1]))
			{
				// [U'] (R U'2 R' U2) (R U' R')
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
			//#38
			else if ((cubieColor[front][4] == cubieColor[top][5]) &&
			(cubieColor[right][4] == cubieColor[right][1]))
			{
				//[U] (R U' R')
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
			//#39
			else if ((cubieColor[front][4] == cubieColor[right][1]) &&
			(cubieColor[right][4] == cubieColor[top][5]))
			{
				// [U'] (R U2' R' Dw) (R' U' R)
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(uCClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				break;
			}
			//#40
			else if ((cubieColor[front][4] == cubieColor[top][1]) &&
			(cubieColor[right][4] == cubieColor[back][1]))
			{
				//[U'] (R U R' U2) (R U' R')
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uClock);
				turnCube(uClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				break;
			}
			//#41
			else if ((cubieColor[front][4] == cubieColor[back][1]) &&
			(cubieColor[right][4] == cubieColor[top][1]))
			{
				// [U'] (R U' R' Dw) (R' U' R)
				turnCube(uCClock);
				turnCube(rClock);
				turnCube(uCClock);
				turnCube(rCClock);
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				turnCube(uClock);
				turnCube(rCClock);
				turnCube(uCClock);
				turnCube(rClock);
				break;
			}
		}
		else
		{
			if (rotatecounter == 4)
			{
				rotatecounter = 0;
				break;
			}			
		}
		//for checking all 	four poritions
		turnCube(uClock);
	}
}
	
void solveStage4()
{
	//http://cubewhiz.com/oll.php
	//until it finds a match	
	while (!((cubieColor[top][4] == cubieColor[top][0]) &&
	(cubieColor[top][4] == cubieColor[top][1]) &&
	(cubieColor[top][4] == cubieColor[top][2]) &&
	(cubieColor[top][4] == cubieColor[top][3]) &&
	(cubieColor[top][4] == cubieColor[top][4]) &&
	(cubieColor[top][4] == cubieColor[top][5]) &&
	(cubieColor[top][4] == cubieColor[top][6]) &&
	(cubieColor[top][4] == cubieColor[top][7]) &&
	(cubieColor[top][4] == cubieColor[top][8])))
	{
		//Corners Correct, Edges Flipped
		//#28
		if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(rCClock);
			turnCube(uClock);
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(uClock);
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(rCClock);
			turnCube(uClock);
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
			turnCube(rClock);
		}
		//#57
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(lCClock);
		}
		//#20
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(lClock);
			turnCube(rCClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
		}
		//All Edges Flipped Correctly
		//#23
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
			turnCube(rCClock);
			turnCube(rCClock);
			turnCube(dClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(dCClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rCClock);
		}
		//#24
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
			rotateCubeVertical();
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(lClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
			turnCube(fClock);
		}
		//#25
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(bCClock);
			turnCube(rCClock);
			turnCube(fCClock);
			turnCube(rClock);
			turnCube(bClock);
		}
		//#27
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rCClock);
		}
		//#26
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
		}
		//#22
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(rClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(uCClock);
			turnCube(rClock);
		}
		//#21
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
		}
		//No Edges Flipped Correctly
		//#3
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			turnCube(bClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			turnCube(bCClock);
			turnCube(uCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(fCClock);
		}
		//#4
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			turnCube(bClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			turnCube(bCClock);
			turnCube(uClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(fCClock);
		}
		//#17
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(fCClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(fCClock);
		}
		//#19
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeVertical();
			turnCube(lClock);
			rotateCubeVertical();
			turnCube(rCClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
		}
		//#18
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(fClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uClock);
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(fCClock);
		}
		//#2
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
			turnCube(fClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			turnCube(fCClock);
			turnCube(bClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			turnCube(bCClock);
		}
		//#1
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(fCClock);
			turnCube(uCClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(fCClock);
		}
		//"T" shapes
		//#33
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(fCClock);
		}
		//#45
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(fClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(fCClock);
		}
		//"P" Shapes
		//#44
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			turnCube(bClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uCClock);
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			turnCube(bCClock);
		}
		//#43
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			turnCube(bCClock);
			turnCube(lCClock);
			turnCube(uCClock);
			turnCube(lClock);
			turnCube(uClock);
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeVertical();
			rotateCubeHorizontal();			
			turnCube(bClock);
		}
		//#32
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(rClock);
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			turnCube(uClock);
			turnCube(lCClock);
			rotateCubeHorizontal();
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(uClock);
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(rClock);
			turnCube(uClock);
			rotateCubeVertical();
			turnCube(rCClock);
		}
		//#31
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(fClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(fCClock);
			turnCube(rClock);
		}
		//"W" Shapes
		//#38
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			turnCube(rClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(fClock);
			turnCube(rClock);
			turnCube(fCClock);
		}
		//#36
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
			turnCube(lCClock);
			turnCube(uCClock);
			turnCube(lClock);
			turnCube(uCClock);
			turnCube(lCClock);
			turnCube(uClock);
			turnCube(lClock);
			turnCube(uClock);
			turnCube(lClock);
			turnCube(fCClock);
			turnCube(lCClock);
			turnCube(fClock);
		}
		//"L" Shapes
		//#54
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(uClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(uCClock);
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
		}
		//#53
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
			rotateCubeVertical();
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lCClock);
			turnCube(uCClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(rClock);
			turnCube(uCClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(uClock);
			rotateCubeVertical();
			turnCube(lClock);
		}
		//#50
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
			turnCube(rClock);
			turnCube(bCClock);
			turnCube(rClock);
			turnCube(bClock);
			turnCube(rCClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(uClock);
			turnCube(fClock);
			turnCube(rCClock);
			turnCube(fCClock);
			turnCube(fCClock);
			turnCube(rClock);
		}
		//#49
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    turnCube(rCClock);
            turnCube(fClock);
            turnCube(rCClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            rotateCubeHorizontal();
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(fCClock);
            
		}
		//#48
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    turnCube(fClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(fCClock);
            
		}
		//#47
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    turnCube(fCClock);
            turnCube(lCClock);
            turnCube(uCClock);
            turnCube(lClock);
            turnCube(uClock);
            turnCube(lCClock);
            turnCube(uCClock);
            turnCube(lClock);
            turnCube(uClock);
            turnCube(fClock);
		}
		//Big Lightning Bolts
		//#39
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    turnCube(lClock);
            turnCube(fCClock);
            turnCube(lCClock);
            turnCube(uCClock);
            turnCube(lClock);
            turnCube(uClock);
            turnCube(fClock);
            turnCube(uCClock);
            turnCube(lCClock);
		}
		//#40
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(fCClock);
            turnCube(uClock);
            turnCube(rClock);
		}
		//"C" Shapes
		#34
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(fCClock);
		}
		//#46
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(fCClock);
            turnCube(uClock);
            turnCube(rClock);
		}
		//Squares
		//#5
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            rotateCubeVertical();
            turnCube(lClock);
		}
		//#6
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    rotateCubeVertical();
            turnCube(lClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uCClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
		}
		//Small Lightning Bolts
		//#7
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    rotateCubeVertical();
            turnCube(lClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
		}
		//#12
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(rCClock);
		}
		//#8
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(uClock);
            rotateCubeVertical();
            turnCube(lClock);
		}
		//#11
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(rCClock);
		}
		//Fish Shapes
		//#37
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    turnCube(fClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fCClock);
		}
		//#35
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
		}
		//#10
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
		}
		//#9
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(fCClock);
		}
		//"I" Shapes
		//#51
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            turnCube(bClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(bCClock);
		}
		//#52
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fCClock);
		}
		//#56
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            turnCube(bClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(bCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(fCClock);
		}
		//#55
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[top][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(fCClock);
		}
		//"Knight Moe" Shapes
		//#13
		else if ((cubieColor[top][4] == cubieColor[back][2]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[top][6]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    rotateCubeVertical();
            turnCube(lClock);
            turnCube(uCClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            turnCube(uCClock);
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
		}
		//#16
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    rotateCubeVertical();
            turnCube(lClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(uCClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
		}
		//#14
		else if ((cubieColor[top][4] == cubieColor[left][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[back][0]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[top][8]))
		{
		    turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fCClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
		}
		//#15
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[right][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[front][1]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    rotateCubeVertical();
            turnCube(rCClock);
            turnCube(uCClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(rClock);
            turnCube(lCClock);
            turnCube(uCClock);
            turnCube(lClock);
            turnCube(uClock);
            rotateCubeVertical();
            turnCube(rCClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(rClock);
		}
		//The "Awkward" Shapes
		//#41
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            rotateCubeHorizontal();
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(fCClock);
		}
		//#30
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[left][1]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[top][5]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    turnCube(rCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(bCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(rCClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(rClock);
            turnCube(uClock);
            rotateCubeVertical();
            turnCube(rCClock);
		}
		//#42
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[front][0]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[front][2]))
		{
		    turnCube(lCClock);
            turnCube(uClock);
            turnCube(lClock);
            turnCube(uCClock);
            turnCube(uCClock);
            turnCube(lCClock);
            turnCube(uCClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(lCClock);
            turnCube(uClock);
            turnCube(lClock);
            turnCube(uClock);
            turnCube(fClock);
		}
		//#29
		else if ((cubieColor[top][4] == cubieColor[top][0]) &&
		(cubieColor[top][4] == cubieColor[back][1]) &&
		(cubieColor[top][4] == cubieColor[top][2]) &&
		(cubieColor[top][4] == cubieColor[top][3]) &&
		(cubieColor[top][4] == cubieColor[top][4]) &&
		(cubieColor[top][4] == cubieColor[right][1]) &&
		(cubieColor[top][4] == cubieColor[left][2]) &&
		(cubieColor[top][4] == cubieColor[top][7]) &&
		(cubieColor[top][4] == cubieColor[right][0]))
		{
		    turnCube(lClock);
            turnCube(lClock);
            turnCube(uCClock);
            turnCube(lClock);
            turnCube(bClock);
            turnCube(lCClock);
            turnCube(uClock);
            turnCube(lClock);
            turnCube(lClock);
            turnCube(uCClock);
            rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lCClock);
            turnCube(uCClock);
            rotateCubeVertical();
            turnCube(lClock);
		}
		//for checking all four poritions
		rotateCubeHorizontal();
	}
}

void solveStage5()
{
	int rotatecounter = 0;
	//http://cubewhiz.com/pll.php
	//until it matches
	while (!((cubieColor[front][4] == cubieColor[front][0]) &&
	(cubieColor[front][4] == cubieColor[front][1]) &&
	(cubieColor[front][4] == cubieColor[front][2]) &&
	(cubieColor[left][4] == cubieColor[left][0]) &&
	(cubieColor[left][4] == cubieColor[left][1]) &&
	(cubieColor[left][4] == cubieColor[left][2]) &&
	(cubieColor[back][4] == cubieColor[back][0]) &&
	(cubieColor[back][4] == cubieColor[back][1]) &&
	(cubieColor[back][4] == cubieColor[back][2]) &&
	(cubieColor[right][4] == cubieColor[right][0]) &&
	(cubieColor[right][4] == cubieColor[right][1]) &&
	(cubieColor[right][4] == cubieColor[right][2])))
	{
		//Corners Only
		//Aa
		if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 4)) &&
		(edgeCorrect(1) && edgeCorrect(2) &&
		edgeCorrect(3) && edgeCorrect(4)))
		{
			rotateCubeVertical();
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(dClock);
            turnCube(dClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(dClock);
            turnCube(dClock);
            turnCube(rClock);
            turnCube(rClock);
		}
		//Ab
		else if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 4)) &&
		(edgeCorrect(1) && edgeCorrect(2) &&
		edgeCorrect(3) && edgeCorrect(4)))
		{
			rotateCubeVertical();
            turnCube(rClock);
            turnCube(rClock);
            turnCube(dClock);
            turnCube(dClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(dClock);
            turnCube(dClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(uCClock);
            turnCube(lClock);
            turnCube(dClock);
            turnCube(dClock);
            turnCube(lCClock);
            turnCube(uClock);
            turnCube(lClock);
            turnCube(dClock);
            turnCube(dClock);
            turnCube(lClock);
            turnCube(lClock);
		}
		//E
		else if (((findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[front][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 4)) &&
		(edgeCorrect(1) && edgeCorrect(2) &&
		edgeCorrect(3) && edgeCorrect(4)))
		{
			rotateCubeVertical();
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(dClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(dCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(dClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(dCClock);
		}
		//Edges Only
		//Ua
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		cornerCorrect(3) &&
		cornerCorrect(4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 2) &&
		edgeCorrect(3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 4)))
		{
			turnCube(rClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rClock);
		}
		//Ub
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		cornerCorrect(3) &&
		cornerCorrect(4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 2) &&
		edgeCorrect(3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 4)))
		{
			turnCube(rClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(rClock);
		}
		//H
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		cornerCorrect(3) &&
		cornerCorrect(4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 4)))
		{
			rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(lClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(lClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(lClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uClock);
            rotateCubeVertical();
            rotateCubeVertical();
            turnCube(lClock);
            turnCube(lClock);
            turnCube(rClock);
            turnCube(rClock);
		}
		//Z
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		cornerCorrect(3) &&
		cornerCorrect(4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 4)))
		{
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(lClock);
			turnCube(rClock);
			turnCube(rClock);
			turnCube(uClock);
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(lClock);
			turnCube(rClock);
			turnCube(rClock);
			turnCube(uClock);
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(rCClock);
			turnCube(uClock);
			turnCube(uClock);
			rotateCubeVertical();
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(lClock);
			turnCube(rClock);
			turnCube(rClock);
			turnCube(uClock);
			turnCube(uClock);
			rotateCubeVertical();
			turnCube(lClock);
			turnCube(rCClock);
		}
		//Swapping Two Adjacent Corners & Two Edges
		//Ja
		else if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 3) &&
		cornerCorrect(4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		edgeCorrect(4)))
		{
			turnCube(rCClock);
            turnCube(uClock);
            turnCube(lCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(lClock);
            turnCube(rClock);
            turnCube(uCClock);
		}
		//Jb
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 1) &&
		edgeCorrect(2) && edgeCorrect(3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 4)))
		{
			turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
		}
		//T
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 2) &&
		edgeCorrect(3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 4)))
		{
			turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fCClock);
		}
		//Rb
		else if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 3)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 1) &&
		edgeCorrect(2) && edgeCorrect(3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 4)))
		{
			turnCube(rCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uCClock);
		}
		//Ra
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		edgeCorrect(4)))
		{
			turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
		}
		//F
		else if ((cornerCorrect(1) &&
		cornerCorrect(2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 1) &&
		edgeCorrect(2) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 3) && 
		edgeCorrect(4)))
		{
			turnCube(rCClock);
            turnCube(uCClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
		}
		//Cycling Three Corners & Three Edges
		//Ga
		else if (((findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[left][4]) == 1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[front][4]) == 3) &&
		cornerCorrect(4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 4)))
		{
			turnCube(rCClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            turnCube(dClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(dCClock);
            turnCube(rCClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
		}
		//Gb
		else if (((findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[left][4]) == 2) &&
		cornerCorrect(3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 3) && 
		edgeCorrect(4)))
		{
			turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            turnCube(rCClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            turnCube(dClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(dCClock);
            turnCube(rCClock);
            turnCube(rCClock);
		}
		//Gc
		else if (((findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[right][4]) == 1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[front][4], cubieColor[left][4]) == 2) &&
		cornerCorrect(3) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[right][4]) == 2) &&
		edgeCorrect(3) && 
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 4)))
		{
			turnCube(rCClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(dCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            turnCube(dClock);
            turnCube(rClock);
            turnCube(rClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            turnCube(bClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(bCClock);
		}
		//Gd
		else if (((findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[left][4]) == 1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[front][4]) == 3) &&
		cornerCorrect(4)) &&
		((findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[front][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		edgeCorrect(4)))
		{
			turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(rCClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            turnCube(dCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            turnCube(dClock);
            turnCube(rClock);
            turnCube(rClock);
		}
		//Permutations Of Two Diagonal Corners & Two Edges
		//V
		else if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 3) &&
		cornerCorrect(4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		edgeCorrect(4)))
		{
			turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            rotateCubeHorizontal();
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(fClock);
		}
		//Na
		else if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 3) &&
		cornerCorrect(4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		edgeCorrect(4)))
		{
			rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            turnCube(dClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(dCClock);
            turnCube(rClock);
            turnCube(dClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rClock);
            turnCube(rClock);
            turnCube(dCClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rClock);
		}
		//Nb
		else if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 3) &&
		cornerCorrect(4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		edgeCorrect(4)))
		{
			rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeHorizontal();
            rotateCubeVertical();
            rotateCubeHorizontal();
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(dCClock);
            turnCube(rCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(dClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(dCClock);
            turnCube(rCClock);
            turnCube(rCClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(dClock);
            turnCube(rCClock);
		}
		//Y
		else if ((cornerCorrect(1) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[back][4], cubieColor[right][4]) == 2) &&
		(findCorner(cubieColor[top][4], 
		cubieColor[left][4], cubieColor[back][4]) == 3) &&
		cornerCorrect(4)) &&
		(edgeCorrect(1) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[back][4]) == 2) &&
		(findEdge(cubieColor[top][4], 
		cubieColor[left][4]) == 3) && 
		edgeCorrect(4)))
		{
			turnCube(fClock);
            turnCube(rClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(fCClock);
            turnCube(rClock);
            turnCube(uClock);
            turnCube(rCClock);
            turnCube(uCClock);
            turnCube(rCClock);
            turnCube(fClock);
            turnCube(rClock);
            turnCube(fCClock);
		}
		//for checking all four poritions
		
		if (rotatecounter == 3)
		{
			rotatecounter = 0;
			turnCube(uClock);
			//printcube(cubieColor);
		}
		else
		{
			rotateCubeHorizontal();
			//printcube(cubieColor);
			rotatecounter++;
		}
	}
}

void solveStage1(int edgeNumber)
{
	switch(edgeNumber)
	{
		case 1:
			turnCube(fClock);
			turnCube(fClock);
			turnCube(dClock);
			turnCube(rClock);
			turnCube(rClock);
			break;
		case 2:
			turnCube(lClock);
			turnCube(lClock);
			turnCube(dClock);
			turnCube(dClock);
			turnCube(rClock);
			turnCube(rClock);
			break;
		case 3:
			turnCube(bClock);
			turnCube(bClock);
			turnCube(dCClock);
			turnCube(rClock);
			turnCube(rClock);
			break;
		case 4:
			break;
		case 5:
			turnCube(fCClock);
			turnCube(dClock);
			turnCube(rClock);
			turnCube(rClock);
			if (cubieColor[0][7] != W)
			{
				turnCube(fClock);
			}
			break;
		case 6:
			turnCube(lCClock);
			turnCube(dClock);
			turnCube(dClock);
			turnCube(rClock);
			turnCube(rClock);
			if (cubieColor[0][3] != W)
			{
				turnCube(lClock);
			}	
			break;
		case 7:
			turnCube(rCClock);
			break;
		case 8:
			turnCube(rClock);
			break;
		case 9:
			turnCube(dClock);
			turnCube(rClock);
			turnCube(rClock);
			break;
		case 10:
			turnCube(dClock);
			turnCube(dClock);
			turnCube(rClock);
			turnCube(rClock);
			break;
		case 11:
			turnCube(dCClock);
			turnCube(rClock);
			turnCube(rClock);
			break;
		case 12:
			turnCube(rClock);
			turnCube(rClock);
			break;
	}
	
	if (cubieColor[0][5] != W)
	{
		turnCube(rCClock);
		turnCube(uClock);
		turnCube(fCClock);
		turnCube(uCClock);
	}	
}

void rotateCubeHorizontal() //rotate F -> R, R -> B ...
{
	printf(" H ");
	moveCounter++;
	//writeMove(hRotate, 0);
	
	moves = (int *) realloc(moves, moveCounter*sizeof(int));		
	moves[moveCounter-1] = hRotate;		
			
	if (moves == 0)		
	{		
	printf("ERROR: Out of memory\n");		
	}
	
	int cubieTemp[6][9];
	int i,j;
	
	for (i = 0; i < 6; i++)
	{
		for (j = 0; j < 9; j++)
		{
			cubieTemp[i][j] = cubieColor[i][j];
		}
	}
	
	cubieColor[0][0] = cubieTemp[0][6];
	cubieColor[0][1] = cubieTemp[0][3];
	cubieColor[0][2] = cubieTemp[0][0];
	cubieColor[0][3] = cubieTemp[0][7];
	cubieColor[0][4] = cubieTemp[0][4];
	cubieColor[0][5] = cubieTemp[0][1];
	cubieColor[0][6] = cubieTemp[0][8];
	cubieColor[0][7] = cubieTemp[0][5];
	cubieColor[0][8] = cubieTemp[0][2];
	
	cubieColor[1][0] = cubieTemp[1][2];
	cubieColor[1][1] = cubieTemp[1][5];
	cubieColor[1][2] = cubieTemp[1][8];
	cubieColor[1][3] = cubieTemp[1][1];
	cubieColor[1][4] = cubieTemp[1][4];
	cubieColor[1][5] = cubieTemp[1][7];
	cubieColor[1][6] = cubieTemp[1][0];
	cubieColor[1][7] = cubieTemp[1][3];
	cubieColor[1][8] = cubieTemp[1][6];
	
	cubieColor[2][0] = cubieTemp[4][0];
	cubieColor[2][1] = cubieTemp[4][1];
	cubieColor[2][2] = cubieTemp[4][2];
	cubieColor[2][3] = cubieTemp[4][3];
	cubieColor[2][4] = cubieTemp[4][4];
	cubieColor[2][5] = cubieTemp[4][5];
	cubieColor[2][6] = cubieTemp[4][6];
	cubieColor[2][7] = cubieTemp[4][7];
	cubieColor[2][8] = cubieTemp[4][8];
	
	cubieColor[3][0] = cubieTemp[5][0];
	cubieColor[3][1] = cubieTemp[5][1];
	cubieColor[3][2] = cubieTemp[5][2];
	cubieColor[3][3] = cubieTemp[5][3];
	cubieColor[3][4] = cubieTemp[5][4];
	cubieColor[3][5] = cubieTemp[5][5];
	cubieColor[3][6] = cubieTemp[5][6];
	cubieColor[3][7] = cubieTemp[5][7];
	cubieColor[3][8] = cubieTemp[5][8];
	
	cubieColor[4][0] = cubieTemp[3][0];
	cubieColor[4][1] = cubieTemp[3][1];
	cubieColor[4][2] = cubieTemp[3][2];
	cubieColor[4][3] = cubieTemp[3][3];
	cubieColor[4][4] = cubieTemp[3][4];
	cubieColor[4][5] = cubieTemp[3][5];
	cubieColor[4][6] = cubieTemp[3][6];
	cubieColor[4][7] = cubieTemp[3][7];
	cubieColor[4][8] = cubieTemp[3][8];
	
	cubieColor[5][0] = cubieTemp[2][0];
	cubieColor[5][1] = cubieTemp[2][1];
	cubieColor[5][2] = cubieTemp[2][2];
	cubieColor[5][3] = cubieTemp[2][3];
	cubieColor[5][4] = cubieTemp[2][4];
	cubieColor[5][5] = cubieTemp[2][5];
	cubieColor[5][6] = cubieTemp[2][6];
	cubieColor[5][7] = cubieTemp[2][7];
	cubieColor[5][8] = cubieTemp[2][8];
}

void rotateCubeVertical() //rotate F -> D, D -> B ...
{
	printf(" V ");
	moveCounter++;
	//writeMove(vRotate, 0);
	
	moves = (int *) realloc(moves, moveCounter*sizeof(int));		
	moves[moveCounter-1] = vRotate;		
			
	if (moves == 0)		
	{		
	printf("ERROR: Out of memory\n");		
	}
	
	int cubieTemp[6][9];
	int i,j;
	
	for (i = 0; i < 6; i++)
	{
		for (j = 0; j < 9; j++)
		{
			cubieTemp[i][j] = cubieColor[i][j];
		}
	}
	
	cubieColor[0][0] = cubieTemp[3][0];
	cubieColor[0][1] = cubieTemp[3][1];
	cubieColor[0][2] = cubieTemp[3][2];
	cubieColor[0][3] = cubieTemp[3][3];
	cubieColor[0][4] = cubieTemp[3][4];
	cubieColor[0][5] = cubieTemp[3][5];
	cubieColor[0][6] = cubieTemp[3][6];
	cubieColor[0][7] = cubieTemp[3][7];
	cubieColor[0][8] = cubieTemp[3][8];
	
	cubieColor[1][0] = cubieTemp[2][8];
	cubieColor[1][1] = cubieTemp[2][7];
	cubieColor[1][2] = cubieTemp[2][6];
	cubieColor[1][3] = cubieTemp[2][5];
	cubieColor[1][4] = cubieTemp[2][4];
	cubieColor[1][5] = cubieTemp[2][3];
	cubieColor[1][6] = cubieTemp[2][2];
	cubieColor[1][7] = cubieTemp[2][1];
	cubieColor[1][8] = cubieTemp[2][0];
	
	cubieColor[2][0] = cubieTemp[0][8];
	cubieColor[2][1] = cubieTemp[0][7];
	cubieColor[2][2] = cubieTemp[0][6];
	cubieColor[2][3] = cubieTemp[0][5];
	cubieColor[2][4] = cubieTemp[0][4];
	cubieColor[2][5] = cubieTemp[0][3];
	cubieColor[2][6] = cubieTemp[0][2];
	cubieColor[2][7] = cubieTemp[0][1];
	cubieColor[2][8] = cubieTemp[0][0];
	
	cubieColor[3][0] = cubieTemp[1][0];
	cubieColor[3][1] = cubieTemp[1][1];
	cubieColor[3][2] = cubieTemp[1][2];
	cubieColor[3][3] = cubieTemp[1][3];
	cubieColor[3][4] = cubieTemp[1][4];
	cubieColor[3][5] = cubieTemp[1][5];
	cubieColor[3][6] = cubieTemp[1][6];
	cubieColor[3][7] = cubieTemp[1][7];
	cubieColor[3][8] = cubieTemp[1][8];
	
	cubieColor[4][0] = cubieTemp[4][2];
	cubieColor[4][1] = cubieTemp[4][5];
	cubieColor[4][2] = cubieTemp[4][8];
	cubieColor[4][3] = cubieTemp[4][1];
	cubieColor[4][4] = cubieTemp[4][4];
	cubieColor[4][5] = cubieTemp[4][7];
	cubieColor[4][6] = cubieTemp[4][0];
	cubieColor[4][7] = cubieTemp[4][3];
	cubieColor[4][8] = cubieTemp[4][6];
	
	cubieColor[5][0] = cubieTemp[5][6];
	cubieColor[5][1] = cubieTemp[5][3];
	cubieColor[5][2] = cubieTemp[5][0];
	cubieColor[5][3] = cubieTemp[5][7];
	cubieColor[5][4] = cubieTemp[5][4];
	cubieColor[5][5] = cubieTemp[5][1];
	cubieColor[5][6] = cubieTemp[5][8];
	cubieColor[5][7] = cubieTemp[5][5];
	cubieColor[5][8] = cubieTemp[5][2];
}

int findCorner(int fCC, int sCC, int tCC) //firstCornerColor, secondCornerColor, thirdCornerColor
{
	int cornerNumber = 0;
	
	if (((cubieColor[0][6] == fCC) || (cubieColor[0][6] == sCC) || (cubieColor[0][6] == tCC)) &&
		((cubieColor[4][2] == fCC) || (cubieColor[4][2] == sCC) || (cubieColor[4][2] == tCC)) &&
		((cubieColor[3][0] == fCC) || (cubieColor[3][0] == sCC) || (cubieColor[3][0] == tCC)))
	{
		cornerNumber = 1;
	}
	if (((cubieColor[0][0] == fCC) || (cubieColor[0][0] == sCC) || (cubieColor[0][0] == tCC)) &&
		((cubieColor[2][2] == fCC) || (cubieColor[2][2] == sCC) || (cubieColor[2][2] == tCC)) &&
		((cubieColor[4][0] == fCC) || (cubieColor[4][0] == sCC) || (cubieColor[4][0] == tCC)))
	{
		cornerNumber = 2;
	}
	if (((cubieColor[0][2] == fCC) || (cubieColor[0][2] == sCC) || (cubieColor[0][2] == tCC)) &&
		((cubieColor[2][0] == fCC) || (cubieColor[2][0] == sCC) || (cubieColor[2][0] == tCC)) &&
		((cubieColor[5][2] == fCC) || (cubieColor[5][2] == sCC) || (cubieColor[5][2] == tCC)))
	{
		cornerNumber = 3;
	}
	if (((cubieColor[0][8] == fCC) || (cubieColor[0][8] == sCC) || (cubieColor[0][8] == tCC)) &&
		((cubieColor[3][2] == fCC) || (cubieColor[3][2] == sCC) || (cubieColor[3][2] == tCC)) &&
		((cubieColor[5][0] == fCC) || (cubieColor[5][0] == sCC) || (cubieColor[5][0] == tCC)))
	{
		cornerNumber = 4;
	}
	if (((cubieColor[1][0] == fCC) || (cubieColor[1][0] == sCC) || (cubieColor[1][0] == tCC)) &&
		((cubieColor[3][6] == fCC) || (cubieColor[3][6] == sCC) || (cubieColor[3][6] == tCC)) &&
		((cubieColor[4][8] == fCC) || (cubieColor[4][8] == sCC) || (cubieColor[4][8] == tCC)))
	{
		cornerNumber = 5;
	}
	if (((cubieColor[1][6] == fCC) || (cubieColor[1][6] == sCC) || (cubieColor[1][6] == tCC)) &&
		((cubieColor[2][8] == fCC) || (cubieColor[2][8] == sCC) || (cubieColor[2][8] == tCC)) &&
		((cubieColor[4][6] == fCC) || (cubieColor[4][6] == sCC) || (cubieColor[4][6] == tCC)))
	{
		cornerNumber = 6;
	}
	if (((cubieColor[1][8] == fCC) || (cubieColor[1][8] == sCC) || (cubieColor[1][8] == tCC)) &&
		((cubieColor[2][6] == fCC) || (cubieColor[2][6] == sCC) || (cubieColor[2][6] == tCC)) &&
		((cubieColor[5][8] == fCC) || (cubieColor[5][8] == sCC) || (cubieColor[5][8] == tCC)))
	{
		cornerNumber = 7;
	}
	if (((cubieColor[1][2] == fCC) || (cubieColor[1][2] == sCC) || (cubieColor[1][2] == tCC)) &&
		((cubieColor[3][8] == fCC) || (cubieColor[3][8] == sCC) || (cubieColor[3][8] == tCC)) &&
		((cubieColor[5][6] == fCC) || (cubieColor[5][6] == sCC) || (cubieColor[5][6] == tCC)))
	{
		cornerNumber = 8;
	}
		
	return cornerNumber;
}

void moveCornerCubieD()
{
	turnCube(rCClock);
	turnCube(dCClock);
	turnCube(rClock);	
}

void solveCorner()
{
	turnCube(rCClock);
	turnCube(dCClock);
	turnCube(rClock);
	turnCube(dClock);	
}

void solveStage2(int fC, int sC, int tC)
{
	// if on top move it to bottom first
	if (findCorner(fC, sC, tC) <= 4)
	{
	// move a corner piece down if on top
		switch(findCorner(fC, sC, tC))
		{
			case 1:
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				moveCornerCubieD();
				rotateCubeHorizontal();
				break;
			case 2:
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				moveCornerCubieD();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				break;
			case 3:
				rotateCubeHorizontal();
				moveCornerCubieD();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				rotateCubeHorizontal();
				break;
			case 4:
				moveCornerCubieD();
				break;
		}
	}	
	// now solve it with a new position of the corner piece on the bottom
	// move the corner piece directly bottom of the intended corner
	switch(findCorner(fC, sC, tC))
	{
		case 5:
			turnCube(dClock);
			break;
		case 6:
			turnCube(dClock);
			turnCube(dClock);
			break;
		case 7:
			turnCube(dCClock);
			break;
		case 8:
			break;
	}

	//check if the corner piece is in the right place
	while ((cubieColor[0][8] != cubieColor[0][4]) ||
		(cubieColor[3][2] != cubieColor[3][4]) ||
		(cubieColor[5][0] != cubieColor[5][4]))
	{
		solveCorner();
	}	
}

void stage3Movea()
{
	turnCube(uClock);
	turnCube(rClock);
	turnCube(uCClock);
	turnCube(rCClock);
	turnCube(uCClock);
	turnCube(fCClock);
	turnCube(uClock);
	turnCube(fClock);
}
void stage3Moveb()
{
	turnCube(uCClock);
	turnCube(lCClock);
	turnCube(uClock);
	turnCube(lClock);
	turnCube(uClock);
	turnCube(fClock);
	turnCube(uCClock);
	turnCube(fCClock);
}

void stage3Prepare(int fC, int sC)
{
	switch (findEdge(fC, sC))
	{
		case 5:
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			stage3Movea();
			rotateCubeHorizontal();
			break;
		case 6:
			rotateCubeHorizontal();
			rotateCubeHorizontal();			
			stage3Movea();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			break;
		case 7:
			rotateCubeHorizontal();			
			stage3Movea();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			break;
		case 8:
			if (cubieColor[3][4] != cubieColor[3][5])
			{
				stage3Movea();
			}
			break;
	}
}

void solveStage3a()
{
	// solve it first if its in the right place already
	while (((cubieColor[2][1] == cubieColor[3][4]) && 
	((cubieColor[0][1] == cubieColor[5][4]) || 
	(cubieColor[0][1] == cubieColor[4][4])))|| 
	
		((cubieColor[3][1] == cubieColor[3][4]) && 
	((cubieColor[0][7] == cubieColor[5][4]) || 
	(cubieColor[0][7] == cubieColor[4][4]))) ||
	
	
		((cubieColor[4][1] == cubieColor[3][4]) && 
	((cubieColor[0][3] == cubieColor[5][4]) || 
	(cubieColor[0][3] == cubieColor[4][4]))) || 
	
		((cubieColor[5][1] == cubieColor[3][4]) && 
	((cubieColor[0][5] == cubieColor[5][4]) || 
	(cubieColor[0][5] == cubieColor[4][4]))))
	{	
		if (cubieColor[2][1] == cubieColor[3][4])
		{
			if (cubieColor[0][1] == cubieColor[5][4])
			{
				turnCube(uClock);
				turnCube(uClock);
				stage3Movea();
			}
			if (cubieColor[0][1] == cubieColor[4][4])
			{
				turnCube(uClock);
				turnCube(uClock);
				stage3Moveb();
			}
		}
		if (cubieColor[3][1] == cubieColor[3][4])
		{
			if (cubieColor[0][7] == cubieColor[5][4])
			{
				stage3Movea();
			}
			if (cubieColor[0][7] == cubieColor[4][4])
			{
				stage3Moveb();
			}
		}
		if (cubieColor[4][1] == cubieColor[3][4])
		{
			if (cubieColor[0][3] == cubieColor[5][4])
			{
				turnCube(uCClock);
				stage3Movea();
			}
			if (cubieColor[0][3] == cubieColor[4][4])
			{
				turnCube(uCClock);
				stage3Moveb();
			}
		}
		if (cubieColor[5][1] == cubieColor[3][4])
		{
			if (cubieColor[0][5] == cubieColor[5][4])
			{
				turnCube(uClock);
				stage3Movea();
			}
			if (cubieColor[0][5] == cubieColor[4][4])
			{
				turnCube(uClock);
				stage3Moveb();
			}
		}
	}
}

void solveStage3(int fC, int sC)
{
	solveStage3a();
	// if the edge piece is on a side, move it up (to U face)
	if (5 <= findEdge(fC, sC))
	{
		stage3Prepare(fC, sC);
	}
	solveStage3a();
}

void solveStage4a()
{
	// if non of them matches
	if ((cubieColor[0][4] != cubieColor[0][1]) &&
	(cubieColor[0][4] != cubieColor[0][3]) &&
	(cubieColor[0][4] != cubieColor[0][5]) &&
	(cubieColor[0][4] != cubieColor[0][7]))
	{
		turnCube(fClock);
		turnCube(uClock);
		turnCube(rClock);
		turnCube(uCClock);
		turnCube(rCClock);
		turnCube(fCClock);
	}
	
	// if L shape
	if (((cubieColor[0][4] != cubieColor[0][1]) &&
	(cubieColor[0][4] == cubieColor[0][7])) ||
	((cubieColor[0][4] == cubieColor[0][1]) &&
	(cubieColor[0][4] != cubieColor[0][7])))
	{
		if (cubieColor[0][1] == cubieColor[0][5])
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}
		else if (cubieColor[0][5] == cubieColor[0][7])
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}
		else if (cubieColor[0][3] == cubieColor[0][7])
		{
			rotateCubeHorizontal();
		}
		turnCube(fClock);
		turnCube(uClock);
		turnCube(rClock);
		turnCube(uCClock);
		turnCube(rCClock);
		turnCube(fCClock);
	}
	
	// if one line
	if (((cubieColor[0][4] == cubieColor[0][1]) && 
	(cubieColor[0][4] == cubieColor[0][7]) &&
	(cubieColor[0][4] != cubieColor[0][3]) && 
	(cubieColor[0][4] != cubieColor[0][5])) ||
	((cubieColor[0][4] == cubieColor[0][3]) &&
	(cubieColor[0][4] == cubieColor[0][5]) &&
	(cubieColor[0][4] != cubieColor[0][1]) && 
	(cubieColor[0][4] != cubieColor[0][7])))
	{
		if ((cubieColor[0][4] == cubieColor[0][1]) && 
			(cubieColor[0][4] == cubieColor[0][7]))
		{
			rotateCubeHorizontal();
		}
		turnCube(fClock);
		turnCube(rClock);
		turnCube(uClock);
		turnCube(rCClock);
		turnCube(uCClock);
		turnCube(fCClock);
	}
}

void stage4sequence()
{
	turnCube(rClock);
	turnCube(uClock);
	turnCube(rCClock);
	turnCube(uClock);
	turnCube(rClock);
	turnCube(uClock);
	turnCube(uClock);
	turnCube(rCClock);
}

void solveStage4b()
{
	// any better method????

	//state 3 two corners match
	if (((cubieColor[0][4] == cubieColor[0][0]) &&
	(cubieColor[0][4] == cubieColor[0][2]) &&
	(cubieColor[0][4] != cubieColor[0][6]) &&
	(cubieColor[0][4] != cubieColor[0][8])) ||
	
	((cubieColor[0][4] != cubieColor[0][0]) &&
	(cubieColor[0][4] != cubieColor[0][2]) &&
	(cubieColor[0][4] == cubieColor[0][6]) &&
	(cubieColor[0][4] == cubieColor[0][8])) ||
	
	((cubieColor[0][4] == cubieColor[0][0]) &&
	(cubieColor[0][4] != cubieColor[0][2]) &&
	(cubieColor[0][4] == cubieColor[0][6]) &&
	(cubieColor[0][4] != cubieColor[0][8])) ||
	
	((cubieColor[0][4] != cubieColor[0][0]) &&
	(cubieColor[0][4] == cubieColor[0][2]) &&
	(cubieColor[0][4] != cubieColor[0][6]) &&
	(cubieColor[0][4] == cubieColor[0][8])) ||
	
	((cubieColor[0][4] == cubieColor[0][0]) &&
	(cubieColor[0][4] != cubieColor[0][2]) &&
	(cubieColor[0][4] != cubieColor[0][6]) &&
	(cubieColor[0][4] == cubieColor[0][8])) ||
	
	((cubieColor[0][4] != cubieColor[0][0]) &&
	(cubieColor[0][4] == cubieColor[0][2]) &&
	(cubieColor[0][4] == cubieColor[0][6]) &&
	(cubieColor[0][4] != cubieColor[0][8])))
	{
		while (cubieColor[0][4] != cubieColor[3][0])
		{
			rotateCubeHorizontal();
		}
		stage4sequence();
	}
	
	//state 2 one corner match
	else if ((cubieColor[0][4] == cubieColor[0][0]) ||
	(cubieColor[0][4] == cubieColor[0][2]) ||
	(cubieColor[0][4] == cubieColor[0][6]) ||
	(cubieColor[0][4] == cubieColor[0][8]))
	{
		while (cubieColor[0][4] != cubieColor[0][6])
		{
			rotateCubeHorizontal();
		}
		stage4sequence();
	}
	
	//state 1 no corner match
	else
	{
		while (cubieColor[0][4] != cubieColor[4][2])
		{
			rotateCubeHorizontal();
		}
		stage4sequence();
	}
}

void stage5sequence1()
{
	turnCube(rCClock);
	turnCube(fClock);
	turnCube(rCClock);
	turnCube(bClock);
	turnCube(bClock);
	turnCube(rClock);
	turnCube(fCClock);
	turnCube(rCClock);
	turnCube(bClock);
	turnCube(bClock);
	turnCube(rClock);
	turnCube(rClock);
	turnCube(uCClock);
}

void stage5sequence2()
{
	turnCube(fClock);
	turnCube(fClock);
	turnCube(uClock);
	turnCube(lClock);
	turnCube(rCClock);
	turnCube(fClock);
	turnCube(fClock);
	turnCube(lCClock);
	turnCube(rClock);
	turnCube(uClock);
	turnCube(fClock);
	turnCube(fClock);
}

void stage5sequence3()
{
	turnCube(fClock);
	turnCube(fClock);
	turnCube(uCClock);
	turnCube(lClock);
	turnCube(rCClock);
	turnCube(fClock);
	turnCube(fClock);
	turnCube(lCClock);
	turnCube(rClock);
	turnCube(uCClock);
	turnCube(fClock);
	turnCube(fClock);
}

int cornerCorrect(int corner)
{
	switch (corner)
	{
		case 1:
			if ((cubieColor[0][4] == cubieColor[0][6]) &&
				(cubieColor[3][4] == cubieColor[3][0]) &&
				(cubieColor[4][4] == cubieColor[4][2]))
			{
				return 1;
			}
			break;
		case 2:
			if ((cubieColor[0][4] == cubieColor[0][0]) &&
				(cubieColor[2][4] == cubieColor[2][2]) &&
				(cubieColor[4][0] == cubieColor[4][0]))
			{
				return 1;
			}
			break;
		case 3:
			if ((cubieColor[0][4] == cubieColor[0][2]) &&
				(cubieColor[2][4] == cubieColor[2][0]) &&
				(cubieColor[5][4] == cubieColor[5][2]))
			{
				return 1;
			}
			break;
		case 4:
			if ((cubieColor[0][4] == cubieColor[0][8]) &&
				(cubieColor[3][4] == cubieColor[3][2]) &&
				(cubieColor[5][4] == cubieColor[5][0]))
			{
				return 1;
			}
			break;
	}
	return 0;
}

void solveStage5a()
{
	// can it be better???
	if (cornerCorrect(1) && cornerCorrect(2) &&
		!cornerCorrect(3) && !cornerCorrect(4))
	{
		rotateCubeHorizontal();
	}
	else if (!cornerCorrect(1) && !cornerCorrect(2) &&
		cornerCorrect(3) && cornerCorrect(4))
	{
		rotateCubeHorizontal();
		rotateCubeHorizontal();
		rotateCubeHorizontal();
	}
	else if (cornerCorrect(1) && !cornerCorrect(2) &&
		!cornerCorrect(3) && cornerCorrect(4))
	{
		rotateCubeHorizontal();
		rotateCubeHorizontal();
	}
	stage5sequence1();
	
}

int edgeCorrect(int edge)
{
	switch (edge)
	{
		case 1:
			if ((cubieColor[0][4] == cubieColor[0][7]) &&
				(cubieColor[3][4] == cubieColor[3][1]))
			{
				return 1;
			}
			break;
		case 2:
			if ((cubieColor[0][4] == cubieColor[0][3]) &&
				(cubieColor[4][4] == cubieColor[4][1]))
			{
				return 1;
			}
			break;
		case 3:
			if ((cubieColor[0][4] == cubieColor[0][1]) &&
				(cubieColor[2][4] == cubieColor[2][1]))
			{
				return 1;
			}
			break;
		case 4:
			if ((cubieColor[0][4] == cubieColor[0][5]) &&
				(cubieColor[5][4] == cubieColor[5][1]))
			{
				return 1;
			}
			break;
		case 5:
			if ((cubieColor[3][4] == cubieColor[3][3]) &&
				(cubieColor[4][4] == cubieColor[4][5]))
			{
				return 1;
			}
			break;
		case 6:
			if ((cubieColor[4][4] == cubieColor[4][3]) &&
				(cubieColor[2][4] == cubieColor[2][5]))
			{
				return 1;
			}
			break;
		case 7:
			if ((cubieColor[5][4] == cubieColor[5][5]) &&
				(cubieColor[2][4] == cubieColor[2][3]))
			{
				return 1;
			}
			break;
		case 8:
			if ((cubieColor[3][4] == cubieColor[3][5]) &&
				(cubieColor[5][4] == cubieColor[5][3]))
			{
				return 1;
			}
			break;
	}
	return 0;
}

void solveStage5b()
{
	if (!edgeCorrect(1) && !edgeCorrect(2) &&
		!edgeCorrect(3) && !edgeCorrect(4))
	{
		stage5sequence2();
	}
	else
	{
		if (edgeCorrect(1) && !edgeCorrect(2) &&
		!edgeCorrect(3) && !edgeCorrect(4))
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}
		else if (!edgeCorrect(1) && edgeCorrect(2) &&
		!edgeCorrect(3) && !edgeCorrect(4))
		{
			rotateCubeHorizontal();
		}
		else if (!edgeCorrect(1) && !edgeCorrect(2) &&
		!edgeCorrect(3) && edgeCorrect(4))
		{
			rotateCubeHorizontal();
			rotateCubeHorizontal();
			rotateCubeHorizontal();
		}
		
		//check wheather clkwise or cclkwise need
		
		if (cubieColor[3][1] == cubieColor[4][1])
		{
			stage5sequence2();
		}
		else
		{
			stage5sequence3();
		}
		
	}
}
