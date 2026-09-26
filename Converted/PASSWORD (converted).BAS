PRINT
PRINT "type password"
PRINT
10password$ = "*"
20inpass$ = INKEY$
IF inpass$ = "" THEN GOTO 20
IF inpass$ = password$ THEN END ELSE GOTO 10
PRINT password; correct