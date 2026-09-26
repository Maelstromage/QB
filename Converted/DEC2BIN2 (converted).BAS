'INPUT na$

PRINT "1. decimal to binary"
PRINT "2. binary to decimal"
s0:
cho$ = INKEY$
IF cho$ = "1" THEN GOTO s
IF cho$ = "2" THEN GOTO s2
GOTO s0
                         
s:
er$ = "                                                                                                                                                                             "
z = 2
p = 0
conver% = 0
er = 0
x = 0
y = 0


INPUT "decimal (type 1 to end)> ", x
IF x = 1 THEN END
y = x
x = x + 1
DO WHILE x > 1
x = x / 2
PRINT x
p = p + 1
LOOP
x = y
PRINT
PRINT p

conver = 2 ^ (p - 1)
PRINT conver


FOR a = p TO 1 STEP -1
    z = z + 1
IF x >= conver THEN

    MID$(er$, z, 1) = "1"
    'er = er + ((10 ^ a) / 10)
    x = x - conver
    ELSEMID$(er$, z, 1) = "0"
END IF
    
conver = conver / 2

NEXT a

PRINT
PRINT er$

GOTO s
s2:

DO WHILE m