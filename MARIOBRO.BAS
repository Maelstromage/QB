mmac = 20

GOSUB background

s: LINE (43, 152)-(277, 191), 0, BF

DRAW "bm 170 ,175"
GOSUB ml
DRAW "bm 150,175"
GOSUB lr
SLEEP 1
 REM LINE (43, 152)-(277, 191), 0, BF
DO WHILE INKEY$ = "": LOOP
GOTO game
background:
SCREEN 7
COLOR 10
LINE (32, 1)-(42, 40), 10, BF
LINE (1, 42)-(107, 50), 9, BF
LINE (1, 4)-(30, 37), 10, BF

LINE (288, 1)-(278, 40), 10, BF
LINE (320, 42)-(213, 50), 9, BF
LINE (320, 4)-(290, 37), 10, BF

LINE (1, 92)-(30, 100), 9, BF
LINE (80, 92)-(228, 100), 9, BF
LINE (320, 92)-(290, 100), 9, BF


LINE (1, 142)-(107, 150), 9, BF
LINE (320, 142)-(213, 150), 9, BF

LINE (32, 152)-(42, 190), 10, BF
LINE (1, 192)-(320, 200), 9, BF
LINE (1, 155)-(30, 187), 10, BF

LINE (288, 152)-(278, 190), 10, BF
LINE (320, 155)-(290, 187), 10, BF
RETURN


ml:
REM hat
DRAW "c4 r9 h2 l3 d2 u1 r4 l5 c15 d1 c4 r1 "
REM head
DRAW "bd1 c9r1 c15 d1 l3 d1 r1 f2 r2 e1 u1 l1 h2 bd2 p15,15 u2 r1 c6 r3 d2 h1 l1 h1"
REM blue shirt
DRAW "bd4 c9 r1 l2 d1 l1 d1 br2 r1 d1 r1 l3 r1 d2 r1 u3 d4 c15 u1 c9 l1 bu4 br2 f1"
REM overalls
DRAW "d1 c4 d4 l1 d3 l3 u2 h2 u1 c14 u1 c4 e3 r1 f2 d1 l1 d2 g1 h2 u1 l1 d3 br1 p4,4"
REM boots
DRAW "bd3 c6 r3 d1 l4 u1"
RETURN

ll:
REM hat
DRAW "c2 r9 h2 l3 d2 u1 r4 l5 c15 d1 c2 r1 "
REM head
DRAW "bd1 c11r1 c15 d1 l3 d1 r1 f2 r2 e1 u1 l1 h2 bd2 p15,15 u2 r1 c6 r3 d2 h1 l1 h1"
REM blue shirt
DRAW "bd4 c11 r1 l2 d1 l1 d1 br2 r1 d1 r1 l3 r1 d2 r1 u3 d4 c15 u1 c11 l1 bu4 br2 f1"
REM overalls
DRAW "d1 c2 d4 l1 d3 l3 u2 h2 u1 c14 u1 c2 e3 r1 f2 d1 l1 d2 g1 h2 u1 l1 d3 br1 p2,2"
REM boots
DRAW "bd3 c6 r3 d1 l4 u1 bu15"
RETURN

mr:
REM hat
DRAW "c4 r9 l9 e2 r3 d2 u1 l4 r5 c15 d1 c4 l1 "
REM head
DRAW "bd1 c9l1 c15 d1 r3 d1 l1 g2 l2 h1 u1 r1 e2 bd2 p15,15 u2 l1 c6 l3 d2 e1 r1 e1"
REM blue shirt
DRAW "bd4 c9 l1 r2 d1 r1 d1 bl2 l1 d1 l1 r3 l1 d2 l1 u3 d4 c15 u1 c9 r1 bu4 bl2 g1"
REM overalls
DRAW "d1 c4 d4 r1 d3 r3 u2 e2 u1 c14 u1 c4 h3 l1 g2 d1 r1 d2 f1 e2 u1 r1 d3 bl1 p4,4"
REM boots
DRAW "bd3 c6 l3 d1 r4 u1 bu15 bl5"
RETURN

lr:
REM hat
DRAW "c2 r9 l9 e2 r3 d2 u1 l4 r5 c15 d1 c2 l1 "
REM head
DRAW "bd1 c11 l1 c15 d1 r3 d1 l1 g2 l2 h1 u1 r1 e2 bd2 p15,15 u2 l1 c6 l3 d2 e1 r1 e1"
REM blue shirt
DRAW "bd4 c11l1 r2 d1 r1 d1 bl2 l1 d1 l1 r3 l1 d2 l1 u3 d4 c15 u1 c11r1 bu4 bl2 g1"
REM overalls
DRAW "d1 c2 d4 r1 d3 r3 u2 e2 u1 c14 u1 c2 h3 l1 g2 d1 r1 d2 f1 e2 u1 r1 d3 bl1 p2,2"
REM boots
DRAW "bd3 c6 l3 d1 r4 u1 bu15"
RETURN


game:

mt$ = INKEY$
IF mt$ = CHR$(27) THEN END
IF mt$ = "d" THEN mmac = 1

IF mmac = 1 THEN DRAW "br5 "
GOSUB mr

mmac = 0
GOTO game


