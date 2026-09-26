hma = 50
sp = 1000
lv = 2
le = 1
RANDOMIZE TIMER
SCREEN 7
fu = 10000
asteroids:
LOCATE 14, 18: PRINT "READY?": DO UNTIL INKEY$ <> "": LOOP
ri = 0: up = 0
CLS
PRINT "Fuel: "; fu; "  level: "; le
DIM ac(150), dw(150)
FOR at = 1 TO hma
COLOR INT(RND * 15) + 1
ac(at) = INT(RND * 30) + 3
dw(at) = INT(RND * 20) + 4
LOCATE (dw(at)), (ac(at)): PRINT "X"
NEXT at
c$ = "               "
co = 1: ro = INT(RND * 20) + 4
110 COLOR 2: LOCATE ro, co: PRINT ">"

120 LOCATE 2, 1: PRINT c$
LOCATE 3, 1: PRINT c$
LOCATE 1, 30: PRINT "Lives: "; lv

di$ = INKEY$
IF di$ = CHR$(0) + "H" THEN up = -1: ri = 0: GOTO 210
IF di$ = CHR$(0) + "P" THEN up = 1: ri = 0: GOTO 210
IF di$ = CHR$(0) + "M" THEN up = 0: ri = 1: GOTO 210
IF di$ = CHR$(0) + "K" THEN up = 0: ri = -1: GOTO 210
IF di$ = "~" THEN inliv = 1
IF di$ = "," THEN sp = sp - 100
IF di$ = "." THEN sp = sp + 100
IF up = -1 THEN GOTO 210
IF up = 1 THEN GOTO 210
IF ri = 1 THEN GOTO 210
IF ri = -1 THEN GOTO 210
IF di$ = CHR$(27) THEN SYSTEM

GOTO 120

210
LOCATE ro, co: PRINT ">"
DO UNTIL pu = sp: pu = pu + 1: LOOP: pu = 0
FOR c = 1 TO 1

fu = fu - 200
IF fu < 0 THEN fu = 0

LOCATE 1, 1: PRINT c$
LOCATE 1, 1: PRINT "Fuel: "; fu
IF fu = 0 THEN GOTO 350
IF fu < 10000 / 2 THEN COLOR 14
IF fu < 10000 / 3 THEN COLOR 4
ro = ro + up
co = co + ri
FOR at = 1 TO hma
IF co = ac(at) AND ro = dw(at) THEN GOTO 370
NEXT at
IF ro > 24 OR ro < 4 OR co < 1 THEN GOTO 390
LOCATE ro, co: PRINT "Û"
IF co > 33 THEN GOTO 410
NEXT c
GOTO 110

350 LOCATE 10, 1: PRINT "   You ran out of fuel": SYSTEM: lv = lv - 1:  fu = 10000: IF lv < 0 THEN SYSTEM ELSE GOTO livch

370 LOCATE 10, 1: COLOR 15: PRINT "     You crashed into an asteroid": lv = lv - 1:  fu = fu + 5000: IF lv < 0 THEN SYSTEM ELSE GOTO livch

390 LOCATE 10, 1: COLOR 15: PRINT "      You have gone out of orbit": lv = lv - 1: fu = fu + 5000: IF lv < 0 THEN SYSTEM ELSE GOTO livch

410 LOCATE 10, 1: COLOR 15: PRINT "    Well done, you missed them all"







DO UNTIL INKEY$ = CHR$(13): LOOP
sp = sp - 250
IF sp < 1 THEN sp = 500: hma = hma + 50
le = le + 1
fu = fu * 10
IF fu > 15000 THEN fu = 15000
GOTO asteroids
landing:


livch:
IF inliv = 1 THEN lv = lv + 1
GOTO asteroids


