SCREEN 7
DIM tree1(1 TO 1000)
DIM box1(1 TO 1000)
DRAW "bm0,0"
GOSUB tree


GET (0, 0)-(24, 20), tree1

CLS
DRAW "bm0,0"
GOSUB box
GET (0, 0)-(24, 20), box1








DIM r$(500)
SCREEN 7
GOSUB test
GOSUB pictures
s: GOSUB move
GOTO s

END
move:
mv$ = INKEY$
IF mv$ = CHR$(27) THEN END
mv = VAL(mv$)
IF mv = 0 THEN GOTO move
IF mv = 4 THEN xx = xx - 1
IF mv = 6 THEN xx = xx + 1
IF mv = 8 THEN yy = yy - 1
IF mv = 2 THEN yy = yy + 1



IF pxx = 12 AND xx = 13 THEN xxx = 13: GOSUB pictures
IF pxx = 13 AND xx = 12 THEN xxx = 0:  GOSUB pictures
IF pyy = 10 AND yy = 11 THEN yyy = 10: GOSUB pictures
IF pyy = 11 AND yy = 10 THEN yyy = 0: GOSUB pictures


pxx = xx
pyy = yy

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
r$(9) = "tbbbtbbbbbbtbbbbbbbbtbbbbbt"
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
IF pict$ = "b" THEN PUT STEP(0, 0), box1, PSET
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
IF rowdw = 10 THEN DRAW "bm0,179"

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












box: DRAW "c15 d19 r23  u19 l23 "
RETURN
tree:
DRAW "bm+ 6,8 c3 d2 bm+ 1,2 u6 r1 d6 r1 d1 u2 c10 u1 c3 u6 r1 d10 r1 u11 r1 d11 r1 u11 r1 d12 r1 u11 c10 u1 f1 r1 f1 f1 r1 f1 d2 g1 d1 l1 d3 g1 c3 l2 u3 c10 u1 c3 u6 r1 d9 r1 u8 f1 d4 e1 u3 bm-3,9 c6 d3 l6 u4 r2 d1 r3 bd1 p6,6"
DRAW ""
RETURN
hero:
DRAW "bm+8,1 c4 r5 f2 d2 g1 h3 l1 g2 h1 u1 e2 bd1 p4,4": REM hair
DRAW "bd4 bl1 c14 f3 r1 e2 h3 l1 g2 br1 p14,14": REM face
DRAW "br2 u1 c0 d1 r2 bg1 c14 u1  "
RETURN

