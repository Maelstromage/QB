'initialization
x = 40
y = 12
DIM r$(1 TO 25)
GOSUB village1



SCREEN 9
LOCATE 11, 40: PRINT "Welcome to:"
LOCATE 12, 40: PRINT "Happy Face RPG!"
PCOPY 1, 0
DO WHILE INKEY$ = "": LOOP
CLS




main:


move:
GOSUB PUTscreen
LOCATE y, x: PRINT CHR$(2)

move2:
mv$ = INKEY$
IF mv$ = "" THEN GOTO move2
px = x
py = y

IF mv$ = "6" THEN
    LOCATE y, x: PRINT " "
    x = x + 1
    GOSUB movecheck
END IF
IF mv$ = "2" THEN
    LOCATE y, x: PRINT " "
    y = y + 1
    GOSUB movecheck
END IF



IF mv$ = "8" THEN
    LOCATE y, x: PRINT " "
    y = y - 1
    GOSUB movecheck
END IF
IF mv$ = "4" THEN
    LOCATE y, x: PRINT " "
    x = x - 1
    GOSUB movecheck
END IF

GOTO move



PUTscreen:
FOR putscreenl = 1 TO 23
LOCATE putscreenl, 1: PRINT r$(putscreenl)
NEXT putscreenl
RETURN


movecheck:


IF MID$(r$(y), x, 1) = "л" THEN
    x = px
    y = py
END IF
RETURN



village1:
where$ = "Village1"
r$(1) = ""
r$(2) = ""
r$(3) = ""
r$(4) = ""
r$(5) = ""
r$(6) = "                         ллллллллллллллллллллллллллллллл"
r$(7) = "                         л                             л"
r$(8) = "                         л                             л"
r$(9) = "                         л                             л"
r$(10) = "                         ллллллллллллллллллллллллллллл л"
r$(11) = "                         л              л              л"
r$(12) = "                         л                             л"
r$(13) = "                         л              л              л"
r$(14) = "                         ллллллммллллллллллллллллллллллл"
r$(15) = ""
r$(16) = ""
r$(17) = ""
r$(18) = ""
r$(19) = ""
r$(20) = ""
r$(21) = ""
r$(22) = ""
r$(23) = ""
r$(24) = ""
r$(25) = ""

RETURN


where$ = "Village1"
r$(1) = ""
r$(2) = ""
r$(3) = ""
r$(4) = ""
r$(5) = ""
r$(6) = ""
r$(7) = ""
r$(8) = ""
r$(9) = ""
r$(10) = ""
r$(11) = ""
r$(12) = ""
r$(13) = ""
r$(14) = ""
r$(15) = ""
r$(16) = ""
r$(17) = ""
r$(18) = ""
r$(19) = ""
r$(20) = ""
r$(21) = ""
r$(22) = ""
r$(23) = ""
r$(24) = ""
r$(25) = ""