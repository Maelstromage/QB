RANDOMIZE TIMER
CLS
SCREEN 8
DIM d$(50)
DIM py(5000)
DIM px(5000)



starty = 2: startx = 2
endy = 4: endx = 6
REM      12345678|1|2345678|2|2345678|3|
d$(1) = "1111111111111111111111111111111"
d$(2) = "1010000000010000000000000000001"
d$(3) = "1010111111110111111111011111101"
d$(4) = "1010000000010100000000000000101"
d$(5) = "1010111111110111111111101110101"
d$(6) = "1010000000000000000000000000101"
d$(7) = "1011101111111111111111110111101"
d$(8) = "1000000000000000000000000000001"
d$(9) = "1111111111111111111111111111111"
'd$(10)=

tx = 31
ty = 9





MAIN:
GOSUB drawmap
GOSUB solve
END

drawmap:

FOR drawmapy = 1 TO ty
FOR drawmapx = 1 TO tx
bit$ = MID$(d$(drawmapy), drawmapx, 1)


IF bit$ = "1" THEN LOCATE drawmapy, drawmapx: PRINT "Û"
NEXT drawmapx
NEXT drawmapy
COLOR 12
LOCATE endy, endx: PRINT CHR$(232)


RETURN
solve:
COLOR 9
LOCATE starty, startx: PRINT CHR$(2)
cy = starty: cx = startx

solve2:
hfy = endy - cy: hfx = endx - cx
LOCATE 1, 70: PRINT hfy; hfx



cup = VAL(MID$(d$(cy - 1), cx, 1))
cright = VAL(MID$(d$(cy), cx + 1, 1))
cdown = VAL(MID$(d$(cy + 1), cx, 1))
cleft = VAL(MID$(d$(cy), cx - 1, 1))




LOCATE 3, 76: PRINT cup
LOCATE 4, 77: PRINT cright
LOCATE 5, 76: PRINT cdown
LOCATE 4, 75: PRINT cleft




px(cpx) = cx
py(cpy) = cy

cpx = cpx + 1
cpy = cpy + 1
LOCATE 8, 60: PRINT "px:"; px(cpx - 1); "py:"; py(cpy - 1)
LOCATE 9, 60: PRINT "cx:"; cx; "cy:"; cy

IF (cup + cright + cdown + cleft) = 3 THEN GOSUB nochoice
IF (cup + cright + cdown + cleft) = 2 THEN GOSUB twochoice
IF (cup + cright + cdown + cleft) = 1 THEN GOSUB threechoice
IF (cup + cright + cdown + cleft) = 0 THEN GOSUB threechoice


'IF ABS(hfy) > ABS(hfx) THEN wpwxy$ = "y" ELSE wpwxy$ = "x"
'IF hfy > 0 THEN

IF cy = endy AND cx = endx THEN LOCATE 23, 1: PRINT "solved in "; cpx; "turns": END

GOTO solve2

RETURN


nochoice:
IF cup = 0 THEN LOCATE cy, cx: PRINT " ": cy = cy - 1: GOTO nochoice2
IF cdown = 0 THEN LOCATE cy, cx: PRINT " ": cy = cy + 1: GOTO nochoice2
IF cleft = 0 THEN LOCATE cy, cx: PRINT " ": cx = cx - 1: GOTO nochoice2
IF cright = 0 THEN LOCATE cy, cx: PRINT " ": cx = cx + 1: GOTO nochoice2
nochoice2:
COLOR 9
LOCATE cy, cx: PRINT CHR$(2)

RETURN


twochoice:


IF cup = 0 AND py(cpy - 2) <> cy - 1 THEN LOCATE cy, cx: PRINT " ": cy = cy - 1: GOTO twochoice2
IF cdown = 0 AND py(cpy - 2) <> cy + 1 THEN LOCATE cy, cx: PRINT " ": cy = cy + 1: GOTO twochoice2
IF cleft = 0 AND px(cpx - 2) <> cx - 1 THEN LOCATE cy, cx: PRINT " ": cx = cx - 1: GOTO twochoice2
IF cright = 0 AND px(cpx - 2) <> cx + 1 THEN LOCATE cy, cx: PRINT " ": cx = cx + 1: GOTO twochoice2


twochoice2:
COLOR 9
LOCATE cy, cx: PRINT CHR$(2)
RETURN

threechoice:
'GOSUB confused
whichway = INT(RND * 4) + 1
IF whichway = 1 AND cup = 0 AND py(cpy - 2) <> cy - 1 THEN LOCATE cy, cx: PRINT " ": cy = cy - 1: RETURN
IF whichway = 2 AND cdown = 0 AND py(cpy - 2) <> cy + 1 THEN LOCATE cy, cx: PRINT " ": cy = cy + 1: RETURN
IF whichway = 3 AND cleft = 0 AND px(cpx - 2) <> cx - 1 THEN LOCATE cy, cx: PRINT " ": cx = cx - 1: RETURN
IF whichway = 4 AND cright = 0 AND px(cpx - 2) <> cx + 1 THEN LOCATE cy, cx: PRINT " ": cx = cx + 1: RETURN

GOTO threechoice





confused:
LOCATE cy, cx: PRINT "?"
END

RETURN