SCREEN 8, , 1, 0
CLS
PCOPY 0, 1
PRINT "Please Wait Calculating Graphics!"
PCOPY 1, 0
OPEN "crick.pic" FOR INPUT AS #1
LINE INPUT #1, crick$
LINE INPUT #1, crick2$
LINE INPUT #1, grass$
LINE INPUT #1, computer$
LINE INPUT #1, bush$
LINE INPUT #1, man1$
LINE INPUT #1, door$
LINE INPUT #1, gun$
LINE INPUT #1, crystal$
LINE INPUT #1, pepsi$
CLOSE #1
x = 200
y = 100
ON KEY(13) GOSUB right
ON KEY(12) GOSUB left
ON KEY(11) GOSUB up
ON KEY(14) GOSUB down
KEY(11) ON
KEY(12) ON
KEY(13) ON
KEY(14) ON
GOTO drawmap

up:
y = y - 5
SCREEN , , 2, 0
PCOPY 3, 2
DRAW "bm" + STR$(x) + "," + STR$(y) + "" + man1$
PCOPY 2, 0
SCREEN , , 0, 0
RETURN

down:
y = y + 5
SCREEN , , 2, 0
PCOPY 3, 2
DRAW "bm" + STR$(x) + "," + STR$(y) + "" + man1$
PCOPY 2, 0
SCREEN , , 0, 0
RETURN

right:
x = x + 10
SCREEN , , 2, 0
PCOPY 3, 2
DRAW "bm" + STR$(x) + "," + STR$(y) + "" + man1$
PCOPY 2, 0
SCREEN , , 0, 0
RETURN

left:
x = x - 10
SCREEN , , 2, 0
PCOPY 3, 2
DRAW "bm" + STR$(x) + "," + STR$(y) + "" + man1$
PCOPY 2, 0
SCREEN , , 0, 0
RETURN

drawmap:
m = 200
n = 40
SCREEN , , 3, 0
PCOPY 3, 1
DO
DRAW "bm" + STR$(m) + "," + STR$(n) + grass$
m = m + 20
IF m >= 510 THEN n = n + 14: m = 200
IF n >= 180 THEN GOSUB addon1
IF n >= 180 THEN PCOPY 3, 0: SCREEN , , 0, 0: GOTO start
LOOP
addon1:
m = 200: n = 120
DO
DRAW "bm" + STR$(m) + "," + STR$(n) + crick$
m = m + 20
IF m >= 255 THEN DRAW "bm250,120 " + crick2$: DRAW "bm250,90 " + bush$: DRAW "bm250,60" + computer$: DRAW "bm300,60" + crystal$: DRAW "bm500,80" + door$: DRAW "bm200,40" + gun$: DRAW "bm215,140" + pepsi$: n = n + 14: m = 200: n = 190: RETURN
LOOP

start:
GOSUB right
10
GOTO 10

