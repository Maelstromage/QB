'INPUT na$
s:
p = 0
conver% = 0
er = 0
x = 0
y = 0


INPUT "dec "; x
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

conver% = 2 ^ (p - 1)
PRINT conver%

FOR a = p TO 1 STEP -1
IF x >= conver% THEN
    er = er + ((10 ^ a) / 10)
    x = x - conver%
END IF
    
conver% = conver% / 2

NEXT a

PRINT
PRINT er

GOTO s