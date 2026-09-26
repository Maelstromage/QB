'             L O R D  O F  T H E  R I N G S
'
'
'               Guide Frodo Baggins through the old Forest.
'
'                  Can you beat the Orc and find the Secret Exit???
'
'                         E-mail me at vectorpup@aol.com
'
'
COMMON SHARED LIVES, LEVEL, a$, b$, c$, d$, e$
DECLARE SUB mad ()
DECLARE SUB buckland ()
DECLARE SUB beat1 ()
DECLARE SUB drawstuff ()
DECLARE SUB endin ()
DECLARE SUB isengard ()
DECLARE SUB moria ()
DECLARE SUB oldforest ()
DECLARE SUB kewl ()
DECLARE SUB yummy ()
DECLARE SUB win ()
SCREEN 13
FOR a% = 16 TO 30 STEP 1
COLOR a%
LOCATE 10, 10
PRINT "Vector Pup Productions"
LOCATE 12, 13
PRINT "Presents..."
start = TIMER: WHILE TIMER < (start + .05): WEND
NEXT a%
COLOR 15
LOCATE 10, 10
PRINT "Vector Pup Productions": DRAW "bm125, 50 c 15 f 15 e 15 b r 15 c 15 d 15 b r 2 b u 15 b l 1 c 15 r 5 f 2 d 2 g 2 l 5"
LOCATE 12, 13: PRINT "Presents...":
PLAY "mfmso4l4ggo5l2c"
SLEEP 2
FOR i% = 30 TO 16 STEP -1
COLOR i%
LOCATE 10, 10
PRINT "Vector Pup Productions"
LOCATE 12, 13: PRINT "Presents..."
start = TIMER: WHILE TIMER < (start + .05): WEND
NEXT i%
RANDOMIZE TIMER
CLS
COLOR 15
DRAW "b c 6 d 7 r 7 u 7 r 5 u 4 l 17 d 4 r 6 c 186 r 1 l 7 u 4 r 17 d 4 l 5 d 7 l 7 u 7 r 6 d 6 l 5 u 5 r 4 d 4 l 3 u 3 r 2 d 2 l 1 u 5 l 7 r 15 u 2 l 15 d 1 r 14 b u 3 b l 3 c 18 u 13 h 3 g 3 d 13 c 16 u 13 e 3 r 1 f 1 l 1 f 2 d 13 c 18 u 14 h 4 g 3 d 15 r 6 u 4 c 19 u 10 h 3 g 2 d 14 r 2 c 20 r 2 u 13 h 2 g 1 d 13 r 2 u 4 c 21 u 8 h 1 d 12"
PRINT "Read the story? y/n"
INPUT CCC$:
IF CCC$ = "Y" OR CCC$ = "y" THEN GOTO STORY
IF CCC$ = "N" OR CCC$ = "n" THEN GOTO LRINGS
STORY:
SCREEN 12
COLOR 14
FOR a = 2 TO 79
LOCATE 1, a
PRINT CHR$(205)
NEXT a
LOCATE 1, 1: PRINT CHR$(201)
LOCATE 1, 80: PRINT CHR$(187)
FOR b = 2 TO 27
LOCATE b, 1
PRINT CHR$(186)
NEXT b
LOCATE 28, 1: PRINT CHR$(200)
LOCATE 28, 80: PRINT CHR$(188)
FOR c = 2 TO 79
LOCATE 28, c
PRINT CHR$(205)
NEXT c
FOR d = 2 TO 27
LOCATE d, 80
PRINT CHR$(186)
NEXT d
COLOR 8
LOCATE 5, 5: PRINT "`One Ring to rule them all'": FOR PPP = 1 TO 2000: NEXT PPP
COLOR 7
LOCATE 5, 5: PRINT "`One Ring to rule them all'": FOR PPP = 1 TO 2000: NEXT PPP
COLOR 15
LOCATE 5, 5: PRINT "`One Ring to rule them all'": FOR PPP = 1 TO 2000: NEXT PPP
DO: LOOP UNTIL INKEY$ <> ""
LOCATE 10, 4: PRINT "These were the words Frodo Baggins heard from the wizard Gandalf."
LOCATE 11, 2: PRINT "FRODO:  THIS Ring is the One Ring??!!"
LOCATE 13, 2: PRINT "GANDALF:  Yes.......but the Dark Lord Sauron has sent Dark Riders and"
LOCATE 15, 2: PRINT "Orcs to kill you and your friends.  You must take the Ring to Mount Doom"
LOCATE 17, 2: PRINT "and destroy it for good!!"
LOCATE 19, 2: PRINT "FRODO:  But Gandalf....."
LOCATE 21, 2: PRINT "GANDALF:  You must leave this morning.  Travel through Buckland, but be"
LOCATE 23, 2: PRINT "wary of Orcs and other dangers."
LOCATE 25, 2: PRINT "FRODO:........"
LOCATE 27, 8: PRINT "<Press 1 to continue>"
PLAY "mfmlo2l3al5fDl3al5gFl3AL3FGo1l3C"
DO
LOOP UNTIL INKEY$ = "1"
LRINGS:
CLS
SCREEN 13
COLOR 15
DRAW "bm125, 15 c 44 u 10 h 5 l 10 g 5 d 10 f 5 r 10 e 5 b l 1 c 14 u 1 c 43 u 1 d 2 u 4 c 43 u 6 h 4 l 10 g 4 d 10 f 4 r 10 e 4 b l 1 c 14 u 10 h 3 l 10 g 3 d 10 f 3 r 10 e 2 u 11 h 2 l 10 g 2 d 10 f 2 r 9 e 2 d 1 l 1 d 1 l 3 u 1 c 16 l 1"
JRR$ = "Lord of the Rings Vol. 1": TOLK$ = "A game based on the books": IEN$ = " by JRR Tolkien"
COLOR 15: LOCATE 7, 7: PRINT JRR$:
COLOR 6
LOCATE 10, 6: PRINT TOLK$: LOCATE 12, 10: PRINT IEN$: FOR g = 1 TO 1000: NEXT g
COLOR 5
LOCATE 10, 6: PRINT TOLK$: LOCATE 12, 10: PRINT IEN$: FOR g = 1 TO 1000: NEXT g
COLOR 1
LOCATE 10, 6: PRINT TOLK$: LOCATE 12, 10: PRINT IEN$: FOR g = 1 TO 1000: NEXT g
PLAY "mfmsO2L16ddddddccddddddccL4gaL8O3cO2bgfl16ededL3eL8fl2gl4ecl8d"
CLS
OPTIONS:
CLS
SCREEN 13
COLOR 15
LOCATE 5, 5: PRINT "Lord of the Rings--Menu"
DRAW "bm15, 45 c 6 d 7 r 7 u 7 r 5 u 4 l 17 d 4 r 6 c 186 r 1 l 7 u 4 r 17 d 4 l 5 d 7 l 7 u 7 r 6 d 6 l 5 u 5 r 4 d 4 l 3 u 3 r 2 d 2 l 1 u 5 l 7 r 15 u 2 l 15 d 1 r 14 b u 3 b l 3 c 18 u 13 h 3 g 3 d 13 c 16 u 13 e 3 r 1 f 1 l 1 f 2 d 13 c 18 u 14 h 4 g 3 d 15 r 6 u 4 c 19 u 10 h 3 g 2 d 14 r 2 c 20 r 2 u 13 h 2 g 1 d 13 r 2 u 4 c 21 u 8 h 1 d 12"
COLOR 7
LOCATE 7, 15: COLOR 7: PRINT "Play the game"
LOCATE 9, 15: PRINT "See the instructions"
LOCATE 11, 15: PRINT "Enter a password"
LOCATE 13, 15: PRINT "Quit"
LIVES = 5
SWORD = 0
ARMOR = 0
SPELL = 0
LIFE = 0
DAGGER = 0
STEPS = 185
LEVEL = 1
ps% = 7
DO: y$ = INKEY$
LOCATE ps%, 13: COLOR 8: PRINT CHR$(2)
IF y$ = CHR$(0) + "H" THEN LOCATE ps%, 13: PRINT " ": ps% = ps% - 2
IF y$ = CHR$(0) + "P" THEN LOCATE ps%, 13: PRINT " ": ps% = ps% + 2
IF ps% = 5 THEN ps% = 13
IF ps% = 15 THEN ps% = 7
IF y$ = CHR$(13) AND ps% = 7 THEN CLS : drawstuff
IF y$ = CHR$(13) AND ps% = 9 THEN GOSUB INSTRUCTIONS
IF y$ = CHR$(13) AND ps% = 11 THEN GOTO pass
IF y$ = CHR$(13) AND ps% = 13 THEN CLS : SYSTEM
LOOP UNTIL y$ = CHR$(13)
GOTO OPTIONS
INSTRUCTIONS:
CLS
SCREEN 12
LOCATE 11, 14: PRINT "Maneuver Frodo Baggins across the screen, ": LOCATE 12, 1: PRINT "picking up the items and finding the weapons needed to defeat the Orc."
    PRINT "                       (Up)"
    PRINT "Esc-Exit                " + CHR$(24) + ""
    PRINT "               (Left) " + CHR$(27) + "   " + CHR$(26) + " (Right)"
    PRINT "                        " + CHR$(25) + ""
    PRINT "                      (Down)": DO: LOOP UNTIL INKEY$ <> "": RETURN
pass:
CLS
LOCATE 5, 5: PRINT "Enter the password": INPUT pass$
                                                                                                                                                                         IF pass$ = "kupo" OR pass$ = "KUPO" OR pass$ = "Kupo" THEN oldforest
                                                                                                                                                                         IF pass$ = "vector" OR pass$ = "VECTOR" OR pass$ = "Vector" THEN moria
                                                                                                                                                                         IF pass$ = "defenders" OR pass$ = "DEFENDERS" OR pass$ = "Defenders" THEN isengard ELSE GOTO OPTIONS
END

SUB beat1
IF LEVEL = 1 THEN win
IF LEVEL = 2 THEN
BEAT2:
CLS
SCREEN 13
DRAW " c 18 l 3 d 1 l 1 d 1 l 3 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 r 1 l 1 d 1 l 1 d 1 l 1 r 1 d 1 l 1 r 1 d 1 l 1 r 1 d 1 l 1 r 3 f 1 d 2 f 1 r 1 d 1 f 1 r 2 u 1 e 1 r 1 f 2 d 1 r 2 e 3 u 1 e 1 u 1 e 1 u 1 e 1 u 1 e 2 l 3 u 1 e 1 u 1 l 1 e 1 l 2 u 1 l 3 u 1 e 1 u 1 l 3 d 1 l 1 d 3 l 2 d 1 l 1 d 1 l 5 d 1 l 1 d 2 l 1 d 1 l 1 d 2 r 2 d 1 r 1 d 3 r 2 d 2 r 1 u 1 r 1 u 1 r 3 d 1 r 1 d 1 r 1 d 1 r 1 u 1 r 1 u 1 r 1 u 2 r 1 u 2 r 1 u 2 r 1 u 2 r 1 l 2 u 3 r 1 l 1 u 1 l 1 u 1 l 3 u 3 r 1 l 1 d 1 l 1 d 3 c 19 d 1 u 1 l 2 d 1 l 1 d 1 l 5 d 1 l 1 d 1 l 1 d 1 l 1 d 1 r 2 d 1 r 1 d 3 r 2 d 1 u 1 r 4 d 1 r 2 d 1 r 1 u 1 r 1 u 2 r 1 u 2 r 1 u 2 r 1 l 1 u 4 l 1 u 1 l 2 d 1 l 2 d 1 l 1 d 1 l 5 d 1 l 1 d 1 l 1 r 2 d 1 l 1 r 1 d 3 r 6 d 1 r 2 u 2 r 1 u 1 r 1 u 5 l 1 u 1 d 1 c 20 l 1 d 1 l 1 u 1 d 1 l 1 d 1 l 5 d 4 r 6 d 1 u 2 r 1 u 1 r 1 u 3 d 1 l 1 c 21 l 1 d 1 l 5 d 2 r 3 c 22 r 1 u 1 r 1 e 1 g 1 l 2 c 23 l 2 b u 9 b l 4 c 23 f 3 g 2 h 1 g 1 h 8 e 3 f 5 d 1 f 3 l 1 d 1 u 1 l 2 d 1 h 7 e 2 f 4 d 1 b c 24 f 2 l 2 u 1 l 1 u 1 l 1 u 1 r 1 l 2 u 1 r 1 l 2 u 1 l 1 r 2 l 1 u 1 b r 9 b d 7 c 22 g 1 c 23 u 1 r 1 f 2 g 1 d 2 h 3 l 1 d 1 r 1 d 1 r 2 d 1 r 2 u 2 l 2 u 1 r 1 l 2 u 1 r 1 l 1 c 24 r 1 d 2 r 1 d 1 l 1 u 1 l 1 u 2 l 2 u 1 l 1 u 2 r 1 d 1 r 1 d 2 r 1 b u 10 b l 9 c 186 e 3 h 3 g 2 h 5 g 4 f 4 g 2 f 3 e 7 g 7 f 1 e 6 l 2 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 u 2 l 1 d 1 u 2 l 1 d 1 u 1 l 1 r 2 u 1 l 1 r 2 d 1 r 1 u 1 r 1 u 1 r 1 u 1 r 1 u 1 r 2 d 1 u 1 r 1 l 1 u 1 l 1 u 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 3 u 1 l 1 r 3 u 1 r 1 u 2 l 1 d 1 l 1 d 1 l 3 u 1 l 1 r 3 u 1 r 1 u 1 l 4 d 1 l 1 r 3 u 2 l 1 r 2 l 1 u 1 d 2"
LOCATE 5, 5: PRINT "You slew the Dark Rider!!"
PLAY "O3L10l8cn0cdn0den0el8fedl10c"
DO: LOOP UNTIL INKEY$ <> ""
CLS
SCREEN (2): SCREEN 0: SCREEN (0)
LOCATE 5, 5: PRINT "Hey, you're pretty good. But I suspect that you'll"
LOCATE 6, 5: PRINT "lose in the Mines of Moria..."
LOCATE 7, 5: PRINT "Password-Vector"
LOCATE 10, 10: PRINT "<Press 1 to continue...>"
DO: LOOP UNTIL INKEY$ = "1"
CLS
moria
END IF
IF LEVEL = 3 THEN
BEAT3:
CLS
SCREEN 13
DRAW " c 113 u 5 e 1 u 1 e 2 r 5 f 2 g 2 l 3 d 1 f 1 d 1 l 1 d 2 r 1 l 1 d 2 r 17 u 2 d 1 u 1 l 1 r 1 u 2 l 1 u 1 e 1 u 1 l 3 h 2 e 2 r 6 f 1 d 1 u 1 f 1 d 2 f 1 d 13 g 2 d 2 g 1 d 1 g 1 d 1 g 1 d 2 g 1 d 1 g 1 d 1 l 13 h 1 u 1 h 2 u 1 h 1 u 1 h 1 u 1 h 2 u 2 h 2 u 7 e 1 c 4 b r 9 b d 6 b l 3 c 4 f 3 b u 3 c 4 g 3 b r 10 c 4 e 3 b l 4 c 4 r 1 f 3 b d 8 c 4 l 9 g 1 d 1 f 1 r 9 e 1 u 1 h 1 c 40 b u 1 c 40 r 3 d 3 l 1 d 2 l 1 d 1 l 1 u 1 r 1 u 1 r 1 u 3 l 1 u 1 l 11 d 1 l 1 d 3 r 1 d 1 r 9 d 1 l 10 u 2 l 1 u 1 l 1 u 2 l 1 u 2 l 1 u 2 l 1 u 1 l 1 u 3 l 1 u 1 l 1 u 7 r 4 d 1 u 1 l 2 r 2 d 2 r 1 u 1 r 22 d 6 l 1 d 1 l 1 d 3 l 1 d 2 l 1 d 2 u 1 l 17 d 2 r 1 d 1 u 2 r 1 u 2 l 3 r 17 u 1 r 1 l 19 u 1 l 1 u 1 r 21 d 1 l 19 u 1 l 1 u 1 l 1 r 4 u 1 r 1 d 1 r 9 u 1 r 1 d 1 r 6 u 1 l 4 u 1 l 1 u 1 r 1 u 2 l 2 d 1 l 1 u 1 l 2 d 2 r 1 d 1 l 1 d 1 l 5 u 1 l 1 u 1 r 1 u 2 l 2 d 1 l 1 u 1 l 2 d 2 r 1 d 1 l 1 d 1 l 2 u 1 l 1 u 2 l 1 d 1 u 5 r 2 d 2 l 1 u 1 d 2 r 1 d 2 r 1 d 1 u 4 r 10 d 4 l 3 u 3 r 2 d 2 l 1 u 4 l 6 r 20 d 1 l 10 r 1 l 2 r 8 d 2 l 1 u 1 l 1 d 3 r 4 u 1 r 1 u 2 l 2 d 1 r 1 l 1 u 1 l 2 u 2 l 1 d 1 l 1 r 2 u 1 l 1 u 1 d 1 r 1 d 1 l 2 u 1 d 1 b r 3 b c 40 d 3 l 1 r 2 b d 11 b l 6 c 111 d 3 r 1 d 1 r 1 d 1 r 1 d 2 r 1 d 1 r 1 d 1 l 3 u 2 r 2 d 1 f 1 d 1 l 2 u 2 l 1 d 1 u 3 l 1 u 1 l 1 u 1 l 2 u 4 r 1 d 3 l 1 b d 6 c 111 d 1 l 1 u 1 l 1 b r 13 c 111 d 2 r 1 u 1 l 1 u 1 l 1 d 1 b d 4 b l 2 c 111 d 1 l 4 u 1 r 6 f 2 l 2 u 1 l 1 b u 32 c 184 r 1 l 3 u 1 r 4 d 1 u 2 l 4 u 3 l 1 r 5 d 3 u 1 l 3 u 1 r 2 u 2 r 1 l 4 u 1 r 3 u 1 l 7 u 1 l 1 r 1 u 1 r 6 d 1 l 5 b l 11 c 184 l 1 u 1 l 5 d 1 l 1 d 2 l 1 d 7 r 3 u 5 r 1 l 1 u 3 r 4 l 1 u 1 l 4 d 8 l 1 u 5"
LOCATE 5, 5: PRINT "You slew the Balrog!!"
PLAY "O3L10l8cn0cdn0den0el8fedl10c"
DO: LOOP UNTIL INKEY$ <> ""
CLS
SCREEN (2): SCREEN 0: SCREEN (0)
LOCATE 5, 5: PRINT "WOW!!  You're a real pro at this.  But there's"
LOCATE 6, 5: PRINT "no way you can beat Isengard..."
LOCATE 7, 3: PRINT "Password-Defenders"
LOCATE 10, 10: PRINT "<Press 1 to continue...>"
DO: LOOP UNTIL INKEY$ = "1"
CLS
isengard
END IF
IF LEVEL = 4 THEN
endin
END IF
END SUB

SUB buckland
LEVEL = 1
drawstuff
END SUB

SUB drawstuff
SWORD = 0
ARMOR = 0
LIVES = 5
SPELL = 0
DAGGER = 0
LIFE = 0
STEPS = 185
PLAYGAME:
RANDOMIZE TIMER
x = 2
y = 2
SCREEN (2)
SCREEN (12)
CLS
COLOR 3
LOCATE 12, 24: PRINT "Making Playing Field..."
ZZT = 1
make:
COLOR 14
LOCATE 1, 2
PRINT STRING$(78, 205)
LOCATE 1, 1: PRINT CHR$(201)
LOCATE 1, 80: PRINT CHR$(187)
LOCATE 2, 1
PRINT CHR$(186)
FOR z = 3 TO 22
LOCATE z, 1
PRINT CHR$(186)
NEXT z
LOCATE 23, 1: PRINT CHR$(200)
LOCATE 23, 2
PRINT STRING$(78, 205)
LOCATE 23, 80
PRINT CHR$(188)
LOCATE 2, 80
PRINT CHR$(186)
FOR q = 3 TO 22
LOCATE q, 80
PRINT CHR$(186)
NEXT q
SLEEP 1
ZZT = ZZT + 1
IF ZZT >= 3 THEN GOSUB drawstuff ELSE GOTO make
KEWLNESS:
LOCATE 12, 24: PRINT "                        "
LOCATE 1, 2
IF LEVEL = 1 THEN
COLOR 9: LOCATE 25, 30: PRINT "B U C K L A N D"
DRAW "bm55, 425c 1 u 3 e 3 u 1 e 3 u 1 e 5 r 4 f 4 g 1 l 1 u 1 l 3 g 3 d 2 g 1 d 5 g 1 d 1 r 10 d 1 e 1 r 4 d 1 f 1 e 1 d 2 l 33 h 1 g 1 h 2 u 1 r 23 d 1 r 11 l 33 r 1 d 1 r 34 u 1 l 15 u 2 l 9 u 1 r 8 u 1 l 8 u 1 r 8 u 1 l 7 r 1 u 1 r 6 u 1 l 5 u 1 r 6 u 1 l 5 r 1 u 1 r 4 u 1 r 1 l 4 u 1 r 5 u 1 r 1 l 5 r 1 u 1 r 1 u 1 r 1 u 1 r 4 d 1 r 1 d 1 r 1 d 1 r 1 l 1 u 1 l 6 r 1 u 1 r 2 b d 19 b l 13 c 12 g 3 d 3 f 3 r 3 e 3 c 14 c 0 l 1 g 1 r 1 g 2 u 1 l 3 u 1 l 2 d 1 l 1 r 2 d 1 r 3 l 5 u 6 r 1 u 1 r 1 u 1 r 1 u 1 c 0 c 12 d 1 u 1 g 5 d 6 f 5 r 6 e 5 u 6 h 5 l 6 b d 4 c 6 g 1 e 1 r 1 f 1 b r 3 u 1 g 1 e 1 r 1 f 1 b d 2 b l 1 b u 1 c 9 r 1 l 2 b l 4 b c 9 l 2 b d 4 b r 4 c 10 b u 4 b l 2 c 9 l 2 b d 3 r 3 c 9 c 0 l 3 r 3 u 1 c 12 d 1 f 1 b d 3 b r 2 b u 2 c 4 g 2 l 2 h 2 b d 5 c 15 f 2 g 1 f 1 g 2 f 3 g 1 f 2 e 3 r 1 h 2 e 3 h 2 e 1 g 1 l 1 r 1 u 1 l 6 r 1 d 1 r 3 d 1 l 3 r 5 d 1 r 1 l 5 d 1 l 1 r 5 l 1 d 1 l 5 r 1 d 1 r 3 d 1 r 1 l 3 r 1 d 1 r 2 l 1 d 1 l 2 r 1 d 1 b u 11 c 15 r 3 l 6 b r 3 b r 6 b u 2 b l 3 b d 1 c 12 l 6 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 6 r 1 u 1 r 1 u 1 r 1 u 1 r 1 u 1 r 6 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 6 l 1 d 1 l 1 d 1 l 1 d 1 l 7 u 1 l 1 u 1 l 1 u 7 r 1 u 2 l 2 d 7 u 1 r 2 d 1 r 1 d 1 r 1 d 1 r 2 b u 2 c 4 h 1 u 1 b u 4 b l 3 b d 1 c 6 e 1 b u 1 c 12 r 1 u 1 r 4 d 1 r 2 d 1 r 2 d 2 l 1 u 1 d 2 l 4 u 1 l 1 u 2 l 1 u 1 r 2 d 1 l 1 d 3 l 1 u 1 d 1 l 3 d 1 r 2 d 1 l 1 d 1 r 2 d 1 r 2 u 2 l 1 u 1 r 6 u 1 d 4 l 2 d 1 l 1 d 1 l 2 r 3 u 2 r 1 u 2 l 3 d 1 r 2 d 1 l 1 d 1 l 1 b u 2 c 15 r 2 d 1 r 1 d 2 l 1 u 1 l 1 u 1 l 5 u 1 l 4 d 2 r 1 d 1 r 1 u 2 l 1 r 2 d 1 r 5 b u 12 b r 3 c 15 r 1 l 2 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 2 r 1 d 3 l 1 d 1 r 1 u 1 r 1 u 2 l 1 u 1 l 1 u 1 r 2 d 1 l 1 u 2 l 2 u 2 l 1 u 2 l 1 u 1 r 2 d 2 r 1 d 1 r 1 d 1 r 1 d 1 l 2 d 1 l 1 d 2 r 1 d 2 l 1 d 1 u 4 r 1 d 1 r 2 u 2 l 1 b l 3 b u 7 b l 5 b d 1 c 15 l 10 d 1 l 1 d 1 l 2 d 2 l 1 d 2 l 1 d 1 l 1 d 3 r 1 d 1 r 3 u 6 r 1 u 2 r 1 u 1 r 1 u 1 r 1 l 2 d 1 l 1 d 1 l 1 d 2 l 1 d 5 l 1 u 3 d 1 l 1 d 1 b r 12 b u 11 c 15 l 3 u 5 r 7 d 5 l 4 d 1 r 2 l 3 b u 3 c 15 d 1 u 2 r 2 d 2 l 1 c 1 d 1 l 3 u 5 r 7 d 5 l 2 d 1 l 3 u 4 r 2 d 3"
COLOR 14
LOCATE 25, 1: PRINT "Gandalf Says: Get the items"
LOCATE 26, 14: PRINT "before fighting"
LOCATE 27, 14: PRINT "the Orc."
DRAW "bm145, 300 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm500, 145 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
END IF
IF LEVEL = 2 THEN
COLOR 9: LOCATE 25, 30: PRINT " T H E  O L D  F O R E S T"
DRAW "bm55, 425c 1 u 3 e 3 u 1 e 3 u 1 e 5 r 4 f 4 g 1 l 1 u 1 l 3 g 3 d 2 g 1 d 5 g 1 d 1 r 10 d 1 e 1 r 4 d 1 f 1 e 1 d 2 l 33 h 1 g 1 h 2 u 1 r 23 d 1 r 11 l 33 r 1 d 1 r 34 u 1 l 15 u 2 l 9 u 1 r 8 u 1 l 8 u 1 r 8 u 1 l 7 r 1 u 1 r 6 u 1 l 5 u 1 r 6 u 1 l 5 r 1 u 1 r 4 u 1 r 1 l 4 u 1 r 5 u 1 r 1 l 5 r 1 u 1 r 1 u 1 r 1 u 1 r 4 d 1 r 1 d 1 r 1 d 1 r 1 l 1 u 1 l 6 r 1 u 1 r 2 b d 19 b l 13 c 12 g 3 d 3 f 3 r 3 e 3 c 14 c 0 l 1 g 1 r 1 g 2 u 1 l 3 u 1 l 2 d 1 l 1 r 2 d 1 r 3 l 5 u 6 r 1 u 1 r 1 u 1 r 1 u 1 c 0 c 12 d 1 u 1 g 5 d 6 f 5 r 6 e 5 u 6 h 5 l 6 b d 4 c 6 g 1 e 1 r 1 f 1 b r 3 u 1 g 1 e 1 r 1 f 1 b d 2 b l 1 b u 1 c 9 r 1 l 2 b l 4 b c 9 l 2 b d 4 b r 4 c 10 b u 4 b l 2 c 9 l 2 b d 3 r 3 c 9 c 0 l 3 r 3 u 1 c 12 d 1 f 1 b d 3 b r 2 b u 2 c 4 g 2 l 2 h 2 b d 5 c 15 f 2 g 1 f 1 g 2 f 3 g 1 f 2 e 3 r 1 h 2 e 3 h 2 e 1 g 1 l 1 r 1 u 1 l 6 r 1 d 1 r 3 d 1 l 3 r 5 d 1 r 1 l 5 d 1 l 1 r 5 l 1 d 1 l 5 r 1 d 1 r 3 d 1 r 1 l 3 r 1 d 1 r 2 l 1 d 1 l 2 r 1 d 1 b u 11 c 15 r 3 l 6 b r 3 b r 6 b u 2 b l 3 b d 1 c 12 l 6 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 6 r 1 u 1 r 1 u 1 r 1 u 1 r 1 u 1 r 6 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 6 l 1 d 1 l 1 d 1 l 1 d 1 l 7 u 1 l 1 u 1 l 1 u 7 r 1 u 2 l 2 d 7 u 1 r 2 d 1 r 1 d 1 r 1 d 1 r 2 b u 2 c 4 h 1 u 1 b u 4 b l 3 b d 1 c 6 e 1 b u 1 c 12 r 1 u 1 r 4 d 1 r 2 d 1 r 2 d 2 l 1 u 1 d 2 l 4 u 1 l 1 u 2 l 1 u 1 r 2 d 1 l 1 d 3 l 1 u 1 d 1 l 3 d 1 r 2 d 1 l 1 d 1 r 2 d 1 r 2 u 2 l 1 u 1 r 6 u 1 d 4 l 2 d 1 l 1 d 1 l 2 r 3 u 2 r 1 u 2 l 3 d 1 r 2 d 1 l 1 d 1 l 1 b u 2 c 15 r 2 d 1 r 1 d 2 l 1 u 1 l 1 u 1 l 5 u 1 l 4 d 2 r 1 d 1 r 1 u 2 l 1 r 2 d 1 r 5 b u 12 b r 3 c 15 r 1 l 2 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 2 r 1 d 3 l 1 d 1 r 1 u 1 r 1 u 2 l 1 u 1 l 1 u 1 r 2 d 1 l 1 u 2 l 2 u 2 l 1 u 2 l 1 u 1 r 2 d 2 r 1 d 1 r 1 d 1 r 1 d 1 l 2 d 1 l 1 d 2 r 1 d 2 l 1 d 1 u 4 r 1 d 1 r 2 u 2 l 1 b l 3 b u 7 b l 5 b d 1 c 15 l 10 d 1 l 1 d 1 l 2 d 2 l 1 d 2 l 1 d 1 l 1 d 3 r 1 d 1 r 3 u 6 r 1 u 2 r 1 u 1 r 1 u 1 r 1 l 2 d 1 l 1 d 1 l 1 d 2 l 1 d 5 l 1 u 3 d 1 l 1 d 1 b r 12 b u 11 c 15 l 3 u 5 r 7 d 5 l 4 d 1 r 2 l 3 b u 3 c 15 d 1 u 2 r 2 d 2 l 1 c 1 d 1 l 3 u 5 r 7 d 5 l 2 d 1 l 3 u 4 r 2 d 3"
COLOR 14: LOCATE 25, 1: PRINT "Gandalf Says: Get the items"
LOCATE 26, 15: PRINT "before fighting"
LOCATE 27, 15: PRINT "the Dark Rider."
DRAW "bm145, 300 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm500, 145 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm200, 200 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm300, 145 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm45, 145 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm500, 67 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm200, 100 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm100, 345 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm500, 300 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm345, 145 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm120, 77 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm200, 345 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
DRAW "bm100, 100 c 6 u 16 d 17 l 3 d 1 l 1 d 1 r 14 u 1 l 1 u 1 l 2 u 17 d 1 l 6 d 17 l 3 r 4 u 16 r 4 d 16 r 2 l 3 u 15 l 1 d 15 l 1 u 17 b u 1 c 2 l 2 r 5 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 4 l 2 u 2 l 2 u 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 d 1 l 1 d 1 l 2 u 1 l 1 d 1 l 2 u 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 d 2 r 1 l 1 d 3 l 1 d 1 l 1 r 1 d 1 r 2 d 1 r 2 d 1 r 8 u 1 r 3 u 1 r 3 u 1 r 1 u 2 r 1 u 2 l 2 u 1 l 1 u 1 r 1 l 2 u 1 l 1 u 1 l 2 u 1 l 1 d 1 l 7 d 1 l 1 d 1 l 1 d 1 l 1 r 1 d 2 l 1 d 3 l 1 r 2 d 1 r 2 d 1 r 6 u 1 r 3 u 1 r 3 u 1 r 1 u 3 r 2 d 1 l 3 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 9 d 1 l 1 d 4 l 1 d 1 r 1 d 1 r 2 d 1 r 5 u 1 r 2 u 1 r 3 u 1 r 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 7 d 1 l 1 d 4 r 2 d 1 r 3 u 1 r 2 u 1 r 3 u 1 l 1 u 1 l 2 u 1 l 5 d 1 l 1 d 2 r 2 d 1 r 1 u 1 r 2 u 1 r 2 l 6 r 1 u 1 r 3"
END IF
IF LEVEL = 3 THEN
COLOR 9: LOCATE 25, 30: PRINT " M O R I A"
COLOR 14: DRAW "bm55, 425c 1 u 3 e 3 u 1 e 3 u 1 e 5 r 4 f 4 g 1 l 1 u 1 l 3 g 3 d 2 g 1 d 5 g 1 d 1 r 10 d 1 e 1 r 4 d 1 f 1 e 1 d 2 l 33 h 1 g 1 h 2 u 1 r 23 d 1 r 11 l 33 r 1 d 1 r 34 u 1 l 15 u 2 l 9 u 1 r 8 u 1 l 8 u 1 r 8 u 1 l 7 r 1 u 1 r 6 u 1 l 5 u 1 r 6 u 1 l 5 r 1 u 1 r 4 u 1 r 1 l 4 u 1 r 5 u 1 r 1 l 5 r 1 u 1 r 1 u 1 r 1 u 1 r 4 d 1 r 1 d 1 r 1 d 1 r 1 l 1 u 1 l 6 r 1 u 1 r 2 b d 19 b l 13 c 12 g 3 d 3 f 3 r 3 e 3 c 14 c 0 l 1 g 1 r 1 g 2 u 1 l 3 u 1 l 2 d 1 l 1 r 2 d 1 r 3 l 5 u 6 r 1 u 1 r 1 u 1 r 1 u 1 c 0 c 12 d 1 u 1 g 5 d 6 f 5 r 6 e 5 u 6 h 5 l 6 b d 4 c 6 g 1 e 1 r 1 f 1 b r 3 u 1 g 1 e 1 r 1 f 1 b d 2 b l 1 b u 1 c 9 r 1 l 2 b l 4 b c 9 l 2 b d 4 b r 4 c 10 b u 4 b l 2 c 9 l 2 b d 3 r 3 c 9 c 0 l 3 r 3 u 1 c 12 d 1 f 1 b d 3 b r 2 b u 2 c 4 g 2 l 2 h 2 b d 5 c 15 f 2 g 1 f 1 g 2 f 3 g 1 f 2 e 3 r 1 h 2 e 3 h 2 e 1 g 1 l 1 r 1 u 1 l 6 r 1 d 1 r 3 d 1 l 3 r 5 d 1 r 1 l 5 d 1 l 1 r 5 l 1 d 1 l 5 r 1 d 1 r 3 d 1 r 1 l 3 r 1 d 1 r 2 l 1 d 1 l 2 r 1 d 1 b u 11 c 15 r 3 l 6 b r 3 b r 6 b u 2 b l 3 b d 1 c 12 l 6 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 6 r 1 u 1 r 1 u 1 r 1 u 1 r 1 u 1 r 6 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 6 l 1 d 1 l 1 d 1 l 1 d 1 l 7 u 1 l 1 u 1 l 1 u 7 r 1 u 2 l 2 d 7 u 1 r 2 d 1 r 1 d 1 r 1 d 1 r 2 b u 2 c 4 h 1 u 1 b u 4 b l 3 b d 1 c 6 e 1 b u 1 c 12 r 1 u 1 r 4 d 1 r 2 d 1 r 2 d 2 l 1 u 1 d 2 l 4 u 1 l 1 u 2 l 1 u 1 r 2 d 1 l 1 d 3 l 1 u 1 d 1 l 3 d 1 r 2 d 1 l 1 d 1 r 2 d 1 r 2 u 2 l 1 u 1 r 6 u 1 d 4 l 2 d 1 l 1 d 1 l 2 r 3 u 2 r 1 u 2 l 3 d 1 r 2 d 1 l 1 d 1 l 1 b u 2 c 15 r 2 d 1 r 1 d 2 l 1 u 1 l 1 u 1 l 5 u 1 l 4 d 2 r 1 d 1 r 1 u 2 l 1 r 2 d 1 r 5 b u 12 b r 3 c 15 r 1 l 2 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 2 r 1 d 3 l 1 d 1 r 1 u 1 r 1 u 2 l 1 u 1 l 1 u 1 r 2 d 1 l 1 u 2 l 2 u 2 l 1 u 2 l 1 u 1 r 2 d 2 r 1 d 1 r 1 d 1 r 1 d 1 l 2 d 1 l 1 d 2 r 1 d 2 l 1 d 1 u 4 r 1 d 1 r 2 u 2 l 1 b l 3 b u 7 b l 5 b d 1 c 15 l 10 d 1 l 1 d 1 l 2 d 2 l 1 d 2 l 1 d 1 l 1 d 3 r 1 d 1 r 3 u 6 r 1 u 2 r 1 u 1 r 1 u 1 r 1 l 2 d 1 l 1 d 1 l 1 d 2 l 1 d 5 l 1 u 3 d 1 l 1 d 1 b r 12 b u 11 c 15 l 3 u 5 r 7 d 5 l 4 d 1 r 2 l 3 b u 3 c 15 d 1 u 2 r 2 d 2 l 1 c 1 d 1 l 3 u 5 r 7 d 5 l 2 d 1 l 3 u 4 r 2 d 3"
LOCATE 25, 1: PRINT "Gandalf Says: Fight the"
LOCATE 26, 15: PRINT "Balrog,but be wary"
LOCATE 27, 15: PRINT "of other dangers."
LINE (120, 340)-(200, 240), 8
LINE (200, 240)-(280, 340), 8
LINE (280, 340)-(340, 240), 8
LINE (340, 240)-(420, 340), 8
LINE (120, 340)-(420, 340), 8
LINE (250, 300)-(280, 260), 8
LINE (280, 260)-(310, 300), 8
PAINT (180, 300), 8, 8
PAINT (360, 300), 8, 8
PAINT (270, 310), 7, 8
END IF
IF LEVEL = 4 THEN
COLOR 9: LOCATE 25, 30: PRINT " I S E N G A R D"
DRAW "bm55, 425c 1 u 3 e 3 u 1 e 3 u 1 e 5 r 4 f 4 g 1 l 1 u 1 l 3 g 3 d 2 g 1 d 5 g 1 d 1 r 10 d 1 e 1 r 4 d 1 f 1 e 1 d 2 l 33 h 1 g 1 h 2 u 1 r 23 d 1 r 11 l 33 r 1 d 1 r 34 u 1 l 15 u 2 l 9 u 1 r 8 u 1 l 8 u 1 r 8 u 1 l 7 r 1 u 1 r 6 u 1 l 5 u 1 r 6 u 1 l 5 r 1 u 1 r 4 u 1 r 1 l 4 u 1 r 5 u 1 r 1 l 5 r 1 u 1 r 1 u 1 r 1 u 1 r 4 d 1 r 1 d 1 r 1 d 1 r 1 l 1 u 1 l 6 r 1 u 1 r 2 b d 19 b l 13 c 12 g 3 d 3 f 3 r 3 e 3 c 14 c 0 l 1 g 1 r 1 g 2 u 1 l 3 u 1 l 2 d 1 l 1 r 2 d 1 r 3 l 5 u 6 r 1 u 1 r 1 u 1 r 1 u 1 c 0 c 12 d 1 u 1 g 5 d 6 f 5 r 6 e 5 u 6 h 5 l 6 b d 4 c 6 g 1 e 1 r 1 f 1 b r 3 u 1 g 1 e 1 r 1 f 1 b d 2 b l 1 b u 1 c 9 r 1 l 2 b l 4 b c 9 l 2 b d 4 b r 4 c 10 b u 4 b l 2 c 9 l 2 b d 3 r 3 c 9 c 0 l 3 r 3 u 1 c 12 d 1 f 1 b d 3 b r 2 b u 2 c 4 g 2 l 2 h 2 b d 5 c 15 f 2 g 1 f 1 g 2 f 3 g 1 f 2 e 3 r 1 h 2 e 3 h 2 e 1 g 1 l 1 r 1 u 1 l 6 r 1 d 1 r 3 d 1 l 3 r 5 d 1 r 1 l 5 d 1 l 1 r 5 l 1 d 1 l 5 r 1 d 1 r 3 d 1 r 1 l 3 r 1 d 1 r 2 l 1 d 1 l 2 r 1 d 1 b u 11 c 15 r 3 l 6 b r 3 b r 6 b u 2 b l 3 b d 1 c 12 l 6 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 6 r 1 u 1 r 1 u 1 r 1 u 1 r 1 u 1 r 6 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 6 l 1 d 1 l 1 d 1 l 1 d 1 l 7 u 1 l 1 u 1 l 1 u 7 r 1 u 2 l 2 d 7 u 1 r 2 d 1 r 1 d 1 r 1 d 1 r 2 b u 2 c 4 h 1 u 1 b u 4 b l 3 b d 1 c 6 e 1 b u 1 c 12 r 1 u 1 r 4 d 1 r 2 d 1 r 2 d 2 l 1 u 1 d 2 l 4 u 1 l 1 u 2 l 1 u 1 r 2 d 1 l 1 d 3 l 1 u 1 d 1 l 3 d 1 r 2 d 1 l 1 d 1 r 2 d 1 r 2 u 2 l 1 u 1 r 6 u 1 d 4 l 2 d 1 l 1 d 1 l 2 r 3 u 2 r 1 u 2 l 3 d 1 r 2 d 1 l 1 d 1 l 1 b u 2 c 15 r 2 d 1 r 1 d 2 l 1 u 1 l 1 u 1 l 5 u 1 l 4 d 2 r 1 d 1 r 1 u 2 l 1 r 2 d 1 r 5 b u 12 b r 3 c 15 r 1 l 2 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 1 r 1 d 2 r 1 d 3 l 1 d 1 r 1 u 1 r 1 u 2 l 1 u 1 l 1 u 1 r 2 d 1 l 1 u 2 l 2 u 2 l 1 u 2 l 1 u 1 r 2 d 2 r 1 d 1 r 1 d 1 r 1 d 1 l 2 d 1 l 1 d 2 r 1 d 2 l 1 d 1 u 4 r 1 d 1 r 2 u 2 l 1 b l 3 b u 7 b l 5 b d 1 c 15 l 10 d 1 l 1 d 1 l 2 d 2 l 1 d 2 l 1 d 1 l 1 d 3 r 1 d 1 r 3 u 6 r 1 u 2 r 1 u 1 r 1 u 1 r 1 l 2 d 1 l 1 d 1 l 1 d 2 l 1 d 5 l 1 u 3 d 1 l 1 d 1 b r 12 b u 11 c 15 l 3 u 5 r 7 d 5 l 4 d 1 r 2 l 3 b u 3 c 15 d 1 u 2 r 2 d 2 l 1 c 1 d 1 l 3 u 5 r 7 d 5 l 2 d 1 l 3 u 4 r 2 d 3"
COLOR 14: LOCATE 25, 1: PRINT "Gandalf Says: Watch out"
LOCATE 26, 15: PRINT "for the evil wizard"
LOCATE 27, 15: PRINT "Saruman."
DRAW "bm55, 125c 15 d 1 u 1 l 8 r 28 d 1 g 2 d 1 g 1 d 1 g 2 d 1 g 1 d 1 g 2 d 1 g 1 d 1 g 1 d 136 f 1 d 1 f 1 d 1 f 2 d 2 f 1 d 1 f 1 d 2 f 1 d 1 f 1 d 2 f 1 d 1 f 1 d 2 l 39 e 1 u 2 e 1 u 1 e 1 u 1 e 1 u 1 e 1 u 1 e 1 u 1 e 2 u 1 e 1 u 1 e 1 u 140 h 1 u 1 h 2 u 1 h 1 u 2 h 1 u 1 h 1 u 2 h 1 u 1 h 1 u 1 r 9 b r 85 c 15 r 34 g 1 d 2 g 1 d 1 g 1 d 2 g 1 d 1 g 1 d 2 g 1 d 1 g 1 d 2 g 3 d 1 g 1 d 130 f 1 d 2 f 1 d 1 f 3 d 2 f 1 d 2 f 1 d 1 f 1 d 2 f 2 d 2 l 46 e 2 u 1 e 2 u 2 e 1 u 2 e 1 u 2 e 3 u 2 e 1 u 133 h 1 u 2 h 1 u 1 h 1 u 2 h 2 u 2 h 2 u 3 h 2 u 4 r 11"
DRAW "bm255, 125c 15 d 1 u 1 l 8 r 28 d 1 g 2 d 1 g 1 d 1 g 2 d 1 g 1 d 1 g 2 d 1 g 1 d 1 g 1 d 136 f 1 d 1 f 1 d 1 f 2 d 2 f 1 d 1 f 1 d 2 f 1 d 1 f 1 d 2 f 1 d 1 f 1 d 2 l 39 e 1 u 2 e 1 u 1 e 1 u 1 e 1 u 1 e 1 u 1 e 1 u 1 e 2 u 1 e 1 u 1 e 1 u 140 h 1 u 1 h 2 u 1 h 1 u 2 h 1 u 1 h 1 u 2 h 1 u 1 h 1 u 1 r 9 b r 85 c 15 r 34 g 1 d 2 g 1 d 1 g 1 d 2 g 1 d 1 g 1 d 2 g 1 d 1 g 1 d 2 g 3 d 1 g 1 d 130 f 1 d 2 f 1 d 1 f 3 d 2 f 1 d 2 f 1 d 1 f 1 d 2 f 2 d 2 l 46 e 2 u 1 e 2 u 2 e 1 u 2 e 1 u 2 e 3 u 2 e 1 u 133 h 1 u 2 h 1 u 1 h 1 u 2 h 2 u 2 h 2 u 3 h 2 u 4 r 11"
PAINT (60, 130), 15, 15
PAINT (260, 130), 15, 15
PAINT (130, 130), 15, 15
PAINT (330, 130), 15, 15
END IF
DO
movement:
COLOR 6
LOCATE 1, 2: PRINT "Frodo>": LOCATE 1, 9: PRINT "Life:"; LIFE; : LOCATE 1, 17: PRINT "Dagger:"; DAGGER; : LOCATE 1, 28: PRINT "Lives:"; LIVES; : LOCATE 1, 38: PRINT "Spells:"; SPELL; : LOCATE 1, 48: PRINT "Sword:"; SWORD; : LOCATE 1, 57: PRINT "Armor:"; ARMOR; : LOCATE 1, 67: PRINT "Steps:"; STEPS;
COLOR 10
LOCATE x, y
PRINT CHR$(1)

YELLO:
a$ = INKEY$: IF a$ = "" THEN GOTO YELLO
LOCATE x, y: PRINT " "
IF a$ = CHR$(0) + CHR$(77) THEN y = y + 1: STEPS = STEPS - 1
IF a$ = CHR$(0) + CHR$(80) THEN x = x + 1: STEPS = STEPS - 1
IF a$ = CHR$(0) + CHR$(75) THEN y = y - 1: STEPS = STEPS - 1
IF a$ = CHR$(0) + CHR$(72) THEN x = x - 1: STEPS = STEPS - 1
IF a$ = CHR$(27) THEN CLS : COLOR 15: END

ERRORR:
IF y = 1 THEN y = y + 1
IF y = 80 THEN y = y - 1
IF x = 1 THEN x = x + 1
IF x = 23 THEN x = x - 1

GETWEAPON:
IF x = NEAT0% AND y = RUKE0% THEN LIFE = 1
IF x = NEAT1% AND y = RUKE1% THEN DAGGER = 1
IF x = NEAT2% AND y = RUKE2% THEN SPELL = 4
IF x = 19 AND y = 63 OR x = 19 AND y = 64 OR x = 20 AND y = 63 OR x = 20 AND y = 64 THEN GOSUB EVIL
IF x = NEAT3% AND y = RUKE3% THEN SWORD = 1
IF x = NEAT4% AND y = RUKE4% THEN ARMOR = 1

SECRET:
IF x = 22 AND y = 79 THEN yummy: kewl

MOVING:
LOOP UNTIL STEPS = 0: IF STEPS = 0 THEN mad

drawstuff:
COLOR 14
LOCATE 12, 24: PRINT "                            "
NEAT:
NEAT0% = INT(RND(1) * 23)
RUKE0% = INT(RND(1) * 80)
IF NEAT0% = 2 AND RUKE0% = 2 THEN GOTO NEAT
IF NEAT0% <= 1 THEN GOTO NEAT
IF NEAT0% >= 23 THEN GOTO NEAT
IF RUKE0% <= 1 THEN GOTO NEAT
IF RUKE0% >= 80 THEN GOTO NEAT
LOCATE NEAT0%, RUKE0%: PRINT CHR$(3)
NEAT1:
NEAT1% = INT(RND(1) * 23): RUKE1% = INT(RND(1) * 80)
IF NEAT1% = 2 AND RUKE% = 2 THEN GOTO NEAT1
IF NEAT1% <= 1 THEN GOTO NEAT1
IF NEAT1% >= 23 THEN GOTO NEAT1
IF RUKE1% <= 1 THEN GOTO NEAT1
IF RUKE1% >= 80 THEN GOTO NEAT1
IF NEAT1% = NEAT0% THEN GOTO NEAT1
IF RUKE1% = NEAT0% THEN GOTO NEAT1
LOCATE NEAT1%, RUKE1%: PRINT CHR$(6):
NEAT2:
NEAT2% = INT(RND(1) * 23): RUKE2% = INT(RND(1) * 80)
IF NEAT2% = 2 AND RUKE% = 2 THEN GOTO NEAT2
IF NEAT2% <= 1 THEN GOTO NEAT2
IF NEAT2% >= 23 THEN GOTO NEAT2
IF RUKE2% <= 1 THEN GOTO NEAT2
IF RUKE2% >= 80 THEN GOTO NEAT2
LOCATE NEAT2%, RUKE2%: PRINT CHR$(15)
NEAT3:
NEAT3% = INT(RND(1) * 23): RUKE3% = INT(RND(1) * 80)
IF NEAT3% = 2 AND RUKE% = 2 THEN GOTO NEAT3
IF NEAT3% <= 1 THEN GOTO NEAT3
IF NEAT3% >= 23 THEN GOTO NEAT3
IF RUKE3% <= 1 THEN GOTO NEAT3
IF RUKE3% >= 80 THEN GOTO NEAT3
LOCATE NEAT3%, RUKE3%: PRINT CHR$(157)
NEAT4:
NEAT4% = INT(RND(1) * 23): RUKE4% = INT(RND(1) * 80)
IF NEAT4% = 2 AND RUKE% = 2 THEN GOTO NEAT4
IF NEAT4% <= 1 THEN GOTO NEAT4
IF NEAT4% >= 23 THEN GOTO NEAT4
IF RUKE4% <= 1 THEN GOTO NEAT4
IF RUKE4% >= 80 THEN GOTO NEAT4
LOCATE NEAT4%, RUKE4%: PRINT CHR$(237): NEAT5% = INT(RND(1) * 23): RUKE5% = INT(RND(1) * 80)
IF LEVEL = 2 THEN
DRAW "bm500, 300 c 20 l 1 u 1 l 4 d 1 l 3 u 1 l 1 d 1 l 1 d 1 l 2 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 g 2 d 2 g 1 f 1 d 1 f 1 d 1 g 1 f 1 d 2 r 1 d 1 r 1 f 1 r 1 f 1 r 2 e 1 r 1 f 1 e 1 r 1 f 1 e 1 r 2 e 1 f 2 e 1 r 2 e 1 u 1 e 1 u 1 e 2 u 3 e 1 u 1 l 1 e 1 u 1 l 1 e 1 l 3 h 2 e 1 h 2 l 2 u 1 l 1 c 8 l 2 u 1 l 4 d 1 l 3 u 1 l 1 d 1 l 1 d 1 l 2 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 1 g 2 d 2 g 1 f 1 d 1 f 1 d 1 g 1 f 1 d 2 r 1 d 1 r 1 d 1 r 2 f 1 r 2 e 1 r 1 f 1 e 1 r 1 f 1 e 1 r 2 e 1 r 1 d 1 f 1 e 1 r 2 e 1 u 1 e 1 u 1 e 2 u 3 e 1 u 1 l 1 r 1 u 3 l 1 d 1 u 1 l 2 h 2 e 1 h 2 l 2 u 1 d 2 l 1 u 1 l 3 u 1 l 2 d 1 l 5 d 1 l 2 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 2 d 1 l 1 d 3 l 1 r 1 d 2 r 1 d 3 l 1 r 1 d 2 r 1 d 1 r 1 d 1 r 2 d 1 r 2 u 1 r 3 d 1 u 1 r 3 d 1 u 1 r 3 u 1 r 3 d 2 u 1 r 3 u 2 r 1 u 2 r 1 u 1 r 1 u 4 r 1 l 1 u 2 r 1 l 1 u 1 l 2 u 1 l 1 u 1 l 1 u 2 r 1 l 1 u 1 l 1 d 1 c 7 l 3 u 1 l 3 u 1 d 1 l 5 d 1 l 2 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 2 d 1 l 1 d 3 r 1 d 5 r 1 d 1 r 1 d 1 r 2 d 1 u 1 r 9 u 1 r 5 d 1 r 1 u 2 r 1 u 2 r 1 u 1 r 1 u 5 l 2 u 1 l 1 u 1 l 1 u 2 l 4 u 1 l 6 d 1 l 2 d 1 l 1 d 1 l 1 d 1 l 1 d 1 l 2 d 1 l 1 d 1 r 1 d 5 r 1 d 1 r 1 d 1 r 9 u 1 r 6 u 1 r 1 u 2 r 1 u 1 r 1 u 3 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 4 u 1 l 4 b d 6 b l 3 b u 1 c 4 f 1 b r 7 c 4 e 1": NEAT% = INT(RND(1) * 23): RUKE% = INT(RND(1) * 80)
END IF
IF LEVEL = 1 THEN
DRAW "bm500,300 c 2 g 4 d 4 f 4 r 4 e 4 u 4 h 4 l 4 b d 3 c 4 f 1 b r 2 u 1 r 1 g 1 b d 4 b l 3 c 6 f 1 r 1 e 1": NEAT% = INT(RND(1) * 23): RUKE% = INT(RND(1) * 80)
END IF
IF LEVEL = 3 THEN
DRAW "bm500, 300 c 4 h 4 u 2 e 4 r 3 f 1 g 1 l 2 g 2 d 2 f 2 r 14 e 2 u 2 h 2 l 2 h 1 e 1 r 3 f 3 d 3 g 1 e 1 d 1 g 3 d 5 g 2 d 2 g 2 l 4 b u 9 b l 8 b u 1 c 4 d 4 f 2 d 2 f 2 r 3 b u 3 l 1 b u 6 b l 3 f 2 b r 6 c 4 e 2 b d 6 b l 3 c 4 l 2 r 3 l 6 d 1 u 1 r 6 d 1 b u 10 b l 11 c 6 u 1 l 1 u 1 l 1 u 1 l 1 u 1 r 1 u 1 l 1 r 1 u 1 r 1 u 1 r 1 u 1 r 3 b r 10 c 6 r 3 d 1 r 1 d 1 r 1 d 4 l 1 d 1 l 1 d 1"
END IF
IF LEVEL = 4 THEN
DRAW "bm 500, 300 c 15 u 1 r 1 u 3 r 1 u 1 r 1 u 1 r 1 u 1 r 4 u 1 r 4 f 1 g 1 l 1 d 1 l 1 d 1 l 2 d 2 l 1 d 2 r 8 f 1 g 1 l 24 h 1 e 1 r 8 d 1 l 8 r 10 u 1 r 1 u 3 r 1 u 1 r 1 u 1 r 1 u 1 r 4 u 1 r 3 l 2 d 1 l 1 d 1 l 3 d 1 l 1 r 2 d 1 l 3 d 1 l 1 r 3 d 1 l 3 d 1 r 3 d 1 r 9 l 13 d 1 b d 1 b l 4 c 12 d 2 r 1 d 3 l 1 d 1 r 1 d 1 r 2 d 1 r 1 d 1 r 5 u 1 r 1 u 1 r 1 u 2 r 1 u 5 c 4 b l 9 b d 2 c 4 f 1 b r 5 b l 1 c 4 e 1 b d 4 b l 3 c 4 r 1 l 2 r 3 b u 1 c 12 l 6 d 1 r 2 d 1 r 1 d 1 r 1 u 1 r 1 d 1 r 1 u 1 r 1 u 2 r 1 d 1 u 2 r 1 u 4 l 10 d 1 r 9 d 2 l 1 d 1 l 9 r 2 u 2 d 1 r 1 d 1 r 2 u 2 l 1 r 4 l 1 d 1 l 1"
END IF
GOTO KEWLNESS
RETURN

EVIL:
IF ARMOR >= 1 AND SWORD >= 1 AND SPELL >= 1 AND LIFE >= 1 AND DAGGER >= 1 THEN beat1 ELSE GOTO SIWIE
RETURN

SIWIE:
CLS : LOCATE 5, 5: PRINT "Uh-oh.  You missed an item and the Orc gets you!!": LOCATE 7, 5: PRINT "<Press 1 to continue>": DO: LOOP UNTIL INKEY$ = "1": STEPS = 185: LIFE = 0: SWORD = 0: SPELL = 0: ARMOR = 0: DAGGER = 0: LIVES = LIVES - 1: IF LIVES < 1 THEN END ELSE GOTO PLAYGAME
RETURN
DEL:
END SUB

SUB endin
SCREEN 13
DRAW "bc 21 u 13 e 3 f 3 d 13 l 1 c 22 u 13 h 2 g 2 d 13 r 3 u 2 c 23 u 11 h 1 g 1 d 10 c 24 d 2 r 1 u 6 c 25 u 6 b l 63 b c 16 c 17 r 178 d 1 c 18 l 250 u 1 c 19 r 250 u 1 c 20 l 250 u 1 c 21 r 250 u 1 c 22 l 250 u 1 c 23 r 250 u 1 c 24 l 250 u 1 c 25 r 250 u 1 c 26 l 250 u 1 c 27 r 250 u 1 c 28 l 250 u 1 c 29 r 250 u 1 c 30 l 250 u 1 c 31 r 250 u 1 c 32 l 250 u 1 c 33 r 250 u 1 c 34 l 250 u 1 c 35 r 250 u 1 c 36 l 250 u 1 c 37 r 250 u 1 c 38 l 250 u 1 c 39 r 250 u 1 c 40 l 250 u 1 c 41 r 250 u 1 c 42 l 250 u 1 c 43 r 250 u 1 c 44 l 250 u 1 c 45 r 250 u 1 c 46 l 2 r 2 c 47 l 250 u 1 c 48 r 250 u 1 c 49 l 250 u 1 c 50 r 250 u 1 c 51 l 250 u 1 c 52 r 250 u 1 c 53 l 250 u 1 c 54 r 250 u 1 c 55 l 250 u 1 c 56 r 250 u 1 c 57 l 250 u 1 c 59 r 250 u 1 c 60 l 250 u 1 c 61 r 250 u 1 c 62 l 250 u 1 c 63 r 250 u 1 c 64 l 250 u 1 c 65 r 250 u 1 c 66 l 250 u 1 c 67 r 250 u 1 c 68 l 250 u 1 c 69 r 1 l 1 r 250 u 1 c 70 l 250 u 1 c 71 r 250 u 1 c 72 l 250 u 1 c 73 r 250 u 1 c 74 l 250 u 1 c 75 r 250 u 1 c 76 l 250 b u 3 d 2 c 77 r 250 u 1 c 78 l 250 u 1 c 79 r 250 u 1 c 80 l 250 u 1 c 81 r 250 u 1 c 82 l 250 u 1 c 83 r 250 u 1 c 84 l 250 u 1 c 85 r 250 u 1 c 86 l 250 u 1 c 87 r 250 u 1 c 88 l 250 u 1 c 89 r 250 u 1 c 90 l 250 u 1 c 91 r 250 u 1 c 92 l 250 u 1 c 93 r 250 u 1 c 94 l 250 u 1 c 96 r 250 u 1 c 97 l 250 u 1 c 98 r 250 u 1 c 99 l 250 u 1 c 100 r 250 u 1 c 101 l 250 b d 82 c 102 r 250 d 1 l 250 d 1 c 103 r 250 d 1 c 104 l 250 d 1 c 105 r 250 d 1 c 106 l 250 d 1 c 107 r 250 b u 6 c 16 l 250 u 1 c 17 r 243 b u 2 b d 2 c 17 r 7 b d 8 c 108 l 250 d 1 c 109 r 250 d 1 c 110 l 250 d 1 c 111 r 250 d 1 c 112 l 250 d 1 c 113 r 250 d 1 c 114 l 250 d 1 c 115 r 250 d 1 c 116 l 250 d 1 c 117 r 250 d 1 c 118 l 250 d 1 c 119 r 250 d 1 c 121 l 250 d 1 c 122 r 250 d 1 c 123 l 250 d 1 c 124 r 250 d 1 c 125 l 250 d 1 c 126 r 250 d 1 c 127 l 250 d 1 c 128 r 250 d 1 c 129 l 250 d 1 c 130 r 250 d 1 c 131 l 250 d 1 c 132 r 250 d 1 c 133 l 250 d 1 c 134 r 250 d 1 c 135 l 250 d 1 c 136 r 250 d 1 c 137 l 250 d 1 c 138 r 250 d 1 c 139 l 250 d 1 c 140 r 250 d 1 c 142 l 250 d 1 c 143 r 250 d 1 c 144 l 250 d 1 c 145 r 250 d 1 c 146 l 250 d 1 c 147 r 250 d 1 c 148 l 250 d 1 c 149 r 250 d 1 c 150 l 250 d 1 c 151 r 250 d 1 c 152 l 250 d 1 c 153 r 250 d 1 c 154 l 250 d 1 c 156 r 250 d 1 c 158 l 250 d 1 c 29 b g 1 b e 1 c 136 r 117 l 41 b l 76 c 133 r 250 d 1 c 134 l 250 d 1 c 135 r 250 d 1 c 136 l 250 d 1 c 137 r 250 d 1 c 138 l 250 d 1 c 139 r 250 d 1 c 140 l 250 d 1 c 141 r 250 d 1 c 142 l 250 d 1 c 144 r 250 d 1 c 145 l 250 d 1 c 146 r 250 d 1 c 147 l 250 d 1 c 148 r 250 d 1 c 149 l 250 d 1 c 150 r 250 d 1 c 151 l 250 d 1 c 152 r 250 d 1 c 153 l 250 d 1 c 154 r 250 d 1 c 155 l 250 d 1 c 156 r 250 d 1 c 157 l 250 d 1 c 158 r 250 d 1 c 159 l 250 d 1 c 160 r 79 b u 27 c 160 r 2 b d 1 c 160 l 81 r 250 d 1 c 161 l 250 d 1 c 162 r 250 d 1 c 163 l 250 d 1 c 164 r 250 d 1 c 165 l 250 d 1 c 166 r 250 d 1 c 167 l 250 d 1 c 168 r 251 d 1 l 1 c 169 l 250 d 1 c 170 r 250 d 1 c 171 l 250 d 1 c 172 r 250 d 1 c 173 l 250 d 1 c 174 r 250 d 1 c 175 l 250 d 1 c 176 r 250 d 1 c 177 l 250 d 1 c 178 r 250 d 1 c 179 l 250 d 1 c 180 r 250 d 1 c 181 l 250 d 1 c 182 r 250 d 1 c 183 l 250 d 1 c 184 r 250 d 1 c 185 l 250 d 1 c 186 r 250 d 1 c 187 l 250 d 1 c 188 r 250 d 1 c 189 l 250 d 1 c 190 r 250 d 1 c 191 l 250 d 1 c 192 r 250 d 1 c 193 l 250 d 1 c 194 r 250 d 1 c 195 l 250 d 1 c 196 r 250 d 1 c 197 l 250 d 1 c 198 r 250 d 1 c 199 l 251 d 1 r 1 c 200 r 251 d 1 l 1 c 201 l 250 d 1 c 202 r 250 d 1 c 203 l 250 d 1 c 204 r 250 d 1 c 205 l 250 d 1 c 206 r 250 d 1 c 207 l 250 d 1 c 208 r 250 d 1 c 209 l 250 d 1 c 210 r 250 d 1 c 211 l 250 d 1 c 212 r 250 d 1 c 213 l 251 r 1 d 1 c 214 r 250 d 1 c 216 l 250 d 12 b u 205 d 1 c 217 r 250 u 1 c 218 l 250 u 1 c 220 r 250 u 1 c 221 l 250 u 1 c 222 r 250 u 1 c 223 l 250 u 1 c 224 r 250 u 1 c 225 l 250 u 1 l 151 b l 1 b d 132 b d 6 b d 3 b d 66 b d 1 c 13 d 6 g 2 d 1 g 1 d 1 g 1 d 2 g 1 f 1 d 1 f 1 d 1 g 1 f 1 d 1 g 1 f 1 d 1 g 2 d 1 f 1 g 1 d 1 f 1 g 1 d 1 f 1 g 1 d 1 f 1 d 1 g 1 f 1 d 1 g 2 d 1 b d 47 g 8 r 8 u 243 r 56 d 230 c 32 r 61 u 208 l 63 d 174 r 100 l 1 u 1 r 1 l 1 r 1 u 1 l 1 r 1 u 1 l 1 r 1 u 1 l 1 r 1 l 2 u 1 r 2 l 1 u 1 l 1 r 1 u 1 l 1 r 1 l 1 r 1 l 1 r 1 u 70 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 r 1 u 1 l 1 r 1 u 1 r 1 l 1 r 1 u 1 l 1 u 1 d 3 r 1 d 1 r 1 d 1 r 1 d 1 r 4 d 18 c 221 u 205 l 2 d 6 r 1 c 222 d 199 l 1 c 223 u 199 l 1 c 224 d 199 l 1 c 225 u 199 l 1 c 226 d 199 l 1 c 227 u 200 d 1 l 1 c 228 d 199 l 1 c 229 u 199 l 1 c 230 d 199 l 1 c 231 u 199 l 1 c 232 d 199 l 1 c 233 u 199 l 1 c 234 d 199 l 1 c 235 u 199 l 1 c 236 d 199 l 1 c 237 u 199 l 1 c 238 d 199 l 1 c 239 u 199 l 1 c 240 d 199 l 1 c 241 u 199 l 1 c 242 d 199 l 1 c 243 u 199 l 1 c 244 d 199 l 1 c 245 u 199 l 1 c 246 d 199 l 1 c 247 u 199 l 1 c 248 d 89 b d 110 c 1 u 199 l 2 r 2 b r 279 b c 2 d 199 r 1 c 3 u 17 d 5 l 1 d 12 c 2 u 199 r 1 c 3 d 192 b d 7 r 1 c 4 u 39 u 160 r 1 c 5 d 199 r 1 c 6 u 199 r 1 c 7 d 199 r 1 c 8 u 199 r 1 c 9 d 199 r 1 c 10 u 199 r 1 c 11 d 199 r 1 c 12 u 199 r 1 c 13 d 199 r 1 c 14 u 199 r 1 c 15 d 199"
COLOR 31
PRINT "So ya liked the game, eh? Well, even"
PRINT
COLOR 30
PRINT "if ya didn't, let me know some comments"
PRINT
COLOR 29
PRINT "about this game. It's my first 256-color"
COLOR 28
PRINT
PRINT "game. I have some text-adventure games"
COLOR 27
PRINT
PRINT "that I can send if you would like. They"
COLOR 26
PRINT
PRINT "have all been redone and have 256-color"
COLOR 25
PRINT
PRINT "graphics that are really sharp."
COLOR 24
PRINT
PRINT "I am VectorPup@aol.com for you net-heads"
COLOR 23
PRINT
PRINT "and Vector Pup for those kewl ones with"
COLOR 22
PRINT
PRINT "AOL."
COLOR 21
DO: LOOP UNTIL INKEY$ <> ""
END
END SUB

SUB isengard
LEVEL = 4
drawstuff
END SUB

SUB kewl
SCREEN 13
CLS
LOCATE 5, 4: PRINT "HA !! You thought you'd get another"
LOCATE 6, 4: PRINT "level out of this?!?!"
LOCATE 7, 4: PRINT "Yeah right!!!!": DO: LOOP UNTIL INKEY$ <> ""
END
END SUB

SUB mad
mad:
CLS
SCREEN 12
LOCATE 5, 5: PRINT "Nice one, Frodo.  You walked so far that you went to"
LOCATE 6, 5: PRINT "sleep. Unfortunatly, the Old Forest has a"
LOCATE 7, 5: PRINT "large population of wolves.  They eat you.": LOCATE 8, 5: PRINT "<Press 1 to continue>": STEPS = 185: DO: LOOP UNTIL INKEY$ = "1": LIFE = 0: SWORD = 0: SPELL = 0: ARMOR = 0: DAGGER = 0: LIVES = LIVES - 1: IF LIVES < 1 THEN END
CLS
drawstuff
END SUB

SUB moria
LEVEL = 3
drawstuff
END SUB

SUB oldforest
LEVEL = 2
drawstuff
END SUB

DEFINT A-Z
SUB SPARKLEPAUSE

END SUB

DEFSNG A-Z
SUB win
SCREEN 13
DEATH:
CLS
DRAW "u 1 c 16 d 1 c 121 u 15 e 6 r 3 d 28 g 1 e 1 l 3 h 6 b r 3 b u 6 c 40 d 3 r 1 e 1 u 2 e 1 u 2 l 1 h 1 e 1 h 1 e 2 h 2 g 2 d 1 l 1 d 2 r 1 d 3 l 1 d 1 r 2 u 2 c 113 r 1 d 5 u 3 r 1 u 1 l 1 u 1 l 1 u 2 r 1 l 1 u 1 l 1 r 1 u 2 r 1 u 1 d 2 u 1 r 1 u 3 l 2 d 1 l 1 d 1 l 1 d 7 r 1 d 1 l 1 d 6 r 1 d 1 r 1 u 1 r 2 u 1 r 2 u 3 l 1 u 1 c 4 d 3 g 1 d 1 u 2 d 1 l 3 u 6 r 1 u 4 l 1 r 1 u 2 r 1 b r 2 c 118 r 2 d 19 l 2 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 u 1 l 1 r 1 d 1 r 1 d 1 r 2 c 123 r 1 d 1 r 1 d 1 u 2 c 169 r 1 l 2 c 194 r 1 l 2 r 1 d 1 r 1 d 1 u 2 r 1 l 1 u 3 r 1 u 3 r 1 u 3 l 2 d 1 u 4 l 2 r 1 u 2 l 1 r 1 u 6 l 3 d 1 l 1 d 1 l 1 r 1 u 1 r 1 u 1 r 4 u 2 c 242 r 1 c 2 l 1 u 1 l 1 r 2 l 2 d 1 l 1 d 1 l 1 r 2 u 1 r 2 d 3 l 1 d 2 r 1 u 1 l 1 d 5 b d 10 b l 1 c 2 d 2 l 2 u 1 r 1 b l 6 b u 5 c 21 l 1 r 2 l 11 u 5 r 11 f 2 g 2 c 22 l 10 u 3 r 10 d 1 f 1 u 1 l 1 d 1 c 23 l 9 c 24 u 1 r 8 b l 11 b u 2 c 116 u 5 r 1 f 2 u 4 l 5 d 1 u 1 l 1 d 7 u 1 l 1 r 1 c 186 l 11 d 7 r 11 l 1 u 6 l 9 d 5 c 187 r 8 u 4 l 6 c 188 l 1 d 3 r 6 u 2 l 1 c 189 l 4 d 1 r 4 b r 4 c 117 u 10 r 1 d 1 u 1 r 5 d 4 u 1 l 2 u 1 l 1 d 14 r 1 u 1 d 1 r 1 u 1 d 3 l 5 u 1 r 1 l 1 u 6 b r 4 b d 4 b b b b b b b c 16 u 1 c 17 b l 3 c 116 d 2 r 1 d 1 r 2 l 2 u 14 b u 2 b r 2 r 1 d 1 u 1 l 2 c 117 l 1 c 141 r 1 l 2 d 1 r 1 l 1 d 11 b r 3 b d 2 c 254 u 1 b u 3 b l 7 c 6 l 6 u 3 r 4 c 138 r 3 d 2 l 6 u 1 r 3 c 139 r 2 c 183 r 1 d 2 l 1 d 1 l 1 r 2 l 8 u 3 c 184 d 2 u 3 c 185 r 1 u 1 l 1 c 186 r 2 l 1 d 2 l 1 d 2 r 1 d 2 l 2 u 1 r 11 l 1 u 4 l 1 r 2 l 10 r 2 d 2 l 1 d 1 r 6 u 1 l 1 r 2 d 1 u 2 l 5 d 1 r 2 b l 6 c 21 u 4 d 7 b r 3 u 7 b r 3 c 21 d 7 b r 5 c 20 d 5 r 5 u 3 d 1 l 2 u 13 r 3 d 1 u 4 l 6 d 12 c 21 r 1 d 5 r 3 l 2 u 15 r 3 u 1 l 4 d 10 b r 15 c 4 r 1 d 2 l 1 u 1 d 4 r 2 d 1 u 1 r 1 u 1 r 3 u 3 l 1 u 4 l 2 u 2 r 1 l 1 u 2 r 1 u 4 l 1 d 1 l 1 d 1 l 2 d 5 r 1 d 1 u 5 r 2 u 1 d 1 l 1 d 11 r 1 u 5 r 1 d 4 b d 9 c 193 d 1 r 3 d 1 u 1 r 1 u 28 l 4 d 1 g 5 d 5 b d 7 c 193 d 4 f 4 r 2 d 1 r 2 u 3 r 1 u 13 l 1 u 10 l 2 c 2 d 2 l 1 b d 9 b r 3 c 2 d 15 g 1 u 1 l 1 u 1 h 4 l 1 r 1 f 4 r 1 u 1 l 2 u 1 r 2 u 3 r 1 u 6 l 1 d 1 u 4 l 2 r 1 u 2 l 1 r 1 u 6 l 2 g 2 e 2 r 3 u 3 r 1 d 10 b l 5 c 17 d 1 b d 19 d 2 b u 14 c 17 e 1 b u 3 c 17 u 1"
LOCATE 15, 2: PRINT "YOU KILLED THE ORC!!!": PLAY "O3L10l8cn0cdn0den0el8fedl10c"
SLEEP 1
SCREEN (2)
SCREEN 0, 0, 0, 0: SCREEN (0)
CLS
COLOR 15
LOCATE 2, 13
PRINT "Good job, Frodo.  You managed to beat the Orc. But will the"
LOCATE 3, 13
PRINT "mazes of the Old Forest be too tough for you?? Find out in"
LOCATE 4, 13: PRINT "the next level, coming now!!!"
LOCATE 6, 13: PRINT "Password-Kupo"

DEFINT A-Z
'SparklePause:
'  Creates flashing border for intro screen

    COLOR 9
    a$ = "*    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    *    "
    WHILE INKEY$ <> "": WEND 'Clear keyboard buffer

    WHILE INKEY$ = ""
        FOR a = 1 TO 5
            LOCATE 1, 1                             'print horizontal sparkles
            PRINT MID$(a$, a, 80);
            LOCATE 22, 1
            PRINT MID$(a$, 6 - a, 80);

            FOR b = 2 TO 21                         'Print Vertical sparkles
                c = (a + b) MOD 5
                IF c = 1 THEN
                    LOCATE b, 80
                    PRINT "*";
                    LOCATE 23 - b, 1
                    PRINT "*";
                ELSE
                    LOCATE b, 80
                    PRINT " ";
                    LOCATE 23 - b, 1
                    PRINT " ";
                END IF
            NEXT b
        NEXT a
    WEND
CLS

oldforest
END SUB

DEFSNG A-Z
SUB yummy
SCREEN 12
CLS
LOCATE 12, 25: PRINT "S E C R E T  E X I T!!!"
LOCATE 18, 20: PRINT "You found the path to the Secret Exit"
LOCATE 19, 20: PRINT "out of the Old Forest.  Now prepare"
LOCATE 20, 20: PRINT "yourself for a new challenge...": DO: LOOP UNTIL INKEY$ <> ""
kewl
END SUB

