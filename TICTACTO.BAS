RANDOMIZE TIMER
PRINT "welocme to TIC-TAC-TOE"
PRINT "1...EASY"
PRINT "2...MEDIUM"
PRINT "3...HARD"

dif: dif$ = INKEY$
IF dif$ = "1" OR dif$ = "2" OR dif$ = "3" THEN GOTO board
GOTO dif

board: SCREEN 1
LOCATE 8, 1
PRINT "                  7񾐅"
PRINT "                  呐呐�"
PRINT "                  4񽔾"
PRINT "                  呐呐�"
PRINT "                  1񼙷"
game:
mo$ = INKEY$
GOSUB losecheck
IF one = 0 AND mo$ = "1" THEN LOCATE 12, 19: PRINT "X": one = 1: GOSUB comturn
IF mo$ = CHR$(27) THEN END
IF two = 0 AND mo$ = "2" THEN LOCATE 12, 21: PRINT "X": two = 1: GOSUB comturn
IF the = 0 AND mo$ = "3" THEN LOCATE 12, 23: PRINT "X": the = 1: GOSUB comturn
IF fou = 0 AND mo$ = "4" THEN LOCATE 10, 19: PRINT "X": fou = 1: GOSUB comturn
IF fiv = 0 AND mo$ = "5" THEN LOCATE 10, 21: PRINT "X": fiv = 1: GOSUB comturn
IF six = 0 AND mo$ = "6" THEN LOCATE 10, 23: PRINT "X": six = 1: GOSUB comturn
IF sev = 0 AND mo$ = "7" THEN LOCATE 8, 19: PRINT "X": sev = 1: GOSUB comturn
IF eig = 0 AND mo$ = "8" THEN LOCATE 8, 21: PRINT "X": eig = 1: GOSUB comturn
IF nin = 0 AND mo$ = "9" THEN LOCATE 8, 23: PRINT "X": nin = 1: GOSUB comturn












GOTO game

comturn:
IF dif$ = "1" THEN GOSUB easy
RETURN



easy:
cm = INT(RND * 9) + 1
GOSUB wincheck
IF one = 0 AND cm = 1 THEN LOCATE 12, 19: PRINT "O": one = 2: RETURN
IF two = 0 AND cm = 2 THEN LOCATE 12, 21: PRINT "O": two = 2: RETURN
IF the = 0 AND cm = 3 THEN LOCATE 12, 23: PRINT "O": the = 2: RETURN
IF fou = 0 AND cm = 4 THEN LOCATE 10, 19: PRINT "O": fou = 2: RETURN
IF six = 0 AND cm = 6 THEN LOCATE 10, 23: PRINT "O": six = 2: RETURN
IF sev = 0 AND cm = 7 THEN LOCATE 8, 19: PRINT "O": sev = 2: RETURN
IF eig = 0 AND cm = 8 THEN LOCATE 8, 21: PRINT "O": eig = 2: RETURN
IF nin = 0 AND cm = 9 THEN LOCATE 8, 23: PRINT "O": nin = 2: RETURN
GOTO easy


wincheck:
IF one = 1 THEN GOSUB 1
IF fou = 1 THEN GOSUB 4
IF sev = 1 THEN GOSUB 7
IF eig = 1 THEN GOSUB 8
IF nine = 1 THEN GOSUB 9
RETURN
1 IF two = 1 AND the = 1 THEN GOTO win
IF fiv = 1 AND nin = 1 THEN GOTO win
RETURN
4 IF fiv = 1 AND six = 1 THEN GOTO win
RETURN
7  IF eig = 1 AND nin = 1 THEN GOTO win
IF fiv = 1 AND the = 1 THEN GOTO win
IF fou = 1 AND one = 1 THEN GOTO win
RETURN


8 IF fiv = 1 AND two = 1 THEN GOTO win
RETURN
9 IF six = 1 AND the = 1 THEN GOTO win
RETURN
win: LOCATE 1, 1: PRINT "you win"
SYSTEM
losecheck:
IF one = 2 THEN GOSUB 11
IF fou = 2 THEN GOSUB 41
IF sev = 2 THEN GOSUB 71
IF eig = 2 THEN GOSUB 81
IF nine = 2 THEN GOSUB 91
RETURN
11 IF two = 2 AND the = 2 THEN GOTO lose
IF fiv = 2 AND nin = 2 THEN GOTO lose
RETURN
41 IF fiv = 2 AND six = 2 THEN GOTO lose
RETURN
71  IF eig = 2 AND nin = 2 THEN GOTO lose
IF fiv = 2 AND the = 2 THEN GOTO lose
IF fou = 2 AND one = 2 THEN GOTO lose
RETURN


81 IF fiv = 2 AND two = 2 THEN GOTO lose
RETURN
91 IF six = 2 AND the = 2 THEN GOTO lose
RETURN
lose: CLS
PRINT "You lose"
SYSTEM

