CLS
ac = 39: sc = 0
LOCATE 23, ac: PRINT " Ê "

start: GOSUB moveship
GOSUB ast

GOTO start
moveship:
LOCATE 1, 1: PRINT "SCORE: "; sc; "                                                                "
ms$ = INKEY$
IF ms$ = "4" THEN ac = ac - 1
IF ms$ = "6" THEN ac = ac + 1
IF ms$ = "*" OR ms$ = "5" OR ms$ = " " THEN GOSUB fire
IF ms$ = CHR$(27) THEN END
IF ac <= 1 THEN ac = 1
IF ac >= 78 THEN ac = 78
COLOR 9: LOCATE 23, ac: PRINT " Ê "
RETURN
fire:
COLOR 4
up = 22
FOR a = 1 TO 21
    up = up - 1
    LOCATE up, ac + 1: PRINT "^"
    LOCATE up + 1, ac + 1: PRINT "   "
NEXT a
RETURN

ast:

