CLS
SCREEN 8



games:
PAINT (1, 1), 12
LINE (200, 22)-(500, 112), 4, BF
LINE (180, 12)-(480, 102), 0, B
DRAW "bu1 bl1 p0,0"
LINE (183, 13)-(478, 100), 15, B
LINE (2, 1)-(637, 198), 0, B
LINE (5, 3)-(634, 196), 0, B
LOCATE 5, 28: PRINT "1. Aster"
LOCATE 6, 28: PRINT "2. Box Game"
LOCATE 7, 28: PRINT "3. Crystal Quest"
LOCATE 8, 28: PRINT "4. Dice"
LOCATE 9, 28: PRINT "5. Hangman "
LOCATE 10, 28: PRINT "6. Shuttle"
LOCATE 11, 28: PRINT "7. Pong"
LOCATE 12, 28: PRINT "8. Junkship"
COLOR 15
LOCATE 3, 28: PRINT "Welcome to Reverse Games Inc."

l: ga$ = INKEY$
IF ga$ = "1" THEN RUN "c:\windows\desktop\qb\games\Aster.bas"
IF ga$ = "2" THEN RUN "c:\windows\desktop\qb\games\boxgame.bas"
IF ga$ = "3" THEN RUN "c:\windows\desktop\qb\games\crstlqst.bas"
IF ga$ = "4" THEN RUN "c:\windows\desktop\qb\games\dice.bas"
IF ga$ = "5" THEN RUN "c:\windows\desktop\qb\games\hangman.bas"
IF ga$ = "6" THEN RUN "c:\windows\desktop\qb\games\shuttle.bas"
IF ga$ = "7" THEN RUN "c:\windows\desktop\qb\games\pong.bas"
IF ga$ = "8" THEN RUN "c:\windows\desktop\qb\game\junkship.bas"


IF ga$ = CHR$(27) THEN CLS : SYSTEM
GOTO l


