SCREEN 7
DRAW "bm   1,1"
GOSUB box
DRAW "bm 25,1"
GOSUB box
DRAW "bm 49,1"
GOSUB box
DRAW "bm 73,1"
GOSUB box
DRAW "bm 97,1"
GOSUB box
DRAW "bm 121,1"
GOSUB box
DRAW "bm 145,1"
GOSUB box
DRAW "bm 169,1"
GOSUB box
DRAW "bm 193,1"
GOSUB box
DRAW "bm 217,1"
GOSUB box
DRAW "bm 241,1"
GOSUB box
DRAW "bm 265,1"
GOSUB box
DRAW "bm 289,1"
GOSUB box
DRAW "bm  1,21"
GOSUB box
DRAW "bm   25,21"
GOSUB box
DRAW "bm  49,21"
GOSUB box
DRAW "bm  73,21"
GOSUB box
DRAW "bm  97,21"
GOSUB box
DRAW "bm 121,21"
GOSUB box
DRAW "bm 145,21"
GOSUB box
DRAW "bm 169,21"
GOSUB box
DRAW "bm 193,21"
GOSUB box
DRAW "bm 217,21"
GOSUB box
DRAW "bm 241,21"
GOSUB box
DRAW "bm 265,21"
GOSUB box
DRAW "bm 289,21"
GOSUB box
DRAW "bm   1,41"
GOSUB box
DRAW "bm  25,41"
GOSUB box
DRAW "bm  49,41"
GOSUB box
DRAW "bm  73,41"
GOSUB box
DRAW "bm  97,41"
GOSUB box
DRAW "bm 121,41"
GOSUB box
DRAW "bm 145,41"
GOSUB box
DRAW "bm 169,41"
GOSUB box
DRAW "bm 193,41"
GOSUB box
DRAW "bm 217,41"
GOSUB box
DRAW "bm 241,41"
GOSUB box
DRAW "bm 265,41"
GOSUB mike
DRAW "bm 289,41"
GOSUB tree







END
box: DRAW "d20 r24  u20 l24"
RETURN
tree:
DRAW "bm+ 6,8 c3 d2 bm+ 1,2 u6 r1 d6 r1 d1 u2 c10 u1 c3 u6 r1 d10 r1 u11 r1 d11 r1 u11 r1 d12 r1 u11 c10 u1 f1 r1 f1 f1 r1 f1 d2 g1 d1 l1 d3 g1 c3 l2 u3 c10 u1 c3 u6 r1 d9 r1 u8 f1 d4 e1 u3 bm-3,9 c6 d3 l6 u4 r2 d1 r3 bd1 p6,6"
DRAW ""
RETURN
mike:
DRAW "bm+8,1 c4 r5 f2 d2 g1 h3 l1 g2 h1 u1 e2 bd1 p4,4": REM hair
DRAW "bd4 bl1 c14 f3 r1 e2 h3 l1 g2 br1 p14,14": REM face
DRAW "br2 u1 c0 d1 r2 bg1 c14 u1  "
RETURN

