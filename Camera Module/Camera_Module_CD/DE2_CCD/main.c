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
#include "solver.h"

#define old

int moveCounter = 0;
int *moves;
int dummy;
int testScan = 0;

//JTAG pointer
FILE* fp;

// Manual Input
/*int cubieColor[6][9] = {
{X,X,X,X,X,X,X,X,X}, //U
{X,X,X,X,X,X,X,X,X}, //D
{X,X,X,X,X,X,X,X,X}, //B
{X,X,X,X,X,X,X,X,X}, //F
{X,X,X,X,X,X,X,X,X}, //L
{X,X,X,X,X,X,X,X,X}  //R
};//*/

/*int cubieColor[6][9] = {
{W,W,W,W,W,W,W,W,W}, //U
{Y,Y,Y,Y,Y,Y,Y,Y,Y}, //D
{O,O,O,O,O,O,O,O,O}, //B
{R,R,R,R,R,R,R,R,R}, //F
{G,G,G,G,G,G,G,G,G}, //L
{B,B,B,B,B,B,B,B,B}  //R
};*/

/*int cubieColor[6][9] = {
{R,B,B,G,W,O,W,W,O}, //U
{Y,R,W,Y,Y,W,Y,W,B}, //D
{R,Y,G,Y,O,G,Y,R,O}, //B
{O,G,G,W,R,O,B,B,R}, //F
{Y,O,B,R,G,B,G,R,R}, //L
{W,Y,W,B,B,G,G,O,O}  //R
};*/

void solveCube()
{
#ifdef old
	//Old Method
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
	
	
	rotateCubeVertical();
	rotateCubeVertical();
	rotateCubeHorizontal();
	
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

#else	
	//New Method
	//Stage 1 -> make + with white
	printf("\nCross: \n");
	while (!edgeCorrect(1) || !edgeCorrect(2) ||
		!edgeCorrect(3) || !edgeCorrect(4))
	{
		/*solveStage1(findEdge(cubieColor[top][4], cubieColor[right][4]));
		rotateCubeHorizontal();
		solveStage1(findEdge(cubieColor[top][4], cubieColor[back][4]));
		rotateCubeHorizontal();
		solveStage1(findEdge(cubieColor[top][4], cubieColor[left][4]));
		rotateCubeHorizontal();
		solveStage1(findEdge(cubieColor[top][4], cubieColor[front][4]));
		rotateCubeHorizontal();*/
		solveStage1(findEdge(W, B));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, O));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, G));
		rotateCubeHorizontal();
		solveStage1(findEdge(W, R));
		rotateCubeHorizontal();
	}
	
	printf("\n\nF2L: \n");
	
	//F2L table
	//flip the cube first for f2l
	rotateCubeVertical();
	rotateCubeVertical();
	rotateCubeHorizontal();
	rotateCubeHorizontal();
	
	while (!((cubieColor[front][4] == cubieColor[front][3]) &&
	(cubieColor[front][4] == cubieColor[front][5]) &&
	(cubieColor[left][4] == cubieColor[left][3]) &&
	(cubieColor[left][4] == cubieColor[left][5]) &&
	(cubieColor[right][4] == cubieColor[right][3]) &&
	(cubieColor[right][4] == cubieColor[right][5]) &&
	(cubieColor[back][4] == cubieColor[back][3]) &&
	(cubieColor[back][4] == cubieColor[back][5]) &&
	(cubieColor[front][4] == cubieColor[front][6]) &&
	(cubieColor[front][4] == cubieColor[front][8]) &&
	(cubieColor[left][4] == cubieColor[left][6]) &&
	(cubieColor[left][4] == cubieColor[left][8]) &&
	(cubieColor[right][4] == cubieColor[right][6]) &&
	(cubieColor[right][4] == cubieColor[right][8]) &&
	(cubieColor[back][4] == cubieColor[back][6]) &&
	(cubieColor[back][4] == cubieColor[back][8])))
	//int i;
	//for (i = 0; i < 4; i++)*/
	{
		//printf("aejkldsfhjklasdfs");
		f2l();
		rotateCubeHorizontal();
		//testf2l();
		//printcube(cubieColor);
	}
	
	
	//stage4 lookuptable (OLL)
	printf("\n\nOLL: \n");
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
	
	//Stage5 lookup table (PLL)
	printf("\n\nPLL: \n");
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
		
	}	
#endif
	//print output
	printf("\n\nOutput:\n");
	
	printcube(cubieColor);
}

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

/*
void waitForServos()
{
	int readVal = 0;
	
	printcube(cubieColor);
	
	fflush(stdout);
	printf("Waiting for servos...");
	fflush(stdout);
	//getc(fp);
	//Yay busy wait!
	while(readVal == 0){
		readVal = IORD_ALTERA_AVALON_PIO_DATA(SERVOS_TO_NIOS_BASE);
	}//
	printf("Done\n");
}


void readCube(int * cubeSide)
{
	int numReads = 3;
	int tmp[numReads][9];
	int counts[6];
	int i = 0, j = 0, k = 0;
	int maxVal = 0;
	
	for(i=0; i<numReads; i++){
		rubiksRead(tmp[i]);
	}
	
	for(i=0; i<6; i++){
		counts[i] = 0;
	}
		
	for(i=0; i<9; i++){
		for(j=0; j<numReads; j++){
			counts[tmp[j][i]]++; 
			
			maxVal = maxVal > counts[tmp[j][i]] ? maxVal : counts[tmp[j][i]];
		}
		
		for(j=0; j<6; j++){
			if(maxVal == counts[j]){
				cubeSide[i] = j;
			}
			counts[j] = 0;
		}
		maxVal = 0;
	}
}
*/
int getInputData()
{
	
	int errorDetected = 0;
	/*
	//while(1){
	//Read the back
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}//}
	
	//Rotate to read top
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//while(1){
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}
	//}
	
	//Rotate to read front
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}
	
	//Rotate to read bottom
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}
	
	//Rotate back to normal position
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	printf("Finished FBUD\n");
	
	//Need to get left and right starting here
	writeMove(fClock, 0);
	turnCube(fClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(bCClock, 0);
	turnCube(fCClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}
	
	//Need to get left and right starting here
	writeMove(dClock, 0);
	turnCube(fClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(uCClock, 0);
	turnCube(fCClock);
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
		
	//TODO Put these in the right place
	if(!testScan){
		waitForServos();
		readCube(cubieColor[2]);
	}
	
	//Re-orienting cube
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	//Re-orienting cube
	writeMove(phyVRotate, 0);
	rotateCubeVertical();
	
	printf("\n\n");
	*/
	//Determine cube orientation
	int topFace = cubieColor[top][4];
	int frontFace = cubieColor[front][4];
	
	switch(topFace){
		case W:
			switch(frontFace){
				case O:
					cubieColor[left][4] = B;
					cubieColor[right][4] = G;
					break;
				case R:
					cubieColor[left][4] = G;
					cubieColor[right][4] = B;
					break;
				case G:
					cubieColor[left][4] = O;
					cubieColor[right][4] = R;
					break;
				case B:
					cubieColor[left][4] = R;
					cubieColor[right][4] = O;
					break;	
				default:
					errorDetected = 1;
					break;
			}
			break;
		case Y:
			switch(frontFace){
				case O:
					cubieColor[left][4] = G;
					cubieColor[right][4] = B;
					break;
				case R:
					cubieColor[left][4] = B;
					cubieColor[right][4] = G;
					break;
				case G:
					cubieColor[left][4] = R;
					cubieColor[right][4] = O;
					break;
				case B:
					cubieColor[left][4] = O;
					cubieColor[right][4] = R;
					break;	
				default:
					errorDetected = 1;
					break;
			}
			break;
		case O:
			switch(frontFace){
				case W:
					cubieColor[left][4] = G;
					cubieColor[right][4] = B;
					break;
				case Y:
					cubieColor[left][4] = B;
					cubieColor[right][4] = G;
					break;
				case G:
					cubieColor[left][4] = Y;
					cubieColor[right][4] = W;
					break;
				case B:
					cubieColor[left][4] = W;
					cubieColor[right][4] = Y;
					break;	
				default:
					errorDetected = 1;
					break;
			}
			break;
		case R:
			switch(frontFace){
				case W:
					cubieColor[left][4] = B;
					cubieColor[right][4] = G;
					break;
				case Y:
					cubieColor[left][4] = G;
					cubieColor[right][4] = B;
					break;
				case G:
					cubieColor[left][4] = W;
					cubieColor[right][4] = Y;
					break;
				case B:
					cubieColor[left][4] = Y;
					cubieColor[right][4] = W;
					break;	
				default:
					errorDetected = 1;
					break;
			}
			break;
		case G:
			switch(frontFace){
				case O:
					cubieColor[left][4] = W;
					cubieColor[right][4] = Y;
					break;
				case R:
					cubieColor[left][4] = Y;
					cubieColor[right][4] = W;
					break;
				case Y:
					cubieColor[left][4] = O;
					cubieColor[right][4] = R;
					break;
				case W:
					cubieColor[left][4] = R;
					cubieColor[right][4] = O;
					break;	
				default:
					errorDetected = 1;
					break;
			}
			break;
		case B:
			switch(frontFace){
				case O:
					cubieColor[left][4] = Y;
					cubieColor[right][4] = W;
					break;
				case R:
					cubieColor[left][4] = W;
					cubieColor[right][4] = Y;
					break;
				case W:
					cubieColor[left][4] = O;
					cubieColor[right][4] = R;
					break;
				case Y:
					cubieColor[left][4] = R;
					cubieColor[right][4] = O;
					break;
				default:
					errorDetected = 1;
					break;
			}
			break;
	}
	
	//Count the number of each face
	int counts[] = {0,0,0,0,0,0};
	int i = 0, j = 0;
	
	for(i=0; i<6; i++){
		for(j=0; j<9; j++){
			counts[cubieColor[i][j]]++;
		}
	}
	
	for(i=0; i<6; i++){
		if(counts[i] != 9){
			errorDetected = 1;
		}
	}
	
	return errorDetected;
}

int main(void)
{		
	int order;
	int manualInput = 0;
	int error = 0;

	/*Initialize the UART
	fp = fopen (JTAG_UART_NAME, "r+");
	if(fp){
		printf("Start!\n");
	} else {
		//Error, reset the uC
		return 1;
	}	
	
	//Reset the read and write addresses
	//Clear mem
	writeMove(0, 1);
	int i;
	for(i=0; i<300; i++){
		writeMove(vRotate, 0);
	}
	writeMove(0, 1);
	
	//Start scanning
	printf("Welcome. Hit enter to start scan\n");
	getc(fp);
	
	while(IORD_ALT_UP_PARALLEL_PORT_DATA(SWITCHES_BASE) & 0x8000 > 0){
		printf("Turn off switch 0 and try again\n");
		getc(fp);
	}
	
	if(!manualInput){
		//Read the camera data
		do{
			error = getInputData();
			
			if(error){
				printf("Error detected during read\n");
				printcube(cubieColor);
				getc(fp);
			}
			else{
				printf("Nothing wrong with the cube\n");
			}
		} while(error);
	}
	
	printf("OMFG IT SCANNED\n");
	writeMove(0, 1);
	getc(fp);
	*/
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
			
	//Boredom
	//waitForServos();
	printf("Done.\n");

	//Raise the finish flag
	//IOWR_ALTERA_AVALON_PIO_DATA(CUBE_MOVE_BASE, FINISH);
	//IOWR_ALT_UP_PARALLEL_PORT_DATA(LED_RED_BASE, dummy);
	while(1);		
			
	//Never get here
	return 0;
}
