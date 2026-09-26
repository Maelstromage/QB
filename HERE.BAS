startgame:
RANDOMIZE TIMER
GOSUB help
GOSUB plnu
CLS
GOSUB board
game: GOSUB move
GOSUB board
GOSUB wincheck
GOTO game



help:
SCREEN 12
CLS
PRINT "Make sure that num lock is on."
PRINT "Use the number pad on the right of the key board as direction."
PRINT "(4 is left, up is 8)"
PRINT "press the spacebar to move squares."
PRINT "press Esc to escape"
PRINT
PRINT "The object of the game is to put the numbers in order starting with one in the  top left corner."
PRINT "When you win it will look like this."
PRINT "          1  2  3  4"
PRINT "          5  6  7  8"
PRINT "          9  10 11 12"
PRINT "          13 14 15 "

PRINT " IF YOU WIN YOU'LL FIND OUT HOW TO RUN AOL."
DO WHILE INKEY$ = "": LOOP
RETURN


plnu:
aa: a = INT(RND * 16) + 1
bb: b = INT(RND * 16) + 1
IF a = b THEN GOTO bb
cc: c = INT(RND * 16) + 1
IF c = b OR c = a THEN GOTO cc
dd: d = INT(RND * 16) + 1
IF d = b OR d = c OR d = a THEN GOTO dd
ee: e = INT(RND * 16) + 1
IF e = b OR e = c OR e = a OR e = d THEN GOTO ee
ff: f = INT(RND * 16) + 1
IF f = b OR f = c OR f = a OR f = d OR f = e THEN GOTO ff
gg: g = INT(RND * 16) + 1
IF g = b OR g = c OR g = a OR g = d OR g = e OR g = f THEN GOTO gg
hh: h = INT(RND * 16) + 1
IF h = b OR h = c OR h = a OR h = d OR h = e OR h = f OR h = g THEN GOTO hh
ii: i = INT(RND * 16) + 1
IF i = b OR i = c OR i = a OR i = d OR i = e OR i = f OR i = g OR i = h THEN GOTO ii
jj: j = INT(RND * 16) + 1
IF j = b OR j = c OR j = a OR j = d OR j = e OR j = f OR j = g OR j = h OR j = i THEN GOTO jj
kk: k = INT(RND * 16) + 1
IF k = b OR k = c OR k = a OR k = d OR k = e OR k = f OR k = g OR k = h OR k = i OR k = j THEN GOTO kk
ll: l = INT(RND * 16) + 1
IF l = b OR l = c OR l = a OR l = d OR l = e OR l = f OR l = g OR l = h OR l = i OR l = j OR l = k THEN GOTO ll
mm: m = INT(RND * 16) + 1
IF m = b OR m = c OR m = a OR m = d OR m = e OR m = f OR m = g OR m = h OR m = i OR m = j OR m = k OR m = l THEN GOTO mm
nn: n = INT(RND * 16) + 1
IF n = b OR n = c OR n = a OR n = d OR n = e OR n = f OR n = g OR n = h OR n = i OR n = j OR n = k OR n = l OR n = m THEN GOTO nn
oo: o = INT(RND * 16) + 1
IF o = b OR o = c OR o = a OR o = d OR o = e OR o = f OR o = g OR o = h OR o = i OR o = j OR o = k OR o = l OR o = m OR o = n THEN GOTO oo
pp: p = INT(RND * 16) + 1
IF p = b OR p = c OR p = a OR p = d OR p = e OR p = f OR p = g OR p = h OR p = i OR p = j OR p = k OR p = l OR p = m OR p = n OR p = o THEN GOTO pp

board:
PAINT (1, 1), 9
LINE (200, 100)-(439, 379), 14, B
wac = 200
FOR z = 1 TO 3
wac = wac + 60
LINE (wac, 100)-(wac, 379), 14
NEXT z
wdw = 100
FOR z = 1 TO 3
wdw = wdw + 70
LINE (200, wdw)-(439, wdw), 14
NEXT z















IF cr = 0 THEN cr = 1

DRAW "bm201, 101 p0,14"
DRAW "bm281, 101 p0,14"
DRAW "bm361, 101 p0,14"
DRAW "bm400, 101 p0,14"
DRAW "bm201, 171 p0,14"
DRAW "bm281, 171 p0,14"
DRAW "bm361, 171 p0,14"
DRAW "bm400, 171 p0,14"
DRAW "bm201, 251 p0,14"
DRAW "bm281, 251 p0,14"
DRAW "bm361, 251 p0,14"
DRAW "bm400, 251 p0,14"
DRAW "bm201, 321 p0,14"
DRAW "bm281, 321 p0,14"
DRAW "bm361, 321 p0,14"
DRAW "bm400, 321 p0,14"

IF cr = 1 THEN DRAW "bm201, 101 p12,14"
IF cr = 2 THEN DRAW "bm281, 101 p12,14"
IF cr = 3 THEN DRAW "bm361, 101 p12,14"
IF cr = 4 THEN DRAW "bm400, 101 p12,14"
IF cr = 5 THEN DRAW "bm201, 171 p12,14"
IF cr = 6 THEN DRAW "bm281, 171 p12,14"
IF cr = 7 THEN DRAW "bm361, 171 p12,14"
IF cr = 8 THEN DRAW "bm400, 171 p12,14"
IF cr = 9 THEN DRAW "bm201, 251 p12,14"
IF cr = 10 THEN DRAW "bm281, 251 p12,14"
IF cr = 11 THEN DRAW "bm361, 251 p12,14"
IF cr = 12 THEN DRAW "bm400, 251 p12,14"
IF cr = 13 THEN DRAW "bm201, 321 p12,14"
IF cr = 14 THEN DRAW "bm281, 321 p12,14"
IF cr = 15 THEN DRAW "bm361, 321 p12,14"
IF cr = 16 THEN DRAW "bm400, 321 p12,14"
                                      
LOCATE 9, 28: IF a <> 16 THEN PRINT a
LOCATE 9, 35: IF b <> 16 THEN PRINT b
LOCATE 9, 42: IF c <> 16 THEN PRINT c
LOCATE 9, 50: IF d <> 16 THEN PRINT d
LOCATE 13, 28: IF e <> 16 THEN PRINT e
LOCATE 13, 35: IF f <> 16 THEN PRINT f
LOCATE 13, 42: IF g <> 16 THEN PRINT g
LOCATE 13, 50: IF h <> 16 THEN PRINT h
LOCATE 18, 28: IF i <> 16 THEN PRINT i
LOCATE 18, 35: IF j <> 16 THEN PRINT j
LOCATE 18, 42: IF k <> 16 THEN PRINT k
LOCATE 18, 50: IF l <> 16 THEN PRINT l
LOCATE 22, 28: IF m <> 16 THEN PRINT m
LOCATE 22, 35: IF n <> 16 THEN PRINT n
LOCATE 22, 42: IF o <> 16 THEN PRINT o
LOCATE 22, 50: IF p <> 16 THEN PRINT p

RETURN
move:

gg$ = INKEY$
IF gg$ = CHR$(27) THEN SYSTEM
IF gg$ = CHR$(0) + "H" THEN cr = cr - 4: GOSUB outra: RETURN
IF gg$ = CHR$(0) + "K" THEN cr = cr - 1: GOSUB outra: RETURN
IF gg$ = CHR$(0) + "P" THEN cr = cr + 4: GOSUB outra: RETURN
IF gg$ = CHR$(0) + "M" THEN cr = cr + 1: GOSUB outra: RETURN
IF gg$ = " " THEN GOTO movebox
IF cr < 1 THEN cr = 16: GOSUB outra: RETURN
IF cr > 16 THEN cr = 1: GOSUB outra: RETURN
GOTO move


outra:
IF gg$ = "8" AND cr < 1 THEN cr = cr + 16
IF gg$ = "4" AND cr < 1 THEN cr = 16
IF gg$ = "2" AND cr > 16 THEN cr = cr - 16
IF gg$ = "6" AND cr > 16 THEN cr = 1
RETURN

movebox:
IF cr = 1 AND e = 16 THEN SWAP a, e
IF cr = 1 AND b = 16 THEN SWAP a, b
IF cr = 2 AND a = 16 THEN SWAP b, a
IF cr = 2 AND f = 16 THEN SWAP b, f
IF cr = 2 AND c = 16 THEN SWAP b, c
IF cr = 3 AND b = 16 THEN SWAP c, b
IF cr = 3 AND g = 16 THEN SWAP c, g
IF cr = 3 AND d = 16 THEN SWAP c, d
IF cr = 4 AND c = 16 THEN SWAP d, c
IF cr = 4 AND h = 16 THEN SWAP d, h
IF cr = 5 AND a = 16 THEN SWAP e, a
IF cr = 5 AND f = 16 THEN SWAP e, f
IF cr = 5 AND i = 16 THEN SWAP e, i
IF cr = 6 AND b = 16 THEN SWAP f, b
IF cr = 6 AND e = 16 THEN SWAP f, e
IF cr = 6 AND j = 16 THEN SWAP f, j
IF cr = 6 AND g = 16 THEN SWAP f, g
IF cr = 7 AND c = 16 THEN SWAP g, c
IF cr = 7 AND f = 16 THEN SWAP g, f
IF cr = 7 AND k = 16 THEN SWAP g, k
IF cr = 7 AND h = 16 THEN SWAP g, h
IF cr = 8 AND d = 16 THEN SWAP h, d
IF cr = 8 AND g = 16 THEN SWAP h, g
IF cr = 8 AND l = 16 THEN SWAP h, l
IF cr = 9 AND e = 16 THEN SWAP i, e
IF cr = 9 AND j = 16 THEN SWAP i, j
IF cr = 9 AND m = 16 THEN SWAP i, m
IF cr = 10 AND f = 16 THEN SWAP j, f
IF cr = 10 AND i = 16 THEN SWAP j, i
IF cr = 10 AND n = 16 THEN SWAP j, n
IF cr = 10 AND k = 16 THEN SWAP j, k
IF cr = 11 AND g = 16 THEN SWAP k, g
IF cr = 11 AND j = 16 THEN SWAP k, j
IF cr = 11 AND o = 16 THEN SWAP k, o
IF cr = 11 AND l = 16 THEN SWAP k, l
IF cr = 12 AND h = 16 THEN SWAP l, h
IF cr = 12 AND k = 16 THEN SWAP l, k
IF cr = 12 AND p = 16 THEN SWAP l, p
IF cr = 13 AND i = 16 THEN SWAP m, i
IF cr = 13 AND n = 16 THEN SWAP m, n
IF cr = 14 AND m = 16 THEN SWAP n, m
IF cr = 14 AND j = 16 THEN SWAP n, j
IF cr = 14 AND o = 16 THEN SWAP n, o
IF cr = 15 AND n = 16 THEN SWAP o, n
IF cr = 15 AND k = 16 THEN SWAP o, k
IF cr = 15 AND p = 16 THEN SWAP o, p
IF cr = 16 AND o = 16 THEN SWAP p, o
IF cr = 16 AND l = 16 THEN SWAP p, l
RETURN
wincheck: IF a = 1 AND b = 2 AND c = 3 AND d = 4 THEN GOTO winch2
RETURN
winch2: IF e = 5 AND f = 6 AND g = 7 AND h = 8 THEN GOTO winch3
RETURN
winch3: IF i = 9 AND j = 10 AND k = 11 AND l = 12 THEN GOTO winch4
RETURN
winch4: IF m = 13 AND n = 14 AND o = 15 AND p = 16 THEN GOTO win
RETURN

win: LOCATE 1, 1: PRINT "You Win!!! "
DO WHILE INKEY$ = "": LOOP
INPUT "Play again"; pa$
IF pa$ = "yes" THEN RUN
PRINT " goto aol30a and type duh"
SYSTEM

