co = 7
RANDOMIZE TIMER
again: sp = 15
ud = 0: agai = 0: ya = 9: yb = 9: stpg = 1: pgx = 39: pgy = 13
lf = 0: ri = 0: up = 0: dw = 0
CLS
GOSUB board


start:
GOSUB movebars
GOSUB bars
IF pg = sp THEN GOSUB pong
pg = pg + 1
IF agai = 1 THEN GOTO again
unfra = unfra + 1
IF unfra = 2000 THEN unfra = 0: frozea = 0
unfrb = unfrb + 1
IF unfrb = 2000 THEN unfrb = 0: frozeb = 0

GOTO start

board:
COLOR 7
LOCATE 1, 1: PRINT "                   "; pa; "                                 "; pb; ""
ud = 0
FOR lines = 1 TO 11
ud = ud + 2
LOCATE ud, 40: PRINT "Г"
NEXT lines
RETURN
movebars:
bar$ = INKEY$

IF bar$ = "p" THEN DO UNTIL INKEY$ = "p": LOOP
IF bar$ = "a" AND frozea = 0 THEN ya = ya - 1
IF bar$ = "z" AND frozea = 0 THEN ya = ya + 1
IF bar$ = "8" AND frozeb = 0 THEN yb = yb - 1
IF bar$ = "2" AND frozeb = 0 THEN yb = yb + 1
IF bar$ = "b" AND bomb = 1 OR bar$ = "9" AND bomb = 1 THEN bomb = 0: bomb = 0: bar$ = ""
IF bar$ = "b" OR bar$ = "9" THEN freeze = 0: bomb = 1: bomb = 1

IF bar$ = "7" AND steelb = 1 THEN steelb = 0: bar$ = ""
IF bar$ = "7" THEN steelb = 1

IF bar$ = "s" AND steela = 1 THEN steela = 0: bar$ = ""
IF bar$ = "s" THEN steela = 1

IF bar$ = "i" AND freeze = 1 OR bar$ = "3" AND freeze = 1 THEN freeze = 0: bar$ = ""
IF bar$ = "i" OR bar$ = "3" THEN bomb = 0: freeze = 1

IF bar$ = "f" THEN firea = 1: bar$ = ""
IF bar$ = "f" AND firea = 1 THEN firea = 0

IF bar$ = "1" THEN fireb = 1: bar$ = ""
IF bar$ = "1" AND fireb = 1 THEN fireb = 0


IF bar$ = CHR$(27) THEN CLS : SYSTEM
IF ya < 1 THEN ya = 1
IF ya > 17 THEN ya = 17
IF yb < 1 THEN yb = 1
IF yb > 17 THEN yb = 17
RETURN



bars:
COLOR 7
IF steelb = 1 THEN COLOR 8
IF frozeb = 1 THEN COLOR 9
IF fireb = 1 THEN COLOR 4
LOCATE yb, 78: PRINT "  "
LOCATE yb + 1, 78: PRINT "лл"
LOCATE yb + 2, 78: PRINT "лл"
LOCATE yb + 3, 78: PRINT "лл"
LOCATE yb + 4, 78: PRINT "лл"
LOCATE yb + 5, 78: PRINT "лл"
LOCATE yb + 6, 78: PRINT "  "
COLOR 7
IF steela = 1 THEN COLOR 8
IF frozea = 1 THEN COLOR 9
IF firea = 1 THEN COLOR 4
LOCATE ya, 1: PRINT "  "
PRINT "лл"
PRINT "лл"
PRINT "лл"
PRINT "лл"
PRINT "лл"
PRINT "  "
RETURN
pong:
LOCATE pgy, pgx: PRINT "  ": LOCATE pgy - 1, pgx: PRINT " "
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
IF pgx = 3 AND pgy = (ya + barch) THEN lf = 0: ri = 1: SOUND 2000, 1: GOSUB speed: GOSUB spcfxa
IF pgx > 75 AND pgy = (yb + barch) THEN lf = 1: ri = 0: SOUND 2000, 1: GOSUB speed: GOSUB spcfxb
NEXT barch
IF pgx < 3 THEN pb = pb + 1: agai = 1: stpg = 1: RETURN
IF pgx > 77 THEN pa = pa + 1: agai = 1: stpg = 1: RETURN
IF pa = 10 THEN LOCATE 13, 35: PRINT "Player 1 Wins!": GOTO plaga
IF pb = 10 THEN LOCATE 13, 35: PRINT "Player 2 Wins!": GOTO plaga
COLOR 7
IF bomb = 0 AND freeze = 0 THEN LOCATE pgy, pgx: PRINT "лл"
IF bomb = 1 THEN LOCATE pgy, pgx: COLOR 8: PRINT "лл": LOCATE pgy - 1, pgx: COLOR 15: PRINT "\"
IF freeze = 1 THEN LOCATE pgy, pgx: COLOR 9: PRINT "лл"
RETURN

speed:
IF barch = 1 OR barch = 5 THEN sp = sp - 5
IF barch = 3 THEN sp = sp + 5
'IF barch = 2 OR barch = 4 THEN sp = sp - 1
IF sp < 1 THEN sp = 1
IF sp > 20 THEN sp = 20
RETURN
plaga: LOCATE 15, 35: INPUT "Play Again"; plag$
IF LEFT$(plag$, 1) = "y" THEN RUN
CLS
SYSTEM
blast:
COLOR 4
LOCATE pgy - 2, pgx: PRINT "*"
LOCATE pgy - 1, pgx - 1: PRINT "***"
LOCATE pgy, pgx - 2: PRINT "*****"
LOCATE pgy + 1, pgx - 1: PRINT "***"
LOCATE pgy + 2, pgx: PRINT "*"
SLEEP 1
RETURN
spcfxa:
IF bomb = 1 AND steela = 0 THEN pb = pb + 1: agai = 1: stpg = 1: GOSUB blast: RETURN
IF freeze = 1 AND firea = 0 THEN frozea = 1


RETURN
spcfxb:
IF bomb = 1 AND steelb = 0 THEN pa = pa + 1: agai = 1: stpg = 1: GOSUB blast: RETURN
IF freeze = 1 AND fireb = 0 THEN frozeb = 1
RETURN

