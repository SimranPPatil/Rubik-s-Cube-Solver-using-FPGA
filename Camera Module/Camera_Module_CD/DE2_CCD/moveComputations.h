#ifndef MOVECOMPUTATIONS_H
#define MOVECOMPUTATIONS_H

extern FILE * fp;
extern int * moves;
extern int moveCounter;
extern int cubieColor[6][9];

void turnCube(int turn);
int findEdge(int fEC, int sEC);
void solveStage1(int edgeNumber);
void rotateCubeHorizontal();
void rotateCubeVertical();
int findCorner(int fCC, int sCC, int tCC);
void moveCornerCubieD();
void solveCorner();
void solveStage2(int fC, int sC, int tC);
void stage3Movea();
void stage3Moveb();
void stage3Prepare(int fC, int sC);
void solveStage3a();
void solveStage3(int fC, int sC);
void solveStage4a();
void stage4sequence();
void solveStage4b();
void f2l();
void solveStage4();
void solveStage5();
void stage5sequence1();
void stage5sequence2();
void stage5sequence3();
int cornerCorrect(int corner);
void solveStage5a();
int edgeCorrect(int edge);
void solveStage5b();

#endif //MOVECOMPUTATIONS_H
