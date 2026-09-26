start:

RANDOMIZE TIMER
dia = INT(RND * 10) + 1
dib = INT(RND * 10) + 1
dic = INT(RND * 10) + 1
did = INT(RND * 10) + 1
die = INT(RND * 10) + 1
dif = INT(RND * 10) + 1
dig = INT(RND * 10) + 1
dih = INT(RND * 10) + 1
dii = INT(RND * 10) + 1
dij = INT(RND * 10) + 1
CLS


INPUT "Difficulty"; diff
111 INPUT "How many dice"; hmd
IF hmd > 10 THEN hmd = 10


FOR a = 1 TO hmd

IF a = 1 THEN PRINT dia
IF a = 2 THEN PRINT dib
IF a = 3 THEN PRINT dic
IF a = 4 THEN PRINT did
IF a = 5 THEN PRINT die
IF a = 6 THEN PRINT dif
IF a = 7 THEN PRINT dig
IF a = 8 THEN PRINT dih
IF a = 9 THEN PRINT dii
IF a = 10 THEN PRINT dij
NEXT a


su = 0
FOR a = 1 TO hmd
IF a = 1 AND dia >= diff THEN su = su + 1
IF a = 1 AND dia = 1 THEN su = su - 1
IF a = 2 AND dib >= diff THEN su = su + 1
IF a = 2 AND dib = 1 THEN su = su - 1
IF a = 3 AND dic >= diff THEN su = su + 1
IF a = 3 AND dic = 1 THEN su = su - 1
IF a = 4 AND did >= diff THEN su = su + 1
IF a = 4 AND did = 1 THEN su = su - 1
IF a = 5 AND die >= diff THEN su = su + 1
IF a = 5 AND die = 1 THEN su = su - 1
IF a = 6 AND dif >= diff THEN su = su + 1
IF a = 6 AND dif = 1 THEN su = su - 1
IF a = 7 AND dig >= diff THEN su = su + 1
IF a = 7 AND dig = 1 THEN su = su - 1
IF a = 8 AND dih >= diff THEN su = su + 1
IF a = 8 AND dih = 1 THEN su = su - 1
IF a = 9 AND dii >= diff THEN su = su + 1
IF a = 9 AND dii = 1 THEN su = su - 1
IF a = 10 AND dij >= diff THEN su = su + 1
IF a = 10 AND dij = 1 THEN su = su - 1
NEXT a
IF su > 0 THEN PRINT "You Have "; su; "success."
IF su = 0 THEN PRINT "Failure"
IF su < 0 THEN PRINT "Botch"
INPUT "Quit"; qu$
IF qu$ = "y" OR qu$ = "yes" THEN SYSTEM
GOTO start

DRAW "rrrrrrrrrrrrrrrrrrrrrrrrrrrrhhhhhlllllllllllllllllllllllllllllfffffdddddddddddhhhhuuuuuuuuuuuulddddddddddddffffrrrrrrrrrrrrrrrrrrrrrrrrrrrrruuuuuuuuuurdddddddddd"

                

