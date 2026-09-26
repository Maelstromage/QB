lives = 3
delaylimit = 30
RANDOMIZE TIMER
s:

car1x = 20: car1y = 1
a = 23: b = 20
SCREEN 7
LOCATE 1, 1: PRINT CHR$(8); lives
FOR y = 1 TO 23
LOCATE y, 30: PRINT CHR$(179)
LOCATE y, 10: PRINT CHR$(179)
NEXT y
start:
move$ = INKEY$
IF move$ = "6" THEN b = b + 1: LOCATE a, b - 1: PRINT " "
IF move$ = "4" THEN b = b - 1: LOCATE a, b + 1: PRINT " "
'IF move$ = "," THEN delaylimit = delaylimit + 5
'IF move$ = "." THEN delaylimit = delaylimit - 5
'IF delay < 0 THEN delay = 0


IF b > 29 THEN b = 29
IF b < 11 THEN b = 11
COLOR 8
LOCATE a, b: PRINT CHR$(8)
IF move$ = CHR$(27) THEN END
delay = delay + 1

IF delay = delaylimit THEN GOSUB badcars
GOSUB chit
IF delay > delaylimit THEN delay = 0
GOTO start
badcars:

IF car1y > 22 OR car1y < 1 THEN LOCATE car1y, car1x: PRINT " ": car1x = INT(RND * 19) + 1: car1y = 0: car1x = car1x + 10
car1y = car1y + 1

COLOR 3

LOCATE car1y, car1x: PRINT CHR$(8)
IF car1y <> 1 THEN LOCATE car1y - 1, car1x: PRINT " "



RETURN
chit:
IF car1y = a AND car1x = b THEN lives = lives - 1: GOTO s
IF lives = 0 THEN PRINT "the end": END



RETURN

