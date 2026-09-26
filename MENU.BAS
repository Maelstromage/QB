CLS
SCREEN 8



menu:
PAINT (1, 1), 12
LINE (200, 22)-(500, 112), 4, BF
LINE (180, 12)-(480, 102), 0, B
DRAW "bu1 bl1 p0,0"
LINE (183, 13)-(478, 100), 15, B
LINE (2, 1)-(637, 198), 0, B
LINE (5, 3)-(634, 196), 0, B
LOCATE 5, 28: PRINT "1. Aster"
LOCATE 6, 28: PRINT "2. Box Game"
LOCATE 7, 28:
LOCATE 8, 28: COLOR 15: PRINT "4. Dice"
LOCATE 9, 28: PRINT "5. Hangman "
LOCATE 10, 28: PRINT "6. Shuttle"
LOCATE 11, 28: PRINT "7. Pong"
LOCATE 12, 28:
COLOR 15
LOCATE 3, 28: PRINT "Welcome to Reverse Games Inc."

l: ga$ = INKEY$
IF ga$ = "1" THEN RUN "c:\dos\games\Aster.bas"
IF ga$ = "2" THEN RUN "c:\dos\games\boxgame.bas"
IF ga$ = "3" THEN SHELL "dir"
IF ga$ = "4" THEN RUN "c:\dos\games\dice.bas"
IF ga$ = "5" THEN RUN "c:\dos\games\hangman.bas"
IF ga$ = "6" THEN RUN "c:\dos\games\shuttle.bas"
IF ga$ = "7" THEN RUN "c:\dos\games\pong.bas"
IF ga$ = "8" THEN SHELL "win"

IF ga$ = CHR$(27) THEN CLS : SYSTEM
GOTO l


