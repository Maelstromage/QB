pi$ = "110111"
REM tunnel runner
co = 14
SCREEN 7
ro = 1: x = 1: y = 6


GOSUB pick










s: gg$ = INKEY$
IF gg$ = "4" THEN ro = ro - 1: GOSUB pick
IF gg$ = CHR$(27) THEN SYSTEM
IF gg$ = "6" THEN ro = ro + 1: GOSUB pick
IF gg$ = "8" THEN : GOSUB wall: GOSUB pick
IF gg$ = "2" THEN : GOSUB backwall: GOSUB pick
GOTO s

pick:
IF ro < 1 THEN ro = 4
IF ro > 4 THEN ro = 1












































GOSUB pict

RETURN




pict: CLS
LINE (0, 0)-(319, 199), co, B
IF MID$(pi$, 1, 1) = "1" THEN GOSUB lewa1
IF MID$(pi$, 1, 1) = "0" THEN GOSUB nlwa1
IF MID$(pi$, 2, 1) = "1" THEN GOSUB riwa1
IF MID$(pi$, 2, 1) = "0" THEN GOSUB nrwa1
IF MID$(pi$, 3, 1) = "1" THEN GOSUB lewa2
IF MID$(pi$, 3, 1) = "0" THEN GOSUB nlwa2
IF MID$(pi$, 3, 1) = "2" THEN GOSUB wa2
IF MID$(pi$, 4, 1) = "1" THEN GOSUB riwa2
IF MID$(pi$, 4, 1) = "0" THEN GOSUB nrwa2
IF MID$(pi$, 5, 1) = "2" THEN GOSUB wa3
IF MID$(pi$, 5, 1) = "1" THEN GOSUB lewa3
REM IF MID$(pi$, 5, 1) = "0" THEN GOSUB nlwa3
IF MID$(pi$, 6, 1) = "1" THEN GOSUB riwa3
REM IF MID$(pi$, 6, 1) = "0" THEN GOSUB nrwa3
RETURN

wall:
IF MID$(pi$, 3, 1) = "2" THEN RETURN
IF ro = 1 THEN y = y - 1
IF ro = 2 THEN x = x + 1
IF ro = 3 THEN y = y + 1
IF ro = 4 THEN x = x - 1
RETURN
backwall:
IF MID$(pi$, 7, 1) = "0" THEN RETURN
IF ro = 1 THEN y = y + 1
IF ro = 2 THEN x = x - 1
IF ro = 3 THEN y = y - 1
IF ro = 4 THEN x = x + 1
RETURN
lewa1:
LINE (1, 1)-(53, 33), co
LINE (1, 198)-(53, 165), co
LINE (53, 33)-(53, 165), co
PAINT (2, 50), co
RETURN
riwa1:
LINE (318, 1)-(265, 33), co
LINE (318, 198)-(265, 165), co
LINE (265, 33)-(265, 165), co
PAINT (317, 50), co
RETURN
nlwa1:
LINE (1, 33)-(53, 33), co
LINE (1, 165)-(53, 165), co
LINE (53, 33)-(53, 165), co
PAINT (2, 50), co
RETURN
nrwa1:
LINE (318, 33)-(265, 33), co
LINE (318, 165)-(265, 165), co
LINE (265, 33)-(265, 165), co
PAINT (317, 50), co
RETURN
lewa2:
LINE (53, 33)-(106, 66), co
LINE (53, 165)-(106, 132), co
LINE (106, 66)-(106, 132), co
PAINT (54, 100), co
RETURN
riwa2:
LINE (265, 33)-(212, 66), co
LINE (265, 165)-(212, 132), co
LINE (212, 66)-(212, 132), co
PAINT (250, 50), co
RETURN
nlwa2:
LINE (54, 66)-(106, 66), co
LINE (54, 132)-(106, 132), co
LINE (106, 66)-(106, 132), co
PAINT (55, 100), co
LINE (54, 66)-(54, 132), 0
LINE (106, 64)-(106, 132), 0
RETURN
nrwa2:
LINE (265, 66)-(212, 66), co
LINE (265, 132)-(212, 132), co
LINE (211, 66)-(211, 132), co
PAINT (250, 100), co
LINE (264, 66)-(264, 132), 0
LINE (212, 66)-(212, 132), 0

RETURN
lewa3:

LINE (106, 66)-(159, 99), co
LINE (106, 132)-(159, 99), co
LINE (107, 67)-(107, 131), co
PAINT (109, 100), co

RETURN
riwa3:
LINE (212, 66)-(159, 99), co
LINE (212, 132)-(159, 99), co
PAINT (210, 100), co
RETURN

wa2:
LINE (53, 33)-(265, 165), co, BF
RETURN
wa3:
LINE (106, 66)-(212, 132), co, BF
RETURN


