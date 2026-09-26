cfg:scr = 8
c = 15
DIM li(10000)
DIM co(10000)
CLS
menu:
SCREEN scr
'if scr=
'line


FOR a = 1 TO 10000
10: li$ = INKEY$
IF li$ = "" THEN GOTO 10
IF li$ = "6" THEN DRAW "r": li(a) = 6
IF li$ = "8" THEN DRAW "u": li(a) = 8
IF li$ = "4" THEN DRAW "l": li(a) = 4
IF li$ = "2" THEN DRAW "d": li(a) = 2
IF li$ = "7" THEN DRAW "h": li(a) = 7
IF li$ = "9" THEN DRAW "e": li(a) = 9
IF li$ = "1" THEN DRAW "g": li(a) = 1
IF li$ = "3" THEN DRAW "f": li(a) = 3
IF li$ = CHR$(27) THEN END
IF li$ = CHR$(0) + ";" THEN GOSUB help: GOTO 10
IF li$ = CHR$(0) + "<" THEN
    c = c + 1
    co(a) = c
    DRAW "c=" + VARPTR$(c)
    IF c = 16 THEN DRAW "c0"
    IF c = 16 THEN LOCATE 1, 1: COLOR 15: PRINT "Black "
    IF c = 1 THEN LOCATE 1, 1: COLOR 1: PRINT "Blue  "
    IF c = 2 THEN LOCATE 1, 1: COLOR 2: PRINT "Green "
    IF c = 3 THEN LOCATE 1, 1: COLOR 3: PRINT "Cyan  "
    IF c = 4 THEN LOCATE 1, 1: COLOR 4: PRINT "Red   "
    IF c = 5 THEN LOCATE 1, 1: COLOR 5: PRINT "Pink  "
    IF c = 6 THEN LOCATE 1, 1: COLOR 6: PRINT "Brown "
    IF c = 7 THEN LOCATE 1, 1: COLOR 7: PRINT "White "
    IF c = 8 THEN LOCATE 1, 1: COLOR 8: PRINT "Grey  "
    IF c = 9 THEN LOCATE 1, 1: COLOR 9: PRINT "Lblue "
    IF c = 10 THEN LOCATE 1, 1: COLOR 10: PRINT "LGreen"
    IF c = 11 THEN LOCATE 1, 1: COLOR 11: PRINT "LCyan "
    IF c = 12 THEN LOCATE 1, 1: COLOR 12: PRINT "LRed  "
    IF c = 13 THEN LOCATE 1, 1: COLOR 13: PRINT "LPink "
    IF c = 14 THEN LOCATE 1, 1: COLOR 14: PRINT "Yellow"
    IF c = 15 THEN LOCATE 1, 1: COLOR 15: PRINT "BWhite"
    IF c = 16 THEN c = 0
    GOTO 10
END IF
'This will have to be modified when i make it for all computers
'screen 0-2 and 10-11 are lame
IF li$ = CHR$(0) + "=" THEN
    scr = scr + 1
    SCREEN scr
    LOCATE 2, 1: PRINT "screen"; scr
   
    IF scr < 6 THEN scr = 6
    IF scr > 12 THEN scr = 6
    IF scr = 9 THEN scr = 11
    GOTO 10
END IF
IF li$ = CHR$(0) + "?" THEN : aa = a: GOTO save

'end of modification
LOCATE 1, 1: PRINT a
NEXT a

help:
PRINT "test"
RETURN

save:
   
LOCATE 4, 1: PRINT "Save File As"
LOCATE 5, 1: INPUT  sa$
sa$ = MID$(sa$, 1, 8)
LOCATE 23, 1: PRINT "saving..."
FOR a = 1 TO aa

IF co(a) = 16 THEN dr$ = dr$ + "c0"
IF co(a) = 1 THEN dr$ = dr$ + "c1"
IF co(a) = 2 THEN dr$ = dr$ + "c2"
IF co(a) = 3 THEN dr$ = dr$ + "c3"
IF co(a) = 4 THEN dr$ = dr$ + "c4"
IF co(a) = 5 THEN dr$ = dr$ + "c5"
IF co(a) = 6 THEN dr$ = dr$ + "c6"
IF co(a) = 7 THEN dr$ = dr$ + "c7"
IF co(a) = 8 THEN dr$ = dr$ + "c8"
IF co(a) = 9 THEN dr$ = dr$ + "c9"
IF co(a) = 10 THEN dr$ = dr$ + "c10"
IF co(a) = 11 THEN dr$ = dr$ + "c11"
IF co(a) = 12 THEN dr$ = dr$ + "c12"
IF co(a) = 13 THEN dr$ = dr$ + "c13"
IF co(a) = 14 THEN dr$ = dr$ + "c14"
IF co(a) = 15 THEN dr$ = dr$ + "c15"


IF li(a) = 6 THEN dr$ = dr$ + "r"
IF li(a) = 8 THEN dr$ = dr$ + "u"
IF li(a) = 4 THEN dr$ = dr$ + "l"
IF li(a) = 2 THEN dr$ = dr$ + "d"
IF li(a) = 7 THEN dr$ = dr$ + "h"
IF li(a) = 9 THEN dr$ = dr$ + "e"
IF li(a) = 1 THEN dr$ = dr$ + "g"
IF li(a) = 3 THEN dr$ = dr$ + "f"


LOCATE 22, 1: PRINT INT(a / aa * 100); "%"
NEXT a
LOCATE 23, 1: PRINT "Saved                   "
LOCATE 22
OPEN sa$ + ".bas" FOR OUTPUT AS #1
WRITE #1, dr$
CLOSE
a = aa - 1
GOTO 10
RETURN