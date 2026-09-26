GOTO 2
delayer:
CLS
hmsec = 1
s1:s1timesec = VAL(MID$(TIME$, 7, 2))
LOCATE 1, 1: PRINT s1timesec; "s1"
IF s1timesec > 55 - hmsec THEN GOTO s1

s2:s2timesec = VAL(MID$(TIME$, 7, 2))
LOCATE 1, 1: PRINT s2timesec; "s2"
IF s2timesec > 55 - hmsec THEN GOTO s2
IF s2timesec <> s1timesec + 1 THEN GOTO s2
ss:stimesec = VAL(MID$(TIME$, 7, 2))
LOCATE 1, 1
PRINT stimesec; "stime"

IF stimesec > 55 - hmsec THEN GOTO ss

FOR delayt = 1 TO 500000
ctimesec = VAL(MID$(TIME$, 7, 2))
LOCATE 1, 1: PRINT ctimesec; "ctime"
IF ctimesec = stimesec + hmsec THEN delay = delayt: delayt = 500000
NEXT delayt
LOCATE 2, 1
PRINT delay; "-delay"

'/\ delayer




2
SCREEN 8, , 1, 0 '640x200


COLOR 1
co = 15
px = 300



main:

GOSUB move
GOTO main

move:

mv$ = INKEY$
mv$ = UCASE$(mv$)
IF mv$ = CHR$(27) THEN END
IF mv$ = CHR$(0) + "K" THEN
    CLS
    LINE (0, 0)-(px, 100), 0
    GOSUB head
    GOSUB walkleft
    PCOPY 1, 0
    px = px - 30
    IF px < 30 THEN px = 30
END IF
IF mv$ = CHR$(0) + "M" THEN
    CLS
    LINE (0, 0)-(px, 100), 0
    GOSUB head
    GOSUB walkright
    PCOPY 1, 0
    px = px + 30
    IF px > 580 THEN px = 580
END IF
IF mv$ = "A" THEN
    CLS
    LINE (0, 0)-(px, 100), 0
    GOSUB head
    GOSUB hipunch
    PCOPY 1, 0
END IF
IF mv$ = "S" THEN
    CLS
    LINE (0, 0)-(px, 100), 0
    GOSUB head
    GOSUB medpunch
    PCOPY 1, 0
END IF

CLS
LINE (0, 0)-(px, 100), 0
GOSUB head
GOSUB still
PCOPY 1, 0
RETURN







DO WHILE INKEY$ = ""
CLS

LINE (0, 0)-(px, 100), 0

GOSUB head
GOSUB walkright
gg$ = INKEY$


DO WHILE INKEY$ = "": LOOP
PCOPY 1, 0
px = px + 30
IF px > 610 THEN px = 610

CLS
LINE (0, 0)-(px, 100), 0
GOSUB head
GOSUB still

PCOPY 1, 0
LOOP
  

END



head:

CIRCLE STEP(0, 0), 25, co
LINE STEP(-10, -3)-STEP(0, 1), co
LINE STEP(19, -1)-STEP(0, 1), co
LINE STEP(-11, 10)-STEP(5, 0), co
LINE STEP(-2, 3)-STEP(0, 30), co
RETURN

still:
LINE STEP(0, -20)-STEP(-20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-29, 0)-STEP(20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-71, 20)-STEP(30, 20), co
LINE STEP(-30, -20)-STEP(-30, 20), co
RETURN
walkleft:
LINE STEP(0, -20)-STEP(-20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-29, 0)-STEP(20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-71, 20)-STEP(0, 20), co
LINE STEP(0, -20)-STEP(-30, 20), co
RETURN
walkright:
LINE STEP(0, -20)-STEP(-20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-29, 0)-STEP(20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-71, 20)-STEP(30, 20), co
LINE STEP(-30, -20)-STEP(0, 20), co
RETURN

hipunch:
LINE STEP(0, -20)-STEP(-20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-29, 0)-STEP(20, 0), co
LINE STEP(0, 0)-STEP(65, -20), co
'LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-86, 40)-STEP(30, 20), co
LINE STEP(-30, -20)-STEP(-30, 20), co
RETURN


medpunch:
LINE STEP(0, -20)-STEP(-20, 0), co
LINE STEP(0, 0)-STEP(25, 10), co
LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-29, 0)-STEP(20, 0), co
LINE STEP(0, 0)-STEP(80, 0), co
'LINE STEP(0, 0)-STEP(25, -10), co
LINE STEP(-101, 20)-STEP(30, 20), co
LINE STEP(-30, -20)-STEP(-30, 20), co
RETURN