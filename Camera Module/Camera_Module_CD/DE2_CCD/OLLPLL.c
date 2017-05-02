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

//#include "rubiksRead.h"
#include "printFunctions.h"
#include "moveComputations.h"
#include "main.h"

int moveCounter = 0;
int *moves;
int dummy;
int testScan = 1;

//JTAG pointer
//FILE* fp;

// Manual Input
int cubieColor[6][9] = {
{W,R,G,R,W,O,R,B,G}, //U
{B,G,G,Y,Y,B,R,G,W}, //D
{Y,Y,B,W,O,G,R,R,Y}, //B
{B,W,W,R,R,W,Y,O,W}, //F
{O,B,Y,Y,G,W,G,B,O}, //L
{O,Y,O,O,B,G,R,O,B}  //R
};


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

void solveCube()
{
	//Stage 1 -> make + with white
	printf("\nStage 1 order: \n");
	while (!edgeCorrect(1) || !edgeCorrect(2) ||
		!edgeCorrect(3) || !edgeCorrect(4))
	{
		solveStage1(findEdge(W, B));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, O));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, G));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, R));
		rotateCubeHorizontal();
	}
	//Stage 2 -> solve U corner pieces
	// top for corner pieces. color here for convinience
	printf("\n\nStage 2 order: \n");
	while (!cornerCorrect(1) || !cornerCorrect(2) ||
		!cornerCorrect(3) || !cornerCorrect(4))
	{
		if (!cornerCorrect(4))
		{
			solveStage2(W, B, R);
		}
		rotateCubeHorizontal();
		if (!cornerCorrect(4))
		{
			solveStage2(W, B, O);
		}
		rotateCubeHorizontal();
		if (!cornerCorrect(4))
		{
			solveStage2(W, O, G);
		}
		rotateCubeHorizontal();
		if (!cornerCorrect(4))
		{
			solveStage2(W, G, R);
		}
		rotateCubeHorizontal();
	}
	
	//Stage 3 -> solve the side cubies
	// can be more optimized
	printf("\n\nStage 3 order: \n");
	//if (!edgeCorrect(5) || !edgeCorrect(6) ||
	//	!edgeCorrect(7) || !edgeCorrect(8))
	//{
		rotateCubeVertical();
		rotateCubeVertical();
		rotateCubeHorizontal();
	//}
	while (!edgeCorrect(5) || !edgeCorrect(6) ||
		!edgeCorrect(7) || !edgeCorrect(8))
	{
		solveStage3(B, R);
		rotateCubeHorizontal();
		solveStage3(R, G);
		rotateCubeHorizontal();
		solveStage3(G, O);
		rotateCubeHorizontal();
		solveStage3(O, B);
		rotateCubeHorizontal();
	}
	
	//Stage 4 
	printf("\n\nStage 4 order: \n");
	
	//step 1
	//make the top corss if it's not corss yet
	if ((cubieColor[0][4] != cubieColor[0][1]) ||
	(cubieColor[0][4] != cubieColor[0][3]) ||
	(cubieColor[0][4] != cubieColor[0][5]) ||
	(cubieColor[0][4] != cubieColor[0][7]))
	{
		solveStage4a();
	}
	//step 2
	//make all the top same color
	while ((cubieColor[0][4] != cubieColor[0][0]) ||
	(cubieColor[0][4] != cubieColor[0][2]) ||
	(cubieColor[0][4] != cubieColor[0][6]) ||
	(cubieColor[0][4] != cubieColor[0][8]))
	{
		solveStage4b();
	}
	
	/*
	//stage4 lookuptable
	if ((cubieColor[0][4] != cubieColor[0][1]) ||
	(cubieColor[0][4] != cubieColor[0][3]) ||
	(cubieColor[0][4] != cubieColor[0][5]) ||
	(cubieColor[0][4] != cubieColor[0][7]) ||
	(cubieColor[0][4] != cubieColor[0][0]) ||
	(cubieColor[0][4] != cubieColor[0][2]) ||
	(cubieColor[0][4] != cubieColor[0][6]) ||
	(cubieColor[0][4] != cubieColor[0][8]))
	{
		solveStage4();
	}
	*/
	//stage 5
	printf("\n\nStage 5 order: \n");
	//step 1
	//make the top corners right
	
	while (!cornerCorrect(1) || !cornerCorrect(2) ||
		!cornerCorrect(3) || !cornerCorrect(4))
	{
		// 0 or 1 match
		if ((!cornerCorrect(1) && !cornerCorrect(2) &&
		!cornerCorrect(3) && !cornerCorrect(4)) ||
		(cornerCorrect(1) && !cornerCorrect(2) &&
		!cornerCorrect(3) && !cornerCorrect(4)) ||
		(!cornerCorrect(1) && cornerCorrect(2) &&
		!cornerCorrect(3) && !cornerCorrect(4)) ||
		(!cornerCorrect(1) && !cornerCorrect(2) &&
		cornerCorrect(3) && !cornerCorrect(4)) ||
		(!cornerCorrect(1) && !cornerCorrect(2) &&
		!cornerCorrect(3) && cornerCorrect(4)))
		{
			turnCube(uClock);
		}
		else
		{
			solveStage5a();
		}
	}
	//step 2
	//finish it
	while (!edgeCorrect(1) || !edgeCorrect(2) ||
		!edgeCorrect(3) || !edgeCorrect(4))
	{
		solveStage5b();
	}
	
	
	/*
	//Stage5 lookup table
	if (!((cubieColor[front][4] == cubieColor[front][0]) &&
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
		solveStage5();
		
	}*/
	//print output
	printf("\n\nOutput:\n");
	
	printcube(cubieColor);
}



int detectEdgeOrientation(int edgeNumber)
{
	int face;
	int faceEdge;
	int otherSide;
	int otherSideEdge;
	switch (edgeNumber)
	{
		case 1:
			face = top;
			faceEdge = 7;
			otherSide = front;
			otherSideEdge = 1;
			break;
		case 2:
			face = top;
			faceEdge = 3;
			otherSide = left;
			otherSideEdge = 1;
			break;
		case 3:
			face = top;
			faceEdge = 1;
			otherSide = back;
			otherSideEdge = 1;
			break;
		case 4:
			face = top;
			faceEdge = 5;
			otherSide = right;
			otherSideEdge = 1;
			break;
		case 5:
			face = front;
			faceEdge = 3;
			otherSide = left;
			otherSideEdge = 5;
			break;
		case 6:
			face = back;
			faceEdge = 5;
			otherSide = left;
			otherSideEdge = 3;
			break;
		case 7:
			face = back;
			faceEdge = 3;
			otherSide = right;
			otherSideEdge = 5;
			break;
		case 8:
			face = front;
			faceEdge = 5;
			otherSide = right;
			otherSideEdge = 3;
			break;
		case 9:
			face = bottom;
			faceEdge = 1;
			otherSide = front;
			otherSideEdge = 7;
			break;
		case 10:
			face = bottom;
			faceEdge = 3;
			otherSide = left;
			otherSideEdge = 7;
			break;
		case 11:
			face = bottom;
			faceEdge = 7;
			otherSide = back;
			otherSideEdge = 7;
			break;
		case 12:
			face = bottom;
			faceEdge = 5;
			otherSide = right;
			otherSideEdge = 7;
			break;
	}
	if ( (cubieColor[face][faceEdge] == cubieColor[left][4]) ||
		(cubieColor[face][faceEdge] == cubieColor[right][4]) )
	{
		//bad edge
		return 1;
	}
	else if ( ((cubieColor[face][faceEdge] == cubieColor[front][4]) ||
		(cubieColor[face][faceEdge] == cubieColor[back][4])) &&
		((cubieColor[otherSide][otherSideEdge] == cubieColor[bottom][4]) ||
		(cubieColor[otherSide][otherSideEdge] == cubieColor[top][4])) )
	{
		//bad edge
		return 1;
	}
	//good edge
	return 0;
}

/*void orientBadEdges()
{
	int edges[13];
	int i;
	int badEdges = 0;
	int numBadFront = 0;
	int numBadBack = 0;
	int faceToGather = 0;
	int maxIterations = 5;
	int iteration = 0;
	
	do{
		printf("\n\n");
		badEdges = 0;
		for(i=1; i<13; i++)
		{
			edges[i] = detectEdgeOrientation(i);
			if(edges[i]) {
				badEdges++;
				printf("Edge %2d Bad\n", i);
			} else {
				printf("Edge %2d Good\n", i);
			}
		}
		
		numBadBack  = edges[3] + edges[6] + edges[7] + edges[11];
		numBadFront = edges[1] + edges[5] + edges[8] + edges[9];
		
		faceToGather = numBadBack > numBadFront ? back : front;
		
		printf("\nFound %d Bad Edges,\n   %d on front\n   %d on back\n", badEdges, numBadFront, numBadBack);
		printf("\nAttempting to gather on: %s\n", faceToGather == front ? "Front" : "Back");
		
		//Try to fix the edges
		switch(badEdges){
			case 0:
				//Solved, do nothing
			break;
			case 2:
				//Move 1 to F/B, rotate, then 4
			break;
			case 4:
				//Move all to F/B, rotate
				//See if we need to rotate the bottom
				if(!edges[9]){
					if((edges[10] || edges[11]) && faceToGather == front){
						//D
						turnCube(dClock);
					} else if(edges[12] && faceToGather == front){
						//D'
						turnCube(dCClock);
					} else if(edges[10] || edges[11]){
						//D'
						turnCube(dCClock);
					} else if(edges[12]){
						//D
						turnCube(dClock);
					}
				} else if(!edges[1]){ //See if we need to rotate the top
					if((edges[2] || edges[3]) && faceToGather == front){
						//U'
						turnCube(uCClock);
					} else if(edges[4] && faceToGather == front){
						//U
						turnCube(uClock);
					} else if(edges[2] || edges[3]){
						//U
						turnCube(uClock);
					} else if(edges[4]){
						//U'
						turnCube(uCClock);
					}
				}
				else if((edges[12] || edges[7]) && !edges[8] && faceToGather == front){
					//R
					turnCube(rClock);
				} else if(edges[4] && !edges[8] && faceToGather == front){
					//R'
					turnCube(rCClock);
				} else if((edges[12] || edges[7]) && !edges[8]){
					//R'
					turnCube(rCClock);
				} else if(edges[4] && !edges[8]){
					//R
					turnCube(rClock);
				}
				
				else if((edges[10] || edges[6]) && !edges[5] && faceToGather == front){
					//L'
					turnCube(lCClock);
				} else if(edges[2] && !edges[5] && faceToGather == front){
					//L
					turnCube(lClock);
				} else if((edges[10] || edges[6]) && !edges[5]){
					//L
					turnCube(lClock);
				} else if(edges[2] && !edges[5]){
					//L'
					turnCube(lCClock);
				}

				//Need to find an open spot
				else if(!edges[8] && faceToGather == front){ //Right
					//Left is open, move bad edge to left
					if(edges[3]){
						turnCube(uClock);
						turnCube(rCClock);
						turnCube(uCClock);
					} else if(edges[11]){
						turnCube(bClock);
						turnCube(rCClock);
						turnCube(rCClock);
					} else if(edges[6]){
						turnCube(fClock);
						turnCube(fClock);
						turnCube(lClock);
						turnCube(lClock);
					}
					} else if(edges[7]){
						turnCube(rClock);
						turnCube(rClock);
					}
				}else if(!edges[7] && faceToGather == back){ //Right
					//Left is open, move bad edge to left
					if(edges[1]){
						turnCube(fClock);
						turnCube(rCClock);
						turnCube(rCClock);
					}
					else if(edges[9]){
						turnCube(fCClock);
						turnCube(rCClock);
						turnCube(rCClock);
					}
				} else if(!edges[5] && faceToGather == front){ //Right
					//Left is open, move bad edge to left
					if(edges[3]){
						turnCube(bClock);
						turnCube(rCClock);
						turnCube(rCClock);
					}
					else if(edges[11]){
						turnCube(bCClock);
						turnCube(rCClock);
						turnCube(rCClock);
					}
				}else if(!edges[6] && faceToGather == back){ //Right
					//Left is open, move bad edge to left
					if(edges[1]){
						turnCube(fCClock);
						turnCube(rCClock);
						turnCube(rCClock);
					}
					else if(edges[9]){
						turnCube(fClock);
						turnCube(rCClock);
						turnCube(rCClock);
					}
				}
				if(faceToGather == front){
					if(numBadFront == 4){
						turnCube(fClock);
					}
				} else {
					if(numBadBack == 4){
						turnCube(bClock);
					}
				}
			break;
			case 6:
			
			break;
			case 8:
			
			break;
			case 10:
			
			break;
			case 12:
			
			break;
			default:
				printf("%d Bad Edges is not Possible!!\n", badEdges);
			break;
		}
		
		iteration++;
	}while(badEdges > 0 && iteration < maxIterations);
}*/

/*void solveCube()
{
	//Stage 1 -> Orient bad edges
	printf("\nCheck Bad Edges: \n");
	orientBadEdges();
	
	
	
		
	//print output
	printf("\n\nOutput:\n");
	
	printcube(cubieColor);
}*/


int optimizeCube()
{
	int i;
	int order = 0;
	
	for (i = 0; i < moveCounter; i++)		
	{		
		if (((((moves[i] % 2 == 0) && (moves[i]+1 != (moves[i+1]))) || (moves[i] == 12)) || 		
		(((moves[i] % 2 == 1) && (moves[i]-1 != (moves[i+1]))) || (moves[i] == 13))) &&		
				
		!((moves[i] == moves[i+1]) &&		
		(moves[i+1] == moves[i+2]) &&		
		(moves[i+2] == moves[i+3])))		
		{		
			moves[order++] = moves[i];		
		}		
		else if(((moves[i] == moves[i+1]) &&		
		(moves[i+1] == moves[i+2]) &&		
		(moves[i+2] == moves[i+3])))		
		{		
			i += 3;		
		}		
		else 		
		{		
			i = i + 1;		
		}		
	}
	
	return order;
}

void waitForServos()
{
	/*int readVal = 0;
	
	//Yay busy wait!
	while(readVal == 0){
		readVal = IORD_ALTERA_AVALON_PIO_DATA(SERVOS_TO_NIOS_BASE);
	}*/
}

void getInputData()
{
	//Read the back
	if(!testScan){
		//rubiksRead(cubieColor[2]);
	}
	
	//Rotate to read top
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	if(!testScan){
		waitForServos();
		//rubiksRead(cubieColor[2]);
	}
	
	//Rotate to read front
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	if(!testScan){
		waitForServos();
		//rubiksRead(cubieColor[2]);
	}
	
	//Rotate to read bottom
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	if(!testScan){
		waitForServos();
		//rubiksRead(cubieColor[2]);
	}
	
	//Rotate back to normal position
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//Need to get left and right starting here
	writeMove(fClock, 0);
	turnCube(fClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(fCClock, 0);
	turnCube(fCClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		//rubiksRead(cubieColor[2]);
	}
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		//rubiksRead(cubieColor[2]);
	}
	
	//Need to get left and right starting here
	writeMove(fClock, 0);
	turnCube(fClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(fCClock, 0);
	turnCube(fCClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		//rubiksRead(cubieColor[2]);
	}
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
		
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		//rubiksRead(cubieColor[2]);
	}
	
	//Re-orienting cube
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	printf("\n\n");
	
}

int main(void)
{		
	int order;
	int manualInput = 1;

	//Initialize the UART
	//fp = fopen (JTAG_UART_NAME, "r+");
	/*if(fp){
		printf("Start!\n");
	} else {
		//Error, reset the uC
		return 1;
	}*/	
	
	//Reset the read and write addresses
	writeMove(0, 1);
	
	//Start scanning
	printf("Hit enter to start scan\n");
	//getc(fp);
	
	if(!manualInput){
		//Read the camera data
		getInputData();
	}
	printf("Hit enter to go\n");
	//getc(fp);
	
	//Print the starting cube configuration
	printf("Input:\n");
	printcube(cubieColor);
	
	//Solve the cube
	solveCube();

	//Optimize the solving
	order = optimizeCube();			

	//Print the order
	printAllSteps(order);
	
	//Free the array
	free(moves);		

	//Raise the finish flag
	//IOWR_ALTERA_AVALON_PIO_DATA(CUBE_MOVE_BASE, FINISH);
	//IOWR_ALT_UP_PARALLEL_PORT_DATA(LED_RED_BASE, dummy);
			
	//Boredom
	//while(1);		
			
	//Never get here
	return 0;
}
