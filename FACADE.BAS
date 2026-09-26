PRINT
10 INPUT "C:\>", haha$
IF haha$ = "" GOTO 10
IF MID$(haha$, 1, 3) = "dir" OR haha$ = "DIR" THEN GOTO cool
IF haha$ = "win" THEN GOTO pong
PRINT "bad command or file name"
PRINT
GOTO 10
cool:
PRINT "All files in directory will be deleted!"
20 INPUT "Are you sure (Y/N)?", kell$
IF kell$ = "n" THEN SHELL "dir"
row = CSRLIN
IF kell$ = "" THEN LOCATE row - 1, 1: PRINT "All files in directory will be deleted!": GOTO 20
PRINT
GOTO 10
pong:
SHELL "qbasic/run pong.bas"
GOTO 10

