xx = 1
yy = 1
x = 1
y = 1
pxx = 1
pyy = 1

DIM r$(500)
SCREEN 7
GOSUB test
GOSUB pictures
s: GOSUB move
GOTO s

END
move:





snrd = 0
IF pxx = 12 AND xx = 13 THEN xxx = 13: x = 0: snrd = 1: GOSUB pictures
IF pxx = 13 AND xx = 12 THEN xxx = 0: x = 12: snrd = 1: GOSUB pictures
IF pyy = 9 AND yy = 10 THEN yyy = 10: y = 0: snrd = 1: GOSUB pictures
IF pyy = 10 AND yy = 9 THEN yyy = 0: y = 9: snrd = 1: GOSUB pictures

FOR dyax = 1 TO 2
IF dyax = 1 THEN dy = py: dx = px
IF dyax = 2 THEN dx = x: dy = y
IF dy = 0 THEN DRAW "bm0,0"
IF dy = 1 THEN DRAW "bm0,20"
IF dy = 2 THEN DRAW "bm0,40"
IF dy = 3 THEN DRAW "bm0,60"
IF dy = 4 THEN DRAW "bm0,80"
IF dy = 5 THEN DRAW "bm0,100"
IF dy = 6 THEN DRAW "bm0,120"
IF dy = 7 THEN DRAW "bm0,140"
IF dy = 8 THEN DRAW "bm0,160"
IF dy = 9 THEN DRAW "bm0,180"

IF dx = 0 THEN DRAW "br1"
IF dx = 1 THEN DRAW "br25"
IF dx = 2 THEN DRAW "br49"
IF dx = 3 THEN DRAW "br73"
IF dx = 4 THEN DRAW "br97"
IF dx = 5 THEN DRAW "br121"
IF dx = 6 THEN DRAW "br145"
IF dx = 7 THEN DRAW "br169"
IF dx = 8 THEN DRAW "br193"
IF dx = 9 THEN DRAW "br217"
IF dx = 10 THEN DRAW "br241"
IF dx = 11 THEN DRAW "br265"
IF dx = 12 THEN DRAW "br289"
IF snrd = 1 THEN GOTO snrds
IF dyax = 1 THEN
    GOSUB blackout
    pict$ = MID$(r$(pyy + 1), (pxx + 1), 1): GOSUB drawing
END IF
snrds:
IF dyax = 2 THEN GOSUB hero
NEXT dyax




LOCATE 1, 1: PRINT xx; " x"
LOCATE 2, 1: PRINT yy; " y"
LOCATE 3, 1: PRINT pxx; " pxx"
LOCATE 4, 1: PRINT pyy; " pyy"

move2:
mv$ = INKEY$
IF mv$ = CHR$(27) THEN END
mv = VAL(mv$)
IF mv = 0 THEN GOTO move2

pxx = xx
pyy = yy
px = x
py = y


IF mv = 4 THEN xx = xx - 1: x = x - 1
IF mv = 6 THEN xx = xx + 1: x = x + 1
IF mv = 8 THEN yy = yy - 1: y = y - 1
IF mv = 2 THEN yy = yy + 1: y = y + 1


IF MID$(r$(yy + 1), (xx + 1), 1) = "t" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
RETURN




test:
r$(1) = "tttttttttttttttttttttttttt"
r$(2) = "tbbbbbbbbbbbbbbbbbbbbbtbbt"
r$(3) = "tbbbbbbbbbbbbbbbbbbbbbtbbt"
r$(4) = "ttbbbtbbbbbbbbbbbbbtbbbbbt"
r$(5) = "tbbbbbtbbbbbbbtbbbbbbbbbbt"
r$(6) = "tbbtbbbbbbbbtbbbbtbbbbbbbt"
r$(7) = "tbtbbbbtbbbtbbbbbtbbbtbbbt"
r$(8) = "tbbbbbbbbbbbbbbbtbbbbbbbbt"
r$(9) = "tbbbtbbbbbbtbbbbbbbbtbbbbt"
r$(10) = "tbbbbbbtbbbbbbbtbbbbbbbbbt"
r$(11) = "tttbbtbbbbbtbbbbbbbtbbbbbt"
r$(12) = "tbbbbbbbbbbbbbbbbbbbbbtbbt"
r$(13) = "tbbbbbbbbbbbbbbbbbbbbbtbbt"
r$(14) = "ttbbbtbbbbbbbbbbbbbtbbbbbt"
r$(15) = "tbbbbbtbbbbbbbtbbbbbbbbbbt"
r$(16) = "tbbtbbbbbbbbtbbbbtbbbbbbbt"
r$(17) = "tbtbbbbtbbbtbbbbbtbbbtbbbt"
r$(18) = "tbbbbbbbbbbbbbbbtbbbbbbbbt"
r$(19) = "tbbbbbtbbbbbbbtbbbbbbbbbbt"
r$(20) = "tttttttttttttttttttttttttt"

RETURN

















pictures:
IF yy > 10 THEN yyy = 10
IF yy < 10 THEN yyy = 0
CLS
DRAW "bm0,0"

FOR rowdw = 1 TO 10
yyy = yyy + 1
FOR rowac = 1 TO 13
GOSUB where
IF rowdw = 4 AND rowac = 6 THEN abovhr$ = MID$(r$(yyy), (xxx + rowac), 1)



pict$ = MID$(r$(yyy), (xxx + rowac), 1): GOSUB drawing

NEXT rowac

NEXT rowdw
yyy = yyy - 10

RETURN

drawing:
IF pict$ = "b" THEN GOSUB bricks
IF pict$ = "t" THEN GOSUB tree
RETURN
where:

IF rowdw = 1 THEN DRAW "bm0,0"
IF rowdw = 2 THEN DRAW "bm0,20"
IF rowdw = 3 THEN DRAW "bm0,40"
IF rowdw = 4 THEN DRAW "bm0,60"
IF rowdw = 5 THEN DRAW "bm0,80"
IF rowdw = 6 THEN DRAW "bm0,100"
IF rowdw = 7 THEN DRAW "bm0,120"
IF rowdw = 8 THEN DRAW "bm0,140"
IF rowdw = 9 THEN DRAW "bm0,160"
IF rowdw = 10 THEN DRAW "bm0,180"

IF rowac = 1 THEN DRAW "br1"
IF rowac = 2 THEN DRAW "br25"
IF rowac = 3 THEN DRAW "br49"
IF rowac = 4 THEN DRAW "br73"
IF rowac = 5 THEN DRAW "br97"
IF rowac = 6 THEN DRAW "br121"
IF rowac = 7 THEN DRAW "br145"
IF rowac = 8 THEN DRAW "br169"
IF rowac = 9 THEN DRAW "br193"
IF rowac = 10 THEN DRAW "br217"
IF rowac = 11 THEN DRAW "br241"
IF rowac = 12 THEN DRAW "br265"
IF rowac = 13 THEN DRAW "br289"



RETURN











grass:
DRAW "c3 d19 r23 u19 l23 bm+1,+1 p3,3 bm +3,+4 c10 u1 h1 bm +5,+3 u1 bm+10,12 u1 e1 bm-10,+2 m+0,0"
RETURN
box: DRAW "c15 d19 r23  u19 l23 "
RETURN
tree:
DRAW "c3 d19 r23  u19 l23 bm+1,+1 p3,3"
DRAW "bm+ 3,6 c10 d2 bm+ 1,2 u6 r1 d6 r1 d1 u2 c14 u1 c10 u6 r1 d10 r1 u11 r1 d11 r1 u11 r1 d12 r1 u11 c14 u1 f1 r1 f1 f1 r1 f1 d2 g1 d1 l1 d3 g1 c10 l2 u3 c14 u1 c10 u6 r1 d9 r1 u8 f1 d4 e1 u3 bm-3,9 c6 d3 l6 u4 r2 d1 r3 bd1 p6,6"
DRAW ""
RETURN
hero:
DRAW "bm+8,1 c4 r5 f2 d2 g1 h3 l1 g2 h1 u1 e2 bd1 p4,4": REM hair
DRAW "bd4 bl1 c14 f3 r1 e2 h3 l1 g2 br1 p14,14": REM face
DRAW "br2 u1 c0 d1 r2 bg1 c14 u1  "
RETURN
bricks:
DRAW "bd1 c12 r3 f1 d2 l1 c4 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c12 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c12 r5 d1 c4 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c12 r3 f1 d2 l1 c4 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c12 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c12 r5 d1 c4 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
RETURN
blackout:
DRAW "c0 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 u19"
RETURN

