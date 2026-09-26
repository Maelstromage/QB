delaylimit = 30
RANDOMIZE TIMER
CAR1X = 20: car1y = 1
a = 23: b = 20
SCREEN 7
FOR y = 1 TO 23
LOCATE y, 30: PRINT CHR$(179)
LOCATE y, 10: PRINT CHR$(179)
NEXT y
start:
move$ = INKEY$
IF move$ = "6" THEN b = b + 1: LOCATE a, b - 1: PRINT " "
IF move$ = "4" THEN b = b - 1: LOCATE a, b + 1: PRINT " "
IF b > 29 THEN b = 29
IF b < 11 THEN b = 11
COLOR 8
LOCATE a, b: PRINT CHR$(8)
IF move$ = CHR$(27) THEN END
delay = delay + 1

IF delay = delaylimit THEN GOSUB badcars
IF delay > delaylimit THEN delay = 0
GOTO start
badcars:

IF car1y > 22 OR car1y < 1 THEN LOCATE car1y, CAR1X: PRINT " ": CAR1X = INT(RND * 19) + 1: car1y = 0: CAR1X = CAR1X + 10
car1y = car1y + 1

COLOR 3

LOCATE car1y, CAR1X: PRINT CHR$(8)
IF car1y <> 1 THEN LOCATE car1y - 1, CAR1X: PRINT " "



RETURN