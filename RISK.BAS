SCREEN 7
GOSUB board

DO WHILE INKEY$ = "": LOOP
END
GOSUB mainmenu



END
board:
PAINT (0, 0), 9
REM north america
REM alaska
DRAW "c0 bm4,25 e1 r7 e1 r4 e1 f1 r2 f2 r6 f1 r1 u2 d4 g1 d7 f1 r1 f1 d3 f2 d2 f1 g1 d1 g1 h2 u3 h1 l1 h1 l1 g1 h1 l1 h1 l1 h1 l2 gllghllgllllllglgdgdlg u7eureurehlhu3reheuu"
REM northwest territory
DRAW "c0 br27 r1 u rrerrfererrfrfreurrgfrrerrrfrrrferrerrd14 l35"
REM alberta
DRAW "c0 bd11 br3 dfdf r26 u15 "
REM ontario
DRAW "r10dfffrrrfrrrfrrrreddfddf d9frurdrl3gggleuhuhlhluuhlhllglghl11"
REM western us
DRAW "r6 d9 l5gd5 llgddgddllgfdlhhlglllllhhhlllluuuhuuuhu6euudreuhlu"
REM eastern US
DRAW "c0 br36 d2llrrfrrerrfffgglgdreeeeefdgfuerluubr7 bd3 r3errfrererrdlldlgddlglgdfllgdddlllgfgdlllgdgdgdgddgluhehhlllldfllhhlllllllhllllllllhhh bl17 bu2"
REM central america
DRAW "dfdfdfddlrurrdddrduluuulluuuuegddrfdfddfdlrfrfddrrrfdddrfddrfdrrddrrruldlluulueheeurrfruhllhereerullllgglglhueuuuhueurr"












RETURN
mainmenu:
LINE (85, 60)-(264, 160), 7, BF
GOSUB board
LINE (70, 50)-(249, 149), 12, B
PAINT (71, 51), 0, 12
LOCATE 8, 10: PRINT "Players   1"
LINE (149, 54)-(161, 65), 15, B
hmpl: hmp$ = INKEY$
hmp = VAL(hmp$)
IF hmp < 1 OR hmp > 6 THEN GOTO hmpl
LOCATE 8, 19: PRINT hmp
LINE (149, 54)-(161, 65), 15, B
FOR na = 9 TO (hmp + 8)
LOCATE na, 10: INPUT pn$
pn$ = LEFT$(pn$, 8)
IF na = 9 THEN pn1$ = pn$
IF na = 10 THEN pn2$ = pn$
IF na = 11 THEN pn3$ = pn$
IF na = 12 THEN pn4$ = pn$
IF na = 13 THEN pn5$ = pn$
IF na = 14 THEN pn6$ = pn$
NEXT na
LINE (71, 51)-(248, 148), 0, BF
 



RETURN
arrow:
DRAW "c0 r4 h4 d4 br3 bu3 e4"
RETURN

