
'
w = 7
DATA  spy vs spy, great balls of fire, gold, black, window, nose, men in black
DATA



















SCREEN 7
10 CLS
GOSUB selectword
GOSUB title
40 IF wo = 1 OR lo = 1 THEN 80
GOSUB chooseletter
IF co = 0 THEN GOSUB hangman
GOTO 40
80 IF wo = 1 THEN GOSUB win
IF lo = 1 THEN GOSUB lose
GOSUB playagain
SYSTEM
selectword:
RESTORE
RANDOMIZE TIMER
ch = INT(RND * w) + 1
FOR l = 1 TO ch
READ w$
NEXT l
le = LEN(w$) + 1: d$ = w$
RETURN

title:
CLS
FOR l = 4 TO 10
ON l - 4 GOSUB face, body, arm1, arm2, leg1, leg2
NEXT l
COLOR 2
LOCATE 10, 17: PRINT "hangman"
LOCATE 22, 14: INPUT "press enter", a$
CLS
COLOR 15
LOCATE 2, 2: PRINT "Letters Chosen"
LOCATE 3, 2: PRINT "--------------"
COLOR 14
LOCATE 13, 2: PRINT "The computer's"
LOCATE 15, 6: PRINT "word is"
LOCATE 17, 6: PRINT "";
FOR l = 1 TO le
PRINT "*";
nsp:
NEXT l: PRINT





COLOR 1
LOCATE 19, 2: PRINT "Please Choose"
LOCATE 21, 4: PRINT "a letter"
wo = 0: lo = 0: li = 0: sc = 0
RETURN
chooseletter:
COLOR 14
chlet: c$ = INKEY$
IF space = 0 THEN c$ = " "
IF c$ = "" THEN GOTO chlet
LOCATE 5, 2 + li: PRINT c$
co = 0
FOR p = 1 TO le
IF space = 1 AND c$ <> MID$(w$, p, 1) THEN 3100 ELSE space = 1
co = 1: sc = sc + 1
w$ = LEFT$(w$, p - 1) + "?" + RIGHT$(w$, le - p)
COLOR 14
LOCATE 17, 5 + p: PRINT c$
3100 NEXT p
IF sc = le THEN wo = 1
RETURN
win:
CLS
FOR l = 4 TO 10
ON l - 4 GOSUB face, body, arm1, arm2, leg1, leg2
NEXT l
LOCATE 6, 1: COLOR 15: PRINT "   well done, you execution"
PRINT "   Has been postponed"
RETURN

lose:
CLS
FOR l = 1 TO 10
ON l GOSUB gallows1, gallows2, gallows3, rope, face, body, arm1, arm2, leg1, leg2
NEXT
LOCATE 6, 2: PRINT "Knavish fool !"
LOCATE 7, 2: PRINT "You Lost"
LOCATE 9, 2: PRINT "The word was": COLOR 14: PRINT " "; d$
RETURN


playagain:
COLOR 15
LOCATE 12, 2: PRINT "do you wish to"
LOCATE 13, 2: PRINT "play again"; : space = 0
INPUT a$
IF LEFT$(a$, 1) = "y" THEN 10
CLS
LOCATE 10, 1: PRINT "     bye, bye"
RETURN











hangman:
li = li + 1: IF li = 10 THEN lo = 1
ON li GOTO gallows1, gallows2, gallows3, rope, face, body, arm1, arm2, leg1, leg2
gallows1:
LOCATE 2, 1
COLOR 6
FOR r = 2 TO 23
LOCATE r, 24: PRINT "€€"
NEXT r
RETURN
gallows2:
LOCATE 2, 1: COLOR 6
LOCATE 2, 26: PRINT "€€€€€€€€€€€"
LOCATE 3, 26: PRINT "ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ"
RETURN

gallows3:
LINE (250, 20)-(200, 50), 6
LINE (265, 20)-(200, 60), 6
PAINT (251, 25), 6
RETURN
rope:
LINE (275, 20)-(275, 40), 6
RETURN
face:
CIRCLE (275, 58), 20, 15
COLOR 15
LOCATE 7, 34: PRINT "o o"
LINE (270, 70)-(280, 70), 15
REM IF ch < 105 AND ch > 0 THEN DRAW "bm271,70 d2 bm279,70 d2"
REM IF ch < 105 AND ch > 0 THEN a = a
RETURN
body:
LINE (275, 76)-(275, 130), 15
RETURN
arm1:
LINE (275, 90)-(240, 90), 15
RETURN
arm2:
LINE (275, 90)-(310, 90), 15
RETURN
leg1:
LINE (275, 130)-(250, 160), 15
RETURN
leg2:
LINE (275, 130)-(300, 160), 15
RETURN

