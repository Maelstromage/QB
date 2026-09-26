RANDOMIZE TIMER
ta = 100
s:
IF ta < 0 THEN END
IF ta > 255 THEN ta = 255

x = 35

an = INT(RND * 3) + 1
CLS
LOCATE 1, 60: PRINT "$"; ta
PRINT "Pick a card."
LOCATE 10, 34: PRINT "XXX  XXX  XXX"
LOCATE 11, 34: PRINT "XXX  XXX  XXX"
LOCATE 12, 34: PRINT "XXX  XXX  XXX"
LOCATE 14, x: PRINT "^"

move:
mv$ = INKEY$
IF mv$ = "" THEN GOTO move
IF mv$ = CHR$(27) THEN END
IF mv$ = CHR$(0) + "K" THEN LOCATE 14, x: PRINT " ": x = x - 5: IF x < 35 THEN x = 45
IF mv$ = CHR$(0) + "M" THEN LOCATE 14, x: PRINT " ": x = x + 5: IF x > 45 THEN x = 35
IF mv$ = CHR$(13) THEN GOTO checkcard
LOCATE 14, x: PRINT "^"
GOTO move

checkcard:
IF x = 35 AND an = 1 THEN GOTO win
IF x = 40 AND an = 2 THEN GOTO win
IF x = 45 AND an = 3 THEN GOTO win
GOTO lose

win:
whm = INT(RND * 2) + 1
IF whm = 1 THEN wan = 20
IF whm = 2 THEN wan = 50
LOCATE 11, x - 1: PRINT wan
LOCATE 11, x - 1: PRINT "+"
ta = ta + wan
DO WHILE INKEY$ = "": LOOP
GOTO s
END

lose:
lhm = INT(RND * 2) + 1
IF lhm = 1 THEN lan = -10
IF lhm = 2 THEN lan = -40
LOCATE 11, x - 1: PRINT lan
ta = ta + lan
'PRINT "lose"
DO WHILE INKEY$ = "": LOOP
GOTO s
END