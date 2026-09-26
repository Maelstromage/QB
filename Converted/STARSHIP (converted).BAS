DIM fir(3)
SCREEN 8
DIM starx(14)
DIM stary(14)
RANDOMIZE TIMER
x = 1: y = 12
start:
GOSUB move
GOSUB stars


GOTO start




move:
mov$ = INKEY$
IF mov$ = CHR$(0) + "K" THEN LOCATE y, x: PRINT " ": x = x - 1
IF mov$ = CHR$(0) + "M" THEN LOCATE y, x: PRINT " ": x = x + 1
IF mov$ = CHR$(0) + "H" THEN LOCATE y, x: PRINT " ": y = y - 1
IF mov$ = CHR$(0) + "P" THEN LOCATE y, x: PRINT " ": y = y + 1
IF mov$ = " " THEN fire = fire + 1
IF mov$ = CHR$(27) THEN END
IF fire > 3 THEN fire = 3
IF fire <> 0 THEN GOSUB firer

IF x < 1 THEN x = 1
IF x > 80 THEN x = 80
IF y < 1 THEN y = 1
IF y > 23 THEN y = 23
LOCATE y, x: PRINT ">"

RETURN

stars:
stardelay = stardelay + 1
IF stardelay = 25 THEN stardelay = 0:   ELSE RETURN

erasestar:
FOR st = 1 TO 14
LINE (starx(st), stary(st))-(starx(st), stary(st)), 0
NEXT st

randomstart:
FOR st = 1 TO 14
starx(st) = INT(RND * 640)
stary(st) = INT(RND * 200)
NEXT st
putstar:
FOR st = 1 TO 14
LINE (starx(st), stary(st))-(starx(st), stary(st))
NEXT st

RETURN
firer:
