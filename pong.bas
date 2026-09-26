'____________________________________________________________________________

co = 7
COLOR 7
RANDOMIZE TIMER
again:
delay = 10000 '-+-+***|{  this is what you use to change the speed
sp = 10
ud = 0: agai = 0: ya = 9: yb = 9: stpg = 1: pgx = 39: pgy = 13
lf = 0: ri = 0: up = 0: dw = 0
CLS
GOSUB board
'____________________________________________________________________________

start: GOSUB bars
IF pg = sp THEN GOSUB pong
pg = pg + 1
FOR a = 1 TO delay: NEXT a
IF agai = 1 THEN GOTO again
GOTO start
'____________________________________________________________________________
board:
LOCATE 1, 1: PRINT "                   "; pa; "                                 "; pb; ""
ud = 0
FOR lines = 1 TO 11
ud = ud + 2
LOCATE ud, 40: PRINT "Г"
NEXT lines
RETURN
bars:
bar$ = INKEY$
bar$ = UCASE$(bar$)
IF bar$ = "P" THEN DO UNTIL INKEY$ = "P": LOOP
IF bar$ = "A" THEN ya = ya - 1
IF bar$ = "Z" THEN ya = ya + 1
IF bar$ = "8" OR bar$ = CHR$(0) + "H" THEN yb = yb - 1
IF bar$ = "2" OR bar$ = CHR$(0) + "P" THEN yb = yb + 1



IF bar$ = " " THEN co = co + 1: IF co > 30 THEN co = 1:
COLOR co: GOSUB board
IF bar$ = CHR$(27) THEN CLS : SYSTEM
IF ya < 1 THEN ya = 1
IF ya > 17 THEN ya = 17
IF yb < 1 THEN yb = 1
IF yb > 17 THEN yb = 17

LOCATE yb, 78: PRINT "  "
LOCATE yb + 1, 78: PRINT "лл"
LOCATE yb + 2, 78: PRINT "лл"
LOCATE yb + 3, 78: PRINT "лл"
LOCATE yb + 4, 78: PRINT "лл"
LOCATE yb + 5, 78: PRINT "лл"
LOCATE yb + 6, 78: PRINT "  "

LOCATE ya, 1: PRINT "  "
PRINT "лл"
PRINT "лл"
PRINT "лл"
PRINT "лл"
PRINT "лл"
PRINT "  "
RETURN
'____________________________________________________________________________

pong:
LOCATE pgy, pgx: PRINT "  "
pg = 0
IF stpg = 1 THEN IF INT(RND * 2) + 1 = 1 THEN dw = 1 ELSE up = 1
IF stpg = 1 THEN stpg = 0: IF INT(RND * 2) + 1 = 1 THEN lf = 1 ELSE ri = 1

IF up = 1 THEN pgy = pgy - 1
IF dw = 1 THEN pgy = pgy + 1
IF ri = 1 THEN pgx = pgx + 2
IF lf = 1 THEN pgx = pgx - 2
IF pgy = 2 THEN up = 0: dw = 1
IF pgy = 22 THEN up = 1: dw = 0
FOR barch = 1 TO 5
IF pgx = 3 AND pgy = (ya + barch) THEN lf = 0: ri = 1: SOUND 2000, 1: GOSUB speed
IF pgx > 75 AND pgy = (yb + barch) THEN lf = 1: ri = 0: SOUND 2000, 1: GOSUB speed
NEXT barch
IF pgx < 3 THEN pb = pb + 1: agai = 1: stpg = 1: RETURN
IF pgx > 77 THEN pa = pa + 1: agai = 1: stpg = 1: RETURN
IF pa = 10 THEN LOCATE 13, 35: PRINT "Player 1 Wins!": GOTO plaga
IF pb = 10 THEN LOCATE 13, 35: PRINT "Player 2 Wins!": GOTO plaga


LOCATE pgy, pgx: PRINT "лл"
RETURN
'____________________________________________________________________________
speed:
IF barch = 1 OR barch = 5 THEN sp = sp - 5
IF barch = 3 THEN sp = sp + 5
'IF barch = 2 OR barch = 4 THEN sp = sp - 1
IF sp < 1 THEN sp = 1
IF sp > 20 THEN sp = 20
RETURN
'____________________________________________________________________________
plaga: LOCATE 15, 35: INPUT "Play Again"; plag$
IF LEFT$(plag$, 1) = "y" THEN RUN
CLS
SYSTEM
'____________________________________________________________________________

