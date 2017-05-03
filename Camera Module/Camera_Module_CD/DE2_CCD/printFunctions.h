#ifndef PRINTFUNCTIONS_H
#define PRINTFUNCTIONS_H

#define to_hw_port_font (volatile char*) 0x00000080 // actual address here
#define to_hw_sig_font (volatile char*) 0x00000060 // actual address here
#define to_sw_port_font (char*) 0x00000070 // actual address here
#define to_sw_sig_font (char*) 0x00000050 // actual address here

extern FILE * fp;
extern int * moves;
extern int moveCounter;
extern int cubieColor[6][9];

void writeMove(int move, int reset);
void cvrtToColorPrint(int face, int i);
void printcube(int cubieColor[][9]);
void printAllSteps(int order);

#endif //PRINTFUNCTIONS_H
