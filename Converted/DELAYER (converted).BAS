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