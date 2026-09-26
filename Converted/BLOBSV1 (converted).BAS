DIM bx(1 TO 1380)
DIM by(1 TO 1380)
DIM bh(1 TO 1380)
DIM bs(1 TO 1380)
DIM ba(1 TO 1380)
DIM bl(1 TO 1380)




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
5GOSUB blob       'draws blobs
GOSUB interact    'interactions between blobs
GOSUB mood        'changes mood
GOSUB move        'moves blob
GOSUB stat        'displays status
GOTO 5
END


begin:
FOR bbb = 1 TO nob
10bx(bbb) = INT(RND * 79) + 1: IF bx(1) < 21 THEN GOTO 10
20by(bbb) = INT(RND * 23) + 1: IF bx(1) < 2 THEN GOTO 20
bh(bbb) = INT(RND * 99)
bs(bbb) = 99 - bh(bbb)
bl(bbb) = INT(RND * 99)
ba(bbb) = 99 - bl(bbb)
NEXT bbb


stat:
FOR stats = 1 TO nob
IF stats = 1 THEN LOCATE 1, 1
IF stats = 2 THEN LOCATE 8, 1
PRINT bx(stats); "X     "
PRINT by(stats); "Y     "
PRINT bh(stats); "happy "
PRINT bs(stats); "sad   "
PRINT ba(stats); "angry "
PRINT bl(stats); "love  "
NEXT stats



RETURN




blob:
'nob = # of blobs
'wb = which blob
FOR wb = 1 TO nob
'color for blobs




                            


                           
IF bh(wb) > bs(wb) AND bh(wb) > ba(wb) AND bh(wb) > bl(wb) THEN c = 14
IF bs(wb) > bh(wb) AND bs(wb) > ba(wb) AND bs(wb) > bl(wb) THEN c = 1
IF bl(wb) >= bs(wb) AND bl(wb) > ba(wb) AND bl(wb) >= bh(wb) THEN c = 12
IF ba(wb) >= bs(wb) AND ba(wb) >= bh(wb) AND ba(wb) > bl(wb) THEN c = 8




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
mood:
FOR chmo = 1 TO nob
rchm = INT(RND * 4) + 1
IF rchm = 1 THEN bh(chmo) = bh(chmo) + 1: bs(chmo) = bs(chmo) - 1
IF rchm = 2 THEN bs(chmo) = bs(chmo) + 1: bh(chmo) = bh(chmo) - 1
IF rchm = 3 THEN ba(chmo) = ba(chmo) + 1: bl(chmo) = bl(chmo) - 1
IF rchm = 4 THEN bl(chmo) = bl(chmo) + 1: ba(chmo) = ba(chmo) - 1
NEXT chmo
RETURN