#ifndef PRINTFUNCTIONS_H
#define PRINTFUNCTIONS_H

extern FILE * fp;
extern int * moves;
extern int moveCounter;
extern int cubieColor[6][9];

void writeMove(int move, int reset);
void cvrtToColorPrint(int face, int i);
void printcube(int cubieColor[][9]);
void printAllSteps(int order);

#endif //PRINTFUNCTIONS_H
