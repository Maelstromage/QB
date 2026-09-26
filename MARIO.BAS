'QbasicMario
'Programmed By: Jonas Lindberg
'E-mail: Eel58@AOL.com
'controls:
'Forward=[3]
'jump=[5]
'crouch=[2]
'Object: This one doesn't really have one. Just keep
'running.
'Enjoy!



SCREEN 13
DIM mariorun(806) AS INTEGER
DIM mariojump(806) AS INTEGER
DIM mariostand(806) AS INTEGER
DIM mariorun2(806) AS INTEGER
DIM mariorun3(806) AS INTEGER
DIM mariocrouch(806) AS INTEGER
DIM mushrooman(500) AS INTEGER
DIM coin1(400) AS INTEGER
DIM coin2(400) AS INTEGER
DIM turtle(288) AS INTEGER
DIM brick(400) AS INTEGER

DIM pit(400)  AS INTEGER
DIM g(4000)
hair = 41
face = 85

FOR mario = 1 TO 2
CLS
'hat
LINE (18, 5)-(11, 3), 30, BF
LINE (14, 6)-(22, 6), 30
LINE (10, 4)-(10, 5), 30
PSET (9, 5), 30
'hair
LINE (9, 6)-(11, 7), hair, B
LINE (7, 7)-(8, 11), hair, B
LINE (6, 10)-(6, 11), hair
LINE (9, 11)-(10, 12), hair, B
LINE (11, 8)-(12, 10), hair, B
'face
LINE (9, 8)-(10, 10), face, B
LINE (12, 6)-(13, 7), face, B
LINE (13, 8)-(19, 11), face, BF
LINE (20, 9)-(22, 10), face, B
LINE (11, 11)-(12, 12), face, B
LINE (13, 12)-(18, 12), face
LINE (15, 7)-(19, 7), 28
LINE (20, 8)-(21, 8), 28
LINE (14, 7)-(15, 8), 0, B
PSET (14, 8), 1
PSET (15, 8), 30
LINE (10, 13)-(16, 13), 28
PSET (14, 13), 4
LINE (15, 10)-(16, 11), 4, B
LINE (17, 11)-(19, 11), 4
PSET (16, 9), 4
PSET (14, 10), 4
'arm
LINE (6, 14)-(11, 18), 4, BF
LINE (12, 15)-(12, 17), 4
LINE (5, 15)-(5, 17), 4
LINE (6, 17)-(7, 20), face, B
LINE (5, 18)-(5, 19), face
LINE (8, 18)-(8, 20), face
PSET (7, 21), face
'body
LINE (13, 14)-(16, 23), 30, BF
LINE (17, 15)-(17, 23), 30
LINE (11, 19)-(12, 22), 30, B
LINE (9, 19)-(10, 21), 30, B
PSET (12, 18), 30
LINE (18, 18)-(18, 22), 28
LINE (15, 14)-(17, 23), 4
PSET (8, 21), 28
LINE (9, 22)-(10, 22), 28
LINE (11, 23)-(12, 23), 28
PSET (13, 24), 28
LINE (14, 24)-(17, 24), 30
LINE (9, 23)-(14, 25), 4
LINE (15, 25)-(16, 25), 4
PSET (17, 25), 30
PSET (10, 23), 4
PSET (12, 14), 30
IF mario = 1 OR mario = 2 THEN LINE (6, 24)-(10, 26), 30, BF: LINE (11, 25)-(12, 26), 30, B: LINE (18, 23)-(21, 25), 220, BF: LINE (20, 22)-(21, 22), 220: PSET (21, 21), 220: LINE (3, 24)-(5, 26), 220, BF: LINE (3, 27)-(4, 27), 220: PSET (3, 28),  _
220: IF mario = 1 THEN LINE (18, 15)-(21, 17), face, BF: LINE (19, 18)-(20, 18), face: GET (1, 1)-(26, 31), mariorun
IF mario = 2 THEN LINE (17, 13)-(20, 15), 4, B: LINE (18, 15)-(19, 16), 4, B: LINE (20, 11)-(21, 12), 4, B: PSET (19, 12), 4: PSET (20, 15), 4: PSET (19, 17), 4: LINE (23, 5)-(23, 9), 4: LINE (20, 7)-(23, 7), 4: PSET (22, 8), 4: LINE (19, 5)-(23, 5) _
, 4: LINE (19, 3)-(23, 4), face, BF: LINE (20, 2)-(22, 2), face: LINE (21, 3)-(22, 3), 4: GET (1, 1)-(26, 31), mariojump

NEXT mario
CLS
'hat
LINE (18, 5)-(11, 3), 30, BF
LINE (14, 6)-(22, 6), 30
LINE (10, 4)-(10, 5), 30
PSET (9, 5), 30
'hair
LINE (9, 6)-(11, 7), hair, B
LINE (7, 7)-(8, 11), hair, B
LINE (6, 10)-(6, 11), hair
LINE (9, 11)-(10, 12), hair, B
LINE (11, 8)-(12, 10), hair, B
'face
LINE (9, 8)-(10, 10), face, B
LINE (12, 6)-(13, 7), face, B
LINE (13, 8)-(19, 11), face, BF
LINE (20, 9)-(22, 10), face, B
LINE (11, 11)-(12, 12), face, B
LINE (13, 12)-(18, 12), face
LINE (15, 7)-(19, 7), 28
LINE (20, 8)-(21, 8), 28
LINE (14, 7)-(15, 8), 0, B
PSET (14, 8), 1
PSET (15, 8), 30
LINE (10, 13)-(16, 13), 28
PSET (14, 13), 4
LINE (15, 10)-(16, 11), 4, B
LINE (17, 11)-(19, 11), 4
PSET (16, 9), 4
PSET (14, 10), 4
'body
LINE (10, 14)-(11, 24), 30, BF
LINE (15, 14)-(16, 24), 30, BF
LINE (12, 20)-(14, 23), 30, BF
LINE (17, 24)-(19, 27), 30, BF
LINE (7, 24)-(9, 27), 30, BF
LINE (20, 25)-(20, 27), 30
LINE (6, 25)-(6, 27), 30
PSET (9, 23), 30
PSET (17, 23), 30
LINE (12, 14)-(14, 19), 4, BF
LINE (6, 16)-(9, 20), 4, BF
LINE (17, 16)-(20, 20), 4, BF
LINE (8, 14)-(9, 15), 4, BF
LINE (17, 14)-(18, 15), 4, BF
PSET (7, 15), 4
PSET (19, 15), 4
LINE (6, 21)-(9, 22), face, BF
LINE (17, 21)-(20, 22), face, BF
LINE (7, 23)-(8, 23), face
LINE (18, 23)-(19, 23), face
LINE (6, 28)-(9, 30), 220, BF
LINE (17, 28)-(20, 30), 220, BF
LINE (5, 29)-(5, 30), 220
LINE (21, 29)-(21, 30), 220
PSET (4, 30), 220
PSET (22, 30), 220
GET (1, 1)-(26, 31), mariostand
CLS
'hat
LINE (18, 5)-(11, 3), 30, BF
LINE (14, 6)-(22, 6), 30
LINE (10, 4)-(10, 5), 30
PSET (9, 5), 30
'hair
LINE (9, 6)-(11, 7), hair, B
LINE (7, 7)-(8, 11), hair, B
LINE (6, 10)-(6, 11), hair
LINE (9, 11)-(10, 12), hair, B
LINE (11, 8)-(12, 10), hair, B
'face
LINE (9, 8)-(10, 10), face, B
LINE (12, 6)-(13, 7), face, B
LINE (13, 8)-(19, 11), face, BF
LINE (20, 9)-(22, 10), face, B
LINE (11, 11)-(12, 12), face, B
LINE (13, 12)-(18, 12), face
LINE (15, 7)-(19, 7), 28
LINE (20, 8)-(21, 8), 28
LINE (14, 7)-(15, 8), 0, B
PSET (14, 8), 1
PSET (15, 8), 30
LINE (10, 13)-(16, 13), 28
PSET (14, 13), 4
LINE (15, 10)-(16, 11), 4, B
LINE (17, 11)-(19, 11), 4
PSET (16, 9), 4
PSET (14, 10), 4
'body
LINE (8, 15)-(17, 25), 30, BF
LINE (8, 14)-(11, 14), 30
LINE (8, 26)-(11, 26), 30
LINE (15, 26)-(17, 27), 30, BF
LINE (18, 17)-(18, 26), 30

LINE (7, 15)-(8, 16), 4, B
PSET (8, 14), 4
LINE (12, 14)-(15, 18), 4, BF
LINE (11, 14)-(11, 15), 4
LINE (16, 16)-(16, 20), 4
LINE (13, 19)-(15, 19), 4
LINE (18, 18)-(20, 21), 4, BF
LINE (17, 17)-(17, 21), 4
LINE (17, 23)-(12, 26), 4
PSET (18, 23), 4
LINE (8, 27)-(10, 27), 4
LINE (5, 24)-(7, 27), 220, BF
LINE (5, 28)-(6, 28), 220
PSET (5, 29), 220
LINE (15, 27)-(17, 30), 220, BF
LINE (18, 29)-(18, 30), 220
PSET (19, 30), 220
PSET (18, 26), 0
LINE (21, 18)-(22, 21), face, BF
LINE (23, 19)-(23, 20), face
GET (1, 1)-(26, 31), mariorun2
CLS 'hat

LINE (18, 5)-(11, 3), 30, BF
LINE (14, 6)-(22, 6), 30
LINE (10, 4)-(10, 5), 30
PSET (9, 5), 30
'hair
LINE (9, 6)-(11, 7), hair, B
LINE (7, 7)-(8, 11), hair, B
LINE (6, 10)-(6, 11), hair
LINE (9, 11)-(10, 12), hair, B
LINE (11, 8)-(12, 10), hair, B
'face
LINE (9, 8)-(10, 10), face, B
LINE (12, 6)-(13, 7), face, B
LINE (13, 8)-(19, 11), face, BF
LINE (20, 9)-(22, 10), face, B
LINE (11, 11)-(12, 12), face, B
LINE (13, 12)-(18, 12), face
LINE (15, 7)-(19, 7), 28
LINE (20, 8)-(21, 8), 28
LINE (14, 7)-(15, 8), 0, B
PSET (14, 8), 1
PSET (15, 8), 30
LINE (10, 13)-(16, 13), 28
PSET (14, 13), 4
LINE (15, 10)-(16, 11), 4, B
LINE (17, 11)-(19, 11), 4
PSET (16, 9), 4
PSET (14, 10), 4
'body
LINE (9, 14)-(17, 24), 30, BF
LINE (8, 18)-(8, 23), 30
LINE (10, 25)-(21, 25), 30
LINE (11, 26)-(20, 26), 30
LINE (18, 19)-(18, 24), 30
LINE (19, 23)-(20, 24), 30
PSET (21, 24), 30
LINE (17, 14)-(17, 15), 4
LINE (18, 16)-(18, 18), 4
LINE (10, 17)-(13, 21), 4, BF
LINE (11, 16)-(12, 16), 4
LINE (12, 22)-(14, 23), 4, BF
PSET (11, 22), 4
PSET (14, 21), 4
LINE (15, 21)-(16, 23), face, BF
PSET (17, 22), face
LINE (11, 27)-(13, 29), 220, BF
LINE (19, 26)-(19, 29), 220
LINE (18, 29)-(15, 26), 220
LINE (15, 26)-(17, 24), 220
LINE (17, 24)-(19, 26), 220
PAINT (17, 25), 220
LINE (14, 28)-(14, 29), 220
PSET (15, 29), 220
PSET (19, 24), 30
GET (1, 1)-(26, 31), mariorun3
CLS

'hat
LINE (18, 11)-(11, 9), 30, BF
LINE (14, 12)-(22, 12), 30
LINE (10, 10)-(10, 11), 30
PSET (9, 11), 30
'hair
LINE (9, 12)-(11, 13), hair, B
LINE (7, 13)-(8, 17), hair, B
LINE (6, 16)-(6, 17), hair
LINE (9, 17)-(10, 18), hair, B
LINE (11, 14)-(12, 16), hair, B
'face
LINE (9, 14)-(10, 16), face, B
LINE (12, 12)-(13, 13), face, B
LINE (13, 14)-(19, 17), face, BF
LINE (20, 15)-(22, 16), face, B
LINE (11, 17)-(12, 18), face, B
LINE (13, 18)-(18, 18), face
LINE (15, 13)-(19, 13), 28
LINE (20, 14)-(21, 14), 28
LINE (14, 13)-(15, 14), 0, B
PSET (14, 14), 1
PSET (15, 14), 30
LINE (10, 19)-(16, 19), 28
PSET (14, 19), 4
LINE (15, 16)-(16, 17), 4, B
LINE (17, 17)-(19, 17), 4
PSET (16, 15), 4
PSET (14, 16), 4
LINE (8, 20)-(20, 26), 4, BF
LINE (9, 20)-(19, 20), 4
LINE (12, 20)-(12, 24), 30
LINE (16, 20)-(16, 24), 30
LINE (12, 24)-(16, 29), 30, BF
LINE (7, 27)-(21, 29), 30, BF
LINE (6, 28)-(22, 29), 30, BF
LINE (5, 30)-(9, 30), 220
LINE (19, 30)-(23, 30), 220
LINE (8, 27)-(11, 28), face, BF
LINE (9, 29)-(10, 29), face
LINE (16, 27)-(19, 28), face, BF
LINE (17, 29)-(18, 29), face
GET (1, 1)-(26, 31), mariocrouch
CLS

FOR f = 1 TO 1000
READ g(f)
NEXT f

brown = 160
LINE (13, 3)-(7, 9), brown
LINE (7, 9)-(7, 11), brown
LINE (7, 11)-(20, 11), brown
LINE (20, 11)-(20, 9), brown
LINE (20, 9)-(14, 3), brown
PAINT (14, 8), brown
LINE (12, 4)-(15, 1), 0, BF
LINE (10, 8)-(10, 10), 0
LINE (10, 10)-(13, 10), 0
LINE (13, 10)-(11, 8), 0
LINE (18, 8)-(18, 10), 0
LINE (18, 10)-(15, 10), 0
LINE (15, 10)-(17, 8), 0
LINE (11, 12)-(16, 13), 30, BF
LINE (10, 14)-(12, 15), 220, B
LINE (15, 14)-(17, 15), 220, B
PSET (10, 12), 30
PSET (17, 12), 30
PSET (20, 11), 0
PSET (7, 11), 0
GET (5, 1)-(22, 16), mushrooman

CLS
CIRCLE (7, 10), 8, 160, , , 1.5
PAINT (7, 10), 160

CIRCLE (7, 10), 4, 0, , , 1.5
GET (1, 1)-(20, 20), coin1
CLS
LINE (2, 7)-(5, 7), 42
LINE (4, 6)-(5, 7), 42, B
PSET (5, 8), 42
LINE (3, 9)-(5, 9), 42
LINE (6, 2)-(6, 10), 30
LINE (5, 3)-(5, 4), 30
PSET (5, 5), 1

LINE (7, 6)-(10, 6), 2
PSET (7, 7), 2
LINE (10, 5)-(13, 5), 2
LINE (13, 6)-(15, 6), 2
LINE (15, 6)-(15, 9), 2
LINE (16, 9)-(16, 14), 2
LINE (16, 14)-(4, 14), 2
LINE (4, 14)-(4, 12), 2
LINE (5, 12)-(5, 10), 2
LINE (6, 10)-(6, 7), 2
PAINT (10, 10), 2
LINE (16, 14)-(4, 14), 30
LINE (4, 14)-(4, 12), 30
LINE (5, 12)-(5, 10), 30
PSET (7, 8), 1
PSET (7, 12), 1
PSET (9, 9), 1
PSET (10, 12), 1
PSET (10, 7), 1
PSET (12, 11), 1
PSET (13, 9), 1
PSET (14, 11), 1
LINE (5, 15)-(6, 15), 42
LINE (14, 15)-(15, 15), 42
LINE (7, 4)-(7, 5), 30
PSET (15, 6), 0
GET (1, 1)-(18, 16), turtle
CLS

PAINT (10, 10), 160
LINE (1, 1)-(10, 9), 90, B
LINE (10, 9)-(20, 1), 90, B
LINE (1, 9)-(20, 18), 90, B
LINE (1, 2)-(1, 8), 160
LINE (20, 2)-(20, 8), 160
LINE (1, 10)-(1, 17), 160
GET (1, 1)-(20, 18), brick
CLS

PAINT (10, 10), 160
LINE (1, 1)-(10, 9), 90, B
LINE (10, 9)-(20, 1), 90, B
LINE (1, 9)-(20, 18), 90, B
LINE (1, 2)-(1, 8), 160
LINE (20, 2)-(20, 8), 160
LINE (1, 10)-(1, 17), 160
LINE (20, 1)-(20, 20), 0

CLS

GET (1, 1)-(20, 20), pit
jump$ = "no"
crouch$ = "no"
start:
y = 0
col = 0
CLS
'title screen
LINE (5, 5)-(310, 98), 45, B
FOR h = 6 TO 309
FOR u = 6 TO 97
PSET (h, u), col
col = col + 1
IF col > 256 THEN col = 0
NEXT
NEXT

COLOR 45
LOCATE 5, 10
PRINT "SUPER MARIO BROTHERS"
LINE (72, 31)-(230, 31), 0
LINE (71, 30)-(231, 40), 45, B
PUT (200, 100), coin1, PSET
FOR t = 0 TO 300 STEP 20
PUT (t, 181), brick, PSET
NEXT t
x2 = 300
y2 = 0
DO WHILE y2 < 200

y3 = y3 + .1
y = INT(y3)

y2 = y2 + 1

IF y3 > 4 THEN y3 = 1
FOR x = 1 TO 2000: NEXT x


SELECT CASE y
CASE 1
PUT (y2, 150), mariorun, PSET

CASE 2

PUT (y2, 150), mariorun2, PSET
CASE 3

PUT (y2, 150), mariorun3, PSET
END SELECT
LOOP

PUT (y2, 150), mariostand, PSET
FOR x = 1 TO 100000: IF x > 96000 THEN x2 = x2 - .01: PUT (x2, 165), turtle, PSET

NEXT x

PUT (y2, 150), mariocrouch, PSET
FOR x = 1 TO 1000: x2 = x2 - .01: PUT (x2, 165), turtle, PSET
NEXT x


PUT (y2, 150), mariostand, PSET
FOR x = 1 TO 1000: x2 = x2 - .01: PUT (x2, 165), turtle, PSET
 NEXT x
 SOUND 37, 1
 SOUND 57, 1
 SOUND 87, 1
 SOUND 37, 1
FOR x = 150 TO 100 STEP -.035
x2 = x2 - .03
PUT (x2, 165), turtle, PSET
PUT (y2, x), mariojump, PSET
NEXT x
FOR x = 100 TO 150 STEP .035
x2 = x2 - .03
PUT (x2, 165), turtle, PSET
PUT (y2, x), mariojump, PSET
NEXT x
PUT (y2, x), mariostand, PSET
FOR x = 1 TO 10000: NEXT x
DO WHILE x2 > 100
y3 = y3 + .1
y = INT(y3)

y2 = y2 + 1

IF y3 > 4 THEN y3 = 1
FOR x = 1 TO 2000: NEXT x
x2 = x2 - .7
PUT (x2, 165), turtle, PSET
IF y2 > 290 THEN PUT (290, 150), mariostand, PSET: GOTO n
SELECT CASE y
CASE 1
PUT (y2, 150), mariorun, PSET
CASE 2
PUT (y2, 150), mariorun2, PSET
CASE 3
PUT (y2, 150), mariorun3, PSET
END SELECT
n:
LOOP
   PLAY "t100"
   PLAY "MB o1l10gp32ep32cp16d#ep32d#dp24"
   PLAY "MB dfp24ga#p24o1gap24fp24dec"


LOCATE 15, 10
COLOR 1
PRINT "P"
LOCATE 15, 11
COLOR 4
PRINT "LAY SUPER MARIO BROTHERS"
LOCATE 17, 15
COLOR 1
PRINT "I"
LOCATE 17, 16
COLOR 4
PRINT "NSTRUCTIONS"
LOCATE 19, 19
COLOR 1
PRINT "Q"
COLOR 4
LOCATE 19, 20
PRINT "UIT"
h:
IF INKEY$ = "p" THEN GOTO game
IF INKEY$ = "q" THEN END
IF INKEY$ = "i" THEN GOTO i
GOTO h

i:
CLS
COLOR 45
PRINT "***********CONTROLS***************"
PRINT "*          5= JUMP               *"
PRINT "*1= LEFT   2= CROUCH    3= RIGHT *"
PRINT "*0= FIRE                         *"
PRINT "*          P= PAUSE              *"
PRINT "**********************************"
DO WHILE INKEY$ = ""
LOOP
GOTO start


game:
CLS
m = 0
y = 0
marioy = 150

main:

n = INT(m + mariomove)
m = m + mariomove
IF m > 20 THEN m = 0
jump = jump - .25
IF jump > 0 THEN marioy = marioy - .25
IF jump$ = "yes" AND jump < 1 THEN marioy = marioy + .35: IF marioy > 150 AND g(y + 5) = 1 THEN marioy = 150: jump$ = "no"
IF jump$ = "yes" AND marioy < 160 THEN PUT (100, marioy), mariojump, PSET
IF g(y + 5) = 0 THEN jump$ = "yes"

SELECT CASE INKEY$
CASE "3"
mariomove = mariomove + .125
IF mariomove > .5 THEN mariomove = .5
crouch$ = "no"
CASE "1"
mariomove = mariomove - .125
IF mariomove < 0 THEN mariomove = 0
crouch$ = "no"
CASE ""
mariomove = mariomove - .001953125#

IF mariomove < 0 THEN mariomove = 0
CASE "2"
crouch$ = "yes"
IF jump$ = "no" THEN PUT (100, 150), mariocrouch, PSET
CASE "5"

IF jump$ = "no" AND crouch$ = "no" THEN PLAY "c": jump = 100 * mariomove: IF jump = 0 THEN jump = 20
IF jump$ = "no" AND crouch$ = "yes" AND mariomove > 0 THEN jump = 100: crouch$ = "no": PLAY "d"
jump$ = "yes"
CASE "p"
DO WHILE INKEY$ = ""
LOOP

END SELECT
IF marioy > 159 THEN BEEP: GOTO start
IF n > 20 THEN n = 0
FOR p = 20 TO 300 STEP 20
y = y + 1
IF y = 990 THEN GOTO win
IF g(y - 1) = 0 THEN PUT (p - n, 179), pit, PSET

IF g(y) = 1 OR g(y) = 3 AND g(y - 1) = 1 THEN PUT (p - n, 179), brick, PSET

IF g(y) = 0 THEN PUT (p - n, 179), pit, PSET
IF g(y) = 3 AND p - n - tu > 100 AND p - n - tu < 120 AND jump$ = "yes" AND marioy > 130 THEN turtl$ = "no": tu = 0: g(y) = 1: PLAY "MB A": PUT (126, 160), pit, PSET: jump = -1
IF g(y) = 3 AND p - n - tu = 120 AND marioy > 149 THEN BEEP: GOTO start

IF g(y) = 3 THEN turtl$ = "yes": tu = tu + .25: IF p - n - tu > 0 THEN PUT (p - n - tu, 160), turtle, PSET:   ELSE turtl$ = "no": tu = 0: PUT (0, 160), pit, PSET: g(y) = 1

NEXT p

 IF n = 20 THEN y = y - 14
 IF n < 20 THEN y = y - 15
walk = walk + 1 * mariomove
IF walk > 22 AND mariomove = .5 THEN walk = 1
IF walk > 21 AND mariomove = .25 THEN walk = 1

IF mariomove = 0 AND jump$ = "no" AND crouch$ = "no" THEN PUT (100, 150), mariostand, PSET
IF walk < 20 THEN GOTO main
IF crouch$ = "yes" THEN GOTO main
IF jump$ = "yes" THEN GOTO main
i = i + 1
IF i > 4 THEN i = 1
SELECT CASE i
CASE 0
PUT (100, 150), mariocrouch, PSET
CASE 1
PUT (100, 150), mariorun, PSET
CASE 2
PUT (100, 150), mariorun2, PSET
CASE 3
PUT (100, 150), mariorun3, PSET
END SELECT
GOTO main
win:
PRINT "You won!"


DATA 1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,3,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,3,1,1,1,1,1,0,0,0,1,1,1,1
DATA 3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,3,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1
DATA 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,0,1,1,1,1,1,1,1,0,1,0,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1


