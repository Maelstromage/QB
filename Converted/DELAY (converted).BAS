CLS
'V delayer
s1 = VAL(MID$(TIME$, 7, 2))
s2 = VAL(MID$(TIME$, 7, 2))
LOCATE 1, 1: PRINT "s1-"; s1
DO WHILE s1 = s2
s2 = VAL(MID$(TIME$, 7, 2))
LOCATE 2, 1: PRINT "s2-"; s2
LOOP
ctime = VAL(MID$(TIME$, 7, 2))
LOCATE 3, 1: PRINT "ctime-"; ctime
DO WHILE s2 = ctime
delay = delay + 1
ctime = VAL(MID$(TIME$, 7, 2))
LOOP
LOCATE 3, 1: PRINT "ctime-"; ctime
PRINT "delay-"; delay
'^ delayer