CLS
SCREEN 8
yinyang$ = "111111"
x = 5
y = 5
xx = 1
yy = 4



main:
GOSUB dict
END

dict:
FOR a = 1 TO 4
READ yinyang$, name$
GOSUB hexagram
LOCATE yy, xx: PRINT name$
xx = xx + 12: x = x + 107
NEXT a
RETURN


hexagram:
yyy = y
GOSUB first
GOSUB second
GOSUB third
GOSUB fourth
GOSUB fifth
GOSUB sixith
y = yyy
RETURN

trigram:
GOSUB first
GOSUB second
GOSUB third
RETURN

first:
x = x
y = y
IF MID$(yinyang$, 1, 1) = "0" THEN GOSUB yin ELSE GOSUB yang
RETURN


second:
x = x
y = y + 2
IF MID$(yinyang$, 2, 1) = "0" THEN GOSUB yin ELSE GOSUB yang
RETURN

third:
x = x
y = y + 2
IF MID$(yinyang$, 3, 1) = "0" THEN GOSUB yin ELSE GOSUB yang
RETURN

fourth:
x = x
y = y + 2
IF MID$(yinyang$, 4, 1) = "0" THEN GOSUB yin ELSE GOSUB yang
RETURN

fifth:
x = x
y = y + 2
IF MID$(yinyang$, 5, 1) = "0" THEN GOSUB yin ELSE GOSUB yang
RETURN

sixith:
x = x
y = y + 2
IF MID$(yinyang$, 6, 1) = "0" THEN GOSUB yin ELSE GOSUB yang
RETURN




yin:
LINE (x, y)-(x + 25, y)
RETURN
yang:
LINE (x, y)-(x + 11, y)
LINE (x + 14, y)-(x + 25, y)
RETURN

DATA 000000, creative, 111111, receptive,101110,difficulty,011101,immaturity