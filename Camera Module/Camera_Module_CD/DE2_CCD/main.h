#ifndef MAIN_H
#define MAIN_H

#define W 0
#define Y 1
#define O 2
#define R 3
#define G 4
#define B 5
#define Z 6

#define uClock	0
#define uCClock 1
#define dClock 	2
#define dCClock 3
#define bClock 	4 
#define bCClock 5 
#define fClock 	6 
#define fCClock 7 
#define lClock 	8
#define lCClock 9
#define rClock 	10
#define rCClock 11

#define hRotate 12 
#define vRotate 13 

#define phyHRotate 14
#define phyVRotate 15

#define CLOCK 0x10
#define RESET 0x20
#define WE    0x40
#define FINISH 0x80

#define top    0
#define bottom 1
#define back   2
#define front  3
#define left   4
#define right  5

extern int cubieColor[6][9];

void solveCube();
int optimizeCube();
void delay();
int  getInputData();

#endif //MAIN_H
