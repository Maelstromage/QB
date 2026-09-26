'this game is the first game i made
'i made it on commodore 64 and now i put it on qbasic
'well enjoy

'e-mail me at reverse013@aol.com
'tell me what you think

'i have a ton of unfinished games (even rpg's)
'i will put them on the filesearch asap


'press F5











CLS
COLOR 4
PRINT
PRINT " /#####\         ',,,                 ,,,'"
PRINT "I########\         \',               ,'/          "
PRINT "I##I:\#####\        )#'\           /'#(        /\"
PRINT "I##I:::\####I\     /##/I          I\##\      /####\"
PRINT "I##I:::::\###I:\ ,/##(:I          I)##\,   /###/:\##\"
PRINT "I##I::::/####I::(####\:I          I:/###) (###\:::::/'"
PRINT "I###\:/####/:\::I\#####\       /#####/I/::::\###\:/'"
PRINT "I########/:::::\I:\#####\   /#####/::I:::::::\###\  "
PRINT "I########\::::::I:::\#####/#####I::;I:::::::::\###\"
PRINT "I###I\#####\:::: '\:::\#########I:::I\::::::::::\###)"
PRINT "I###I::\#####\:/'  '\:::\#######I:::I  \/:\##\:/###/"
PRINT "I###I::::\####I:\    '\:::\#####I:::I /::\##\:/###/'"
PRINT "I###I::::I####I:::\    '\:::\###I:::I/:::::\####/'"
PRINT "I###I::::I####I:::::\    '\::\##I:::I\:::::::\/"
PRINT "I##/:\:::'\####\::::I      '\::\/:::/ '\:::::/'      "
PRINT "I/:::::\::I'\/:::\::I       '\:I:::/'   '\:/'     "
PRINT "\::::::'\I   \:::::\I        '\I:/'       '        Inc. "
PRINT "  '\::::/'    '\::::/          I                "
PRINT "    '\/'        '\/'                               art by reverse"
PRINT ""
PRINT
PRINT "                                                     PRESENTS..."
FOR A = 1 TO 5
SLEEP 1
NEXT A
CLS
FOR A = 1 TO 3
IF A = 1 THEN CO = 15
IF A = 2 THEN CO = 7
IF A = 3 THEN CO = 8
COLOR CO
CLS
LOCATE 13, 10: PRINT "SHUTTLE..."
SLEEP 1
NEXT A
COLOR 7
REM suhuttle luanch
CLS
PRINT "Please enter your name"
INPUT na$
PRINT "welcome abord captain "; na$
PRINT "you must launch the shuttle by guessing how much power"
PRINT "The brightly lit pannel has a gauge which you may move from 1 to 100"
RANDOMIZE TIMER
le = INT(RND * 100)
FOR at = 1 TO 10
COLOR 7
PRINT "where do you turn the dial to?"
INPUT gu
IF gu = le THEN GOTO 280
IF gu < le THEN COLOR 4: PRINT "a light turns red it reads 'power too low'"
IF gu > le THEN COLOR 2: PRINT "a light turns green it reads 'power too high'"
NEXT at
CLS
PRINT "The shuttle does not take off"
PRINT "Now you look like a fool"
PRINT "The space program must be closed down and you may never get your dream"
DO WHILE INKEY$ = "": LOOP: SYSTEM
280 CLS
hi = 0
ta = 10000
PRINT "lift-off!!!"
PRINT "hight"
330 PRINT hi
FOR de = 1 TO 500
NEXT de
hi = hi * 2 + 1
IF hi < ta THEN GOTO 330
CLS
FOR ro = 1 TO 15
PRINT "shuttle in orbit"
NEXT ro
PRINT "You are a master "; na$
SLEEP 1
PRINT ">>>>>You are now lost in space and there is a meteor field a head"
SLEEP .5









hma = 50

lv = 2
RANDOMIZE TIMER
SCREEN 7
fu = 30000



asteroids:
CLS
PRINT "Fuel: "; fu
DIM ac(150), dw(150)
FOR at = 1 TO hma
COLOR INT(RND * 15) + 1
ac(at) = INT(RND * 30) + 3
dw(at) = INT(RND * 20) + 4
LOCATE (dw(at)), (ac(at)): PRINT "X"
NEXT at
c$ = "                                "
CO = 1: ro = INT(RND * 20) + 4
110 COLOR 2: LOCATE ro, CO: PRINT ">"
120 LOCATE 2, 1: PRINT c$
LOCATE 3, 1: PRINT c$
LOCATE 1, 30: PRINT "Lives: "; lv
LOCATE 2, 1: INPUT "Direction(u,d,r)"; di$
IF di$ = "u" THEN up = -1: ri = 0: GOTO 210
IF di$ = "d" THEN up = 1: ri = 0: GOTO 210
IF di$ = "r" THEN up = 0: ri = 1: GOTO 210
IF di$ = "l" THEN up = 0: ri = -1: GOTO 210
IF di$ = "quit" THEN DO WHILE INKEY$ = "": LOOP: SYSTEM
IF di$ = "landing" THEN GOTO landing
GOTO 120
210 INPUT "Distance"; di
LOCATE ro, CO: PRINT ">"
fu = fu - 500
FOR c = 1 TO di
fu = fu - 200
IF fu < 0 THEN fu = 0

LOCATE 1, 1: PRINT c$
LOCATE 1, 1: PRINT "Fuel: "; fu
IF fu = 0 THEN GOTO 350
IF fu < 10000 / 2 THEN COLOR 14
IF fu < 10000 / 3 THEN COLOR 4
ro = ro + up
CO = CO + ri
FOR at = 1 TO hma
IF CO = ac(at) AND ro = dw(at) THEN GOTO 370
NEXT at
IF ro > 24 OR ro < 4 OR CO < 1 THEN GOTO 390
LOCATE ro, CO: PRINT "Û"
IF CO > 33 THEN GOTO 410
NEXT c
GOTO 110

350 LOCATE 10, 1: PRINT "   You ran out of fuel": lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO asteroids

370 LOCATE 10, 1: COLOR 15: PRINT "     You crashed into an asteroid": lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO asteroids

390 LOCATE 10, 1: COLOR 15: PRINT "      You have gone out of orbit": lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO asteroids

410 LOCATE 10, 1: COLOR 15: PRINT "    Well done, you missed them all"







DO UNTIL INKEY$ = CHR$(13): LOOP










landing:
REM shuttle landing
CLS
PRINT "use the 'a' key to accend and the 'd' key to decend"
SLEEP 1
d = 18000: s = 400: h = 2000: f = 5
c$ = "      "
COLOR 4
PRINT "   Height";
COLOR 6
PRINT "  Descent ";
COLOR 14
PRINT "  Speed   ";
COLOR 2
PRINT "  Distance"
LOCATE 23, 1: PRINT "Lives: "; lv
LOCATE 23, 35: PRINT "ÛÛÛ"
x = 1: y = 2
LOCATE y + 1, x: PRINT "ÈÍ"
80 LOCATE 2, 1: PRINT "   "; c$
COLOR 4: LOCATE 2, 1: PRINT "   "; h
LOCATE 2, 13: PRINT c$
COLOR 6: LOCATE 2, 13: PRINT f
LOCATE 2, 20: PRINT c$
COLOR 14: LOCATE 2, 22: PRINT s
LOCATE 2, 27: PRINT c$
COLOR 2: LOCATE 2, 33: PRINT d
IF s < 200 THEN LOCATE 10, 12: COLOR 15: PRINT "Shuttle stalled": DO UNTIL INKEY$ = CHR$(13): LOOP: lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO landing
IF d < -999 THEN LOCATE 10, 1: COLOR 15: PRINT "  Shuttle has overshot the runway": DO UNTIL INKEY$ = CHR$(13): LOOP: lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO landing
IF h <= 1 THEN GOTO 290
190 r$ = INKEY$
IF r$ = "a" THEN f = f + 1: s = s + 5
IF r$ = "d" THEN f = f - 1: s = s - 5
IF r$ = "p" THEN DO UNTIL INKEY$ = "p": LOOP
IF r$ = CHR$(27) THEN DO WHILE INKEY$ = "": LOOP: SYSTEM
IF f = 0 THEN f = 1: s = s - 20

h = h - f: s = s + (f - 5) * 3: d = d - INT(s / 10)
LOCATE y + 1, x: PRINT c$
x = 35 - INT(d / (18000 / 35))
y = 22 - INT(h / (2000 / 19))
LOCATE y + 1, x: COLOR 2: PRINT "ÈÍ"
GOTO 80
290 IF d > 1000 THEN LOCATE 10, 1: COLOR 15: PRINT "      Landing short of runway": DO UNTIL INKEY$ = CHR$(13): LOOP: lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO landing
IF s > 300 THEN LOCATE 10, 1: COLOR 15:      PRINT "      Landing speed too high": DO UNTIL INKEY$ = CHR$(13): LOOP: lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO landing
IF f > 5 THEN LOCATE 10, 1: COLOR 15:      PRINT "      Undercarriage collapsed": DO UNTIL INKEY$ = CHR$(13): LOOP: : lv = lv - 1: IF lv < 0 THEN DO WHILE INKEY$ = "": LOOP: SYSTEM ELSE GOTO landing
LOCATE 10, 1: COLOR 15: PRINT "    Well done, a perfect landing!!!": DO UNTIL INKEY$ = CHR$(13): LOOP: hma = 150: GOTO asteroids

