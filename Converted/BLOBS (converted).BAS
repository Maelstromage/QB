DIM bx(1 TO 1380)
DIM by(1 TO 1380)

SCREEN 8

RANDOMIZE TIMER
'blobs
Title:
CLS
LOCATE 4, 14: PRINT CHR$(219)
LOCATE 5, 14: PRINT CHR$(219)
LOCATE 6, 14: PRINT CHR$(219)
LOCATE 7, 14: PRINT CHR$(219)
LOCATE 8, 14: PRINT CHR$(219)
LOCATE 9, 14: PRINT CHR$(219)

LOCATE 4, 15: PRINT CHR$(219)
LOCATE 5, 15: PRINT CHR$(219)
LOCATE 6, 15: PRINT CHR$(219)
LOCATE 7, 15: PRINT CHR$(219)
LOCATE 8, 15: PRINT CHR$(219)
LOCATE 9, 15: PRINT CHR$(219)

LOCATE 4, 16: PRINT CHR$(219)
LOCATE 5, 17: PRINT CHR$(219)
LOCATE 6, 16: PRINT CHR$(219)
LOCATE 7, 16: PRINT CHR$(219)
LOCATE 8, 17: PRINT CHR$(219)
LOCATE 9, 16: PRINT CHR$(219)

LOCATE 4, 17: PRINT CHR$(219)
LOCATE 5, 18: PRINT CHR$(219)
LOCATE 6, 17: PRINT CHR$(219)
LOCATE 7, 17: PRINT CHR$(219)
LOCATE 8, 18: PRINT CHR$(219)
LOCATE 9, 17: PRINT CHR$(219)

LOCATE 4, 21: PRINT CHR$(219)
LOCATE 5, 21: PRINT CHR$(219)
LOCATE 6, 21: PRINT CHR$(219)
LOCATE 7, 21: PRINT CHR$(219)
LOCATE 8, 21: PRINT CHR$(219)
LOCATE 9, 21: PRINT CHR$(219)

LOCATE 4, 22: PRINT CHR$(219)
LOCATE 5, 22: PRINT CHR$(219)
LOCATE 6, 22: PRINT CHR$(219)
LOCATE 7, 22: PRINT CHR$(219)
LOCATE 8, 22: PRINT CHR$(219)
LOCATE 9, 22: PRINT CHR$(219)

LOCATE 8, 23: PRINT CHR$(219)
LOCATE 8, 24: PRINT CHR$(219)
LOCATE 8, 25: PRINT CHR$(219)
LOCATE 9, 23: PRINT CHR$(219)
LOCATE 9, 24: PRINT CHR$(219)
LOCATE 9, 25: PRINT CHR$(219)

CIRCLE (300, 50), 100, 15

LOCATE 4, 54: PRINT CHR$(219)
LOCATE 5, 54: PRINT CHR$(219)
LOCATE 6, 54: PRINT CHR$(219)
LOCATE 7, 54: PRINT CHR$(219)
LOCATE 8, 54: PRINT CHR$(219)
LOCATE 9, 54: PRINT CHR$(219)

LOCATE 4, 55: PRINT CHR$(219)
LOCATE 5, 55: PRINT CHR$(219)
LOCATE 6, 55: PRINT CHR$(219)
LOCATE 7, 55: PRINT CHR$(219)
LOCATE 8, 55: PRINT CHR$(219)
LOCATE 9, 55: PRINT CHR$(219)

LOCATE 4, 56: PRINT CHR$(219)
LOCATE 5, 57: PRINT CHR$(219)
LOCATE 6, 56: PRINT CHR$(219)
LOCATE 7, 56: PRINT CHR$(219)
LOCATE 8, 57: PRINT CHR$(219)
LOCATE 9, 56: PRINT CHR$(219)
              

LOCATE 4, 57: PRINT CHR$(219)
LOCATE 5, 58: PRINT CHR$(219)
LOCATE 6, 57: PRINT CHR$(219)
LOCATE 7, 57: PRINT CHR$(219)
LOCATE 8, 58: PRINT CHR$(219)
LOCATE 9, 57: PRINT CHR$(219);

PRINT "  's"
LOCATE 23, 1: PRINT "Press any key to start!"
DO WHILE INKEY$ = "": LOOP
CLS
LINE (150, 0)-(639, 199), , B
LINE (0, 0)-(639, 199), , B






nob = 2
start:
GOSUB begin
5GOSUB blob
GOSUB move
GOSUB stat
GOTO 5
END


begin:
10bx(1) = INT(RND * 79) + 1: IF bx(1) < 21 THEN GOTO 10
20by(1) = INT(RND * 23) + 1: IF bx(1) < 2 THEN GOTO 20
b1h = INT(RND * 99)
b1s = 99 - b1h
b1l = INT(RND * 99)
b1a = 99 - b1l
30bx(2) = INT(RND * 80) + 1: IF bx(2) < 21 THEN GOTO 30
40by(2) = INT(RND * 23) + 1: IF by(2) < 2 THEN GOTO 40
b2h = INT(RND * 99)
b2s = 99 - b2h
b2l = INT(RND * 99)
b2a = 99 - b2l


stat:
LOCATE 1, 1
PRINT bx(1)
PRINT by(1)
PRINT b1h; "happy"
PRINT b1s; "sad"
PRINT b1a; "angry"
PRINT b1l; "love"

PRINT bx(2)
PRINT by(2)
PRINT b2h; "happy"
PRINT b2s; "sad"
PRINT b2a; "angry"
PRINT b2l; "love"
RETURN




blob:
'nob = # of blobs
'wb = which blob
FOR wb = 1 TO nob
'color for blobs
IF wb = 1 THEN x = bx(1): y = by(1): a = b1a: h = b1h: s = b1s: l = b1l
IF wb = 2 THEN x = bx(2): y = by(2): a = b2a: h = b2h: s = b2s: l = b2l




                            


                           
IF h > s AND h > a AND h > l THEN c = 14
IF s > h AND s > a AND s > l THEN c = 1
IF l >= s AND l > a AND l >= h THEN c = 12
IF a >= s AND a >= h AND a > l THEN c = 8




COLOR c
LOCATE by(wb), bx(wb): IF c <> 8 THEN PRINT CHR$(2):   ELSE IF c = 8 THEN PRINT CHR$(1)

NEXT wb
FOR tim = 1 TO 5000: NEXT tim
RETURN

move:
FOR mbl = 1 TO nob
500mob = INT(RND * 4) + 1

REM V--new statment
LOCATE by(mbl), bx(mbl): PRINT " "

'DO WHILE INKEY$ = "": LOOP
IF mob = 1 THEN bx(mbl) = bx(mbl) - 1
IF mob = 2 THEN bx(mbl) = bx(mbl) + 1
IF mob = 3 THEN by(mbl) = by(mbl) - 1
IF mob = 4 THEN by(mbl) = by(mbl) + 1
IF by(mbl) < 2 OR by(mbl) > 23 THEN GOSUB fixit: GOTO 500
IF bx(mbl) < 21 OR bx(mbl) > 79 THEN GOSUB fixit: GOTO 500


GOSUB moch

NEXT mbl


RETURN

moch:
FOR movche = 1 TO mbl - 1
IF bx(mbl) = bx(movche) AND by(mbl) = by(movche) THEN GOSUB fixit: GOTO 500
NEXT movche
RETURN

fixit:
IF mob = 1 THEN bx(mbl) = bx(mbl) + 1
IF mob = 2 THEN bx(mbl) = bx(mbl) - 1
IF mob = 3 THEN by(mbl) = by(mbl) + 1
IF mob = 4 THEN by(mbl) = by(mbl) - 1

RETURN

100bx(1) = INT(RND * 79) + 1: IF bx(1) < 21 THEN GOTO 10
200by(1) = INT(RND * 23) + 1: IF bx(1) < 2 THEN GOTO 20
b1h = INT(RND * 99)
b1s = 99 - b1h
b1l = INT(RND * 99)
b1a = 99 - b1l
300bx(2) = INT(RND * 80) + 1: IF bx(2) < 21 THEN GOTO 30
400by(2) = INT(RND * 23) + 1: IF by(2) < 2 THEN GOTO 40
b2h = INT(RND * 99)
b2s = 99 - b2h
b2l = INT(RND * 99)
b2a = 99 - b2l