SCREEN 7, , 1, 0
DIM x(24)
DIM y(24)
DIM place(32)

DIM rcheck(500)
DIM bcheck(500)
DIM rsq(500)
x(1) = 20
y(1) = 33

FOR a = 1 TO 12
place(a) = 1
NEXT a
FOR a = 21 TO 32
place(a) = 1
NEXT a

'FOR a = 1 TO 32
'PRINT place(a);
'PCOPY 1, 0
'NEXT a
'DO WHILE INKEY$ = "": LOOP

cx = 75
cy = 19
curcol = 9
curcol2 = 1
curpla = 1

co = 7
ico = 0


initialization:
GOSUB drawboard
GOSUB drawcheckers

main:
GOSUB command




GOTO main


drawboard:
LINE (0, 0)-(319, 199), 12, B
FOR drawbrd = 1 TO 7
LINE (0, (25 * drawbrd) - 1)-(319, (25 * drawbrd - 1)), 12
LINE ((40 * drawbrd) - 1, 0)-((40 * drawbrd) - 1, 199), 12
NEXT drawbrd
FOR colorbrdy = 1 TO 4
FOR colorbrd = 1 TO 4

PAINT (78 * colorbrd, (48 * colorbrdy) - 25), 4, 12
PAINT ((78 * colorbrd) - 40, 48 * colorbrdy), 4, 12
NEXT colorbrd
NEXT colorbrdy

PCOPY 1, 0
PCOPY 1, 2
RETURN

drawcheckers:
GET (1, 25)-(38, 47), rsq(0)


CIRCLE (x(1), y(1)), 17, co, , , 5 / 25
CIRCLE (x(1), y(1) + 7), 17, co, 3, , 5 / 25
LINE (x(1) - 17, y(1))-(x(1) - 17, y(1) + 7), co
LINE (x(1) + 17, y(1))-(x(1) + 17, y(1) + 7), co
PAINT (x(1), y(1)), ico, co
PAINT (x(1), y(1) + 7), ico, co
PCOPY 1, 0

GET (1, 25)-(38, 47), bcheck(0)
co = 15
ico = 4

CIRCLE (x(1), y(1)), 17, co, , , 5 / 25
CIRCLE (x(1), y(1) + 7), 17, co, 3, , 5 / 25
LINE (x(1) - 17, y(1))-(x(1) - 17, y(1) + 7), co
LINE (x(1) + 17, y(1))-(x(1) + 17, y(1) + 7), co
PAINT (x(1), y(1)), ico, co
PAINT (x(1), y(1) + 7), ico, co
PCOPY 1, 0

GET (1, 25)-(38, 47), rcheck(0)


'  GET [STEP](x1,y1)-[STEP](x2,y2),arrayname[(indices)]
'   þ (x1,y1) and (x2,y2) are numeric expressions that are the screen
'      coordinates of diagonally opposite corners of the rectangle to store
'   þ STEP enables you to use relative screen coordinates
'   þ arrayname indicates the array where the image will be stored
'   þ indices enable you to start storing the image information in some
'      array element other than the first one
'

drawallcheckers:
y(1) = 0
FOR c = 1 TO 4
FOR a = 1 TO 4
wc = a
y(a) = y(a) + 25
x(a) = ((a * 2) * 40) - 79
IF c < 2 THEN GOSUB putbchk
IF c > 2 THEN GOSUB putrchk
y(a) = y(a) - 24
x(a) = ((a * 2) * 40) - 40
IF c < 3 THEN GOSUB putbchk
IF c > 3 THEN GOSUB putrchk
y(a) = y(a) + 49

NEXT a
NEXT c
FOR a = 1 TO 24
y(a) = 0
x(a) = 0
NEXT a


GOSUB drawcursor
RETURN

command:
cmd$ = ""
cmd$ = INKEY$

IF cmd$ = CHR$(0) + "H" THEN
 IF cy > 20 THEN
  IF cx > 45 THEN
   cx = cx - 40: cy = cy - 25: curpla = curpla - 4
  END IF
 END IF
END IF

IF cmd$ = CHR$(0) + "K" THEN
 IF cx > 45 THEN
  IF cy < 175 THEN
   cx = cx - 40: cy = cy + 25: curpla = curpla + 4
  END IF
 END IF
END IF

IF cmd$ = CHR$(0) + "M" THEN
 IF cx < 300 THEN
  IF cy > 20 THEN
   cx = cx + 40: cy = cy - 25: curpla = curpla - 4
  END IF
 END IF
END IF

IF cmd$ = CHR$(0) + "P" THEN
 IF cx < 300 THEN
  IF cy < 175 THEN
   cx = cx + 40: cy = cy + 25: curpla = curpla + 4
  END IF
 END IF
END IF


IF cmd$ = CHR$(27) THEN END
IF cmd$ = "" THEN GOTO command

drawcursor:
LOCATE 2, 1: PRINT "  "
LOCATE 2, 1: PRINT curpla

LINE (cx, cy)-(cx, cy + 2), curcol
LINE (cx, cy)-(cx + 2, cy), curcol
LINE (cx, cy)-(cx + 3, cy + 3), curcol
LINE (cx, cy + 3)-(cx + 2, cy + 1), curcol2
LINE (cx + 1, cy + 2)-(cx + 3, cy + 4), curcol2
PCOPY 1, 0
LINE (cx, cy)-(cx + 3, cy + 4), 4, BF
RETURN



putrsq:
PUT (x(wc), y(wc)), rsq(0), PSET
PCOPY 1, 0
RETURN

putrchk:
PUT (x(wc), y(wc)), rcheck(0), PSET
PCOPY 1, 0
RETURN


putbchk:
PUT (x(wc), y(wc)), bcheck(0), PSET
PCOPY 1, 0
RETURN