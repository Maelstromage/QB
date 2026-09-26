RANDOMIZE TIMER
CLS
PRINT "rvs inc.  A.I. v1.0(simple version)...PLEASE TYPE IN LOWER CASE."
DIM say1$(5000)
DIM que1$(5000)

main:
FOR a = 1 TO 5000
GOSUB learn
NEXT a

learn:
INPUT  learn$
IF MID$(learn$, 1, 3) = "say" THEN
        say1$(a) = MID$(learn$, 4, 40)
        PRINT say1$(a)
        ELSEGOSUB questions
END IF
IF learn$ = "stat" THEN
        PRINT a
        GOSUB stat
END IF
RETURN

questions:
FOR b = 1 TO a
IF learn$ = say1$(b) THEN
        c = b + 1
        PRINT say1$(INT(RND * a) + 1)
END IF
NEXT b
RETURN

stat:
FOR sta = 1 TO a
PRINT say1$(sta)
NEXT sta

RETURNsay1$(sta)
NEXT sta

RETURN
