
'THANK YOU FOR GETTING THIS GREAT GAME
'DON'T FORGET, YOU CAN E-MAIL ME AT AOL SCREEN NAME RJD42
'E-MAIL FOR MORE INFO ABOUT VERSION 3 OR MY NEW GAMES
'AND BE SURE TO ASK ABOUT MY NEW QBASIC ROLE PLAYING GAME!

DECLARE SUB cone (ch%, cv%, HEIGHT%, size%)
DECLARE SUB gethighscore ()
DECLARE SUB drawenemyplain ()
DECLARE SUB drawenemyblock ()
DECLARE SUB sbsoundtest ()
DECLARE SUB font (fh%, fv%, letter$, col%)
DECLARE FUNCTION DetectCard% ()
DECLARE SUB SBInit ()
DECLARE SUB delay (break%)
DECLARE SUB soundtest ()
DECLARE SUB grafxtest ()
DECLARE SUB drawfireball ()
DECLARE SUB fireballexplode ()
DECLARE SUB puthighscore ()
DECLARE SUB song1 ()
DECLARE SUB song2 ()
DECLARE SUB note (level%, legnth%)
DECLARE SUB background1 ()
DECLARE SUB background2 ()
DECLARE SUB backgroundpit ()
DECLARE SUB intro ()
DECLARE SUB drawguy1stick ()
DECLARE SUB drawguy2stretch ()
DECLARE SUB drawguy1knee ()
DECLARE SUB statusbar ()
DECLARE SUB soundeffect (kind$)
DECLARE SUB soundoptions ()
DECLARE SUB endpicture ()
DECLARE SUB WriteReg (Reg%, Value%)
DECLARE SUB SBPlay (note%)
DECLARE SUB drawguy1plain ()
DECLARE SUB drawguy2plain ()
DECLARE SUB drawguy2punching ()
DECLARE SUB drawguy2kicking ()
DECLARE SUB drawguy2victory ()
DECLARE SUB drawguy2ducking ()
DECLARE SUB drawguy1punching ()
DECLARE SUB drawguy1kicking ()
DECLARE SUB drawguy1blocking ()
DECLARE SUB drawguy1ducking ()
DECLARE SUB enemypattern ()
DECLARE SUB exitprogram ()
DECLARE SUB drawenemykicking ()
DECLARE SUB enemyfall ()
DECLARE SUB punchoffledge ()
DECLARE SUB ending ()
DECLARE SUB guy1ending ()
DECLARE SUB guy2ending ()
DECLARE SUB reward ()
DECLARE SUB movelist ()
DECLARE SUB drawenemyfallen ()
DECLARE SUB characterpick ()
DECLARE SUB round (roundnum%)
DECLARE SUB fight (fightnumber%)
DECLARE SUB fightstartup ()
DECLARE SUB fightwithchar1 ()
DECLARE SUB fightwithchar1duck ()
DECLARE SUB fightwithchar1fire ()
DECLARE SUB fightwithenemyfall ()
DECLARE SUB fightwithchar1blck ()
DECLARE SUB fightwithchar2 ()
DECLARE SUB fightwithchar2duck ()
CONST false = 0, true = NOT false

DIM SHARED practicemode$, mcounttimer%, colytimer%, mcount%, coly%, dmode$, dcount%, zcount%, no$, v%, inspike$, change$, name$, firsttime$, ch%, cv%, HEIGHT%, col%, backcol%, size%, firetimer%, rndnum%, highrating$, difficulty%, col1%, col2%, col3% _
, oldcombodamage%, combodamage%, oldcombohits%, hittimer%, combohits%, COMBOTIMER%, highfightwins%, fightwins%, enemyposition$, fireball$, fightnum%, blocking$, LESSLIMIT%, MORELIMIT%, bg%, ph%, pvv%, charpick%, kind$, enemylife%, guy1position$,  _
soundcard$, sounds$, gl%, dsoundcard$, ncount%, break%, life%, time%, evv%, eh%, score%, scount%, bh%, bv%, highscore%, yesjump%, nname$
nname$ = "Noah": name$ = "Noah": highscore% = 2500: highfightwins% = 10
col1% = 8: col2% = 4: col3% = 11: inspike$ = "NO": dmode$ = "NO"
difficulty% = 4: coly% = 10: practicemode$ = "NO"
firsttime$ = "YES"
RANDOMIZE TIMER
bg% = INT(RND * 1) + 1'2'1
IF bg% = 1 THEN LESSLIMIT% = 10: MORELIMIT% = 310
IF bg% = 2 THEN LESSLIMIT% = 20: MORELIMIT% = 290
IF DetectCard = true THEN
soundcard$ = "YES": GOTO 15
ELSE soundcard$ = "NO": dsoundcard$ = "NO": GOTO 15
END IF
IF dsoundcard$ = "NO" THEN soundcard$ = "NO"
15 CLS : SCREEN 13: PAINT (1, 1), 15
FOR delay28% = 0 TO 10 STEP 1
delay 32766
NEXT delay28%
FOR HEIGHT% = 210 TO -10 STEP -1
'font 110, HEIGHT%, "P", 0
'font 120, HEIGHT%, "R", 0
'font 130, HEIGHT%, "O", 0
'font 140, HEIGHT%, "G", 0
'font 150, HEIGHT%, "R", 0
'font 160, HEIGHT%, "A", 0
'font 170, HEIGHT%, "M", 0
'font 180, HEIGHT%, "E", 0
'font 190, HEIGHT%, "D", 0
'font 145, HEIGHT% + 10, "B", 0
'font 155, HEIGHT% + 10, "Y", 0
'd'elay 4000
'font 110, HEIGHT%, "P", 15
'font 120, HEIGHT%, "R", 15
'font 130, HEIGHT%, "O", 15
'font 140, HEIGHT%, "G", 15
'font 150, HEIGHT%, "R", 15
'font 160, HEIGHT%, "A", 15
'font 170, HEIGHT%, "M", 15
'font 180, HEIGHT%, "E", 15
'font 190, HEIGHT%, "D", 15
'font 145, HEIGHT% + 10, "B", 15
'font 155, HEIGHT% + 10, "Y", 15
NEXT HEIGHT%
FOR HEIGHT% = 210 TO -10 STEP -1
'font 100, HEIGHT%, "N", 0
'font 110, HEIGHT%, "O", 0
'font 120, HEIGHT%, "A", 0
'font 130, HEIGHT%, "H", 0
'font 150, HEIGHT%, "D", 0
'font 160, HEIGHT%, "A", 0
'font 170, HEIGHT%, "L", 0
'font 180, HEIGHT%, "E", 0
'font 190, HEIGHT%, "O", 0
delay 4000
'font 100, HEIGHT%, "N", 15
'font 110, HEIGHT%, "O", 15
'font 120, HEIGHT%, "A", 15
'font 130, HEIGHT%, "H", 15
'font 150, HEIGHT%, "D", 15
'font 160, HEIGHT%, "A", 15
'font 170, HEIGHT%, "L", 15
'font 180, HEIGHT%, "E", 15
'font 190, HEIGHT%, "O", 15
NEXT HEIGHT%
FOR delay29% = 0 TO 10 STEP 1
delay 32766
NEXT delay29%
CLS : CALL soundoptions
IF dsoundcard$ = "NO" THEN soundcard$ = "NO"
'CALL intro
'CALL puthighscore
'CALL characterpick
fightnum% = 1
fight:
IF fightnum% > 11 THEN GOTO 680
'fight fightnum%
IF firsttime$ = "YES" THEN firsttime$ = "NO": GOTO 768
IF bg% = 1 THEN bg% = 2: GOTO 768
IF bg% = 2 THEN bg% = 1
768 IF bg% = 1 THEN LESSLIMIT% = 10: MORELIMIT% = 310
IF bg% = 2 THEN LESSLIMIT% = 20: MORELIMIT% = 290
wins% = 0
rndnum% = 1
'IF charpick% = 1 THEN CALL fightwithchar1
'IF charpick% = 2 THEN CALL fightwithchar2
'IF life% > enemylife% THEN wins% = wins% + 1
rndnum% = 2
'IF charpick% = 1 THEN CALL fightwithchar1
'IF charpick% = 2 THEN 'CALL fightwithchar2
'IF life% > enemylife% THEN wins% = wins% + 1
'IF wins% = 2 THEN status$ = "WIN": GOTO 678
'IF wins% = 0 THEN status$ = "LOSE": GOTO 678
'rndnum% = 3
'IF charpick% = 1 THEN CALL fightwithchar1
'IF charpick% = 2 THEN CALL fightwithchar2
'IF life% > enemylife% THEN wins% = wins% + 1
'IF wins% = 2 THEN status$ = "WIN": GOTO 678
'IF wins% < 2 THEN status$ = "LOSE": GOTO 678
678 IF status$ = "WIN" THEN fightwins% = fightwins% + 1: fightnum% = fightnum% + 1: col1% = col1% + 1: col2% = col2% + 1: GOTO fight
679 CLS : SCREEN 13: LOCATE 13, 15: COLOR 10: PAINT (1, 1), 0
'font 110, 100, "Y", 4
'font 120, 100, "O", 4
'font 130, 100, "U", 4
'font 150, 100, "L", 4
'font 160, 100, "O", 4
'font 170, 100, "S", 4
'font 180, 100, "E", 4
SOUND 50, 5
delay 32766: delay 32766: delay 32766: delay 32766: delay 32766:
delay 32766: delay 32766: delay 32766: delay 32766: 'CALL exitprogram
680 CLS : SCREEN 13: LOCATE 13, 15: COLOR 10: PAINT (1, 1), 0
'font 110, 100, "Y", 15
'font 120, 100, "O", 15
'font 130, 100, "U", 15
'font 150, 100, "W", 15
'font 160, 100, "I", 15
'font 170, 100, "N", 15
coly% = 10'!
delay 32766: delay 32766: delay 32766: delay 32766: delay 32766:
CALL song2: delay 32766: delay 32766: delay 32766: delay 32766:
'CALL ending
'CALL reward
'CALL exitprogram


DEFINT A-Z
SUB delay (break%)
FOR W% = 1 TO break% STEP 1: NEXT W%
END SUB

FUNCTION DetectCard%
CALL WriteReg(&H4, &H60)
CALL WriteReg(&H4, &H80)
B = INP(&H388)
CALL WriteReg(&H2, &HFF)
CALL WriteReg(&H4, &H21)
FOR x = 0 TO 130
A = INP(&H388)
NEXT x
c = INP(&H388)
CALL WriteReg(&H4, &H60)
CALL WriteReg(&H4, &H80)
Success = 0
IF (B AND &HE0) = &H0 THEN
IF (c AND &HE0) = &HC0 THEN
Success = -1
END IF
END IF
DetectCard% = Success
END FUNCTION

SUB note (level%, legnth%)
SBPlay level%
FOR delay1% = 0 TO legnth% STEP 1: NEXT delay1%
FOR delay1% = 0 TO legnth% STEP 1: NEXT delay1%
CALL WriteReg(&HB0, &H0)
END SUB

SUB SBInit
FOR q = 1 TO &HF5
CALL WriteReg(q, 0)
NEXT q
END SUB

SUB SBPlay (freq%)
IF sounds$ = "NO" THEN EXIT SUB
CALL WriteReg(&H20, &H7)
CALL WriteReg(&H40, &HF)
CALL WriteReg(&H60, &HF0)
CALL WriteReg(&H80, &HF0)
CALL WriteReg(&HA0, freq%)
CALL WriteReg(&H23, &HF)
CALL WriteReg(&H43, &H0)
CALL WriteReg(&H63, &HF0)
CALL WriteReg(&H83, &HFF)
CALL WriteReg(&HB0, &H20)
CALL WriteReg(&HE0, &H0)
TimeUp! = TIMER + .0005
WHILE TimeUp! > TIMER: WEND
END SUB

SUB sbsoundtest
1542 CLS : SCREEN 9
LOCATE 2, 2:  COLOR 12: PRINT "Welcome to the secret sound and music test room!"
LOCATE 4, 2: COLOR 10: PRINT "1) ATTACK (sound card)"
LOCATE 5, 2: COLOR 10: PRINT "2) DING (sound card)"
LOCATE 6, 2: COLOR 10: PRINT "3) ATTACK (PC speaker)"
LOCATE 7, 2: COLOR 10: PRINT "4) DING (PC speaker)"
LOCATE 8, 2: COLOR 10: PRINT "5) WHOOP! (sound card)"
LOCATE 9, 2: COLOR 10: PRINT "6) WHOOP! (PC speaker)"
LOCATE 10, 2: COLOR 10: PRINT "7) SONG 1 (sound card)"
LOCATE 11, 2: COLOR 10: PRINT "8) SONG 2 (sound card)"
LOCATE 12, 2: COLOR 10: PRINT "9) STICK (sound card)"
LOCATE 13, 2: COLOR 10: PRINT "10) STICK (PC speaker)"
LOCATE 14, 2: COLOR 10: PRINT "11) RANDOM (sound card)"
LOCATE 15, 2: COLOR 10: PRINT "12) RANDOM (PC speaker)"
LOCATE 16, 2: COLOR 10: PRINT "13) NEVERMIND"
LOCATE 18, 2: COLOR 12: INPUT "Enter the number of the sound you want to hear... ", snumber%
IF snumber% = 1 THEN soundeffect "PUNCH": GOTO 1542
IF snumber% = 2 THEN soundeffect "DING": GOTO 1542
IF snumber% = 3 THEN SOUND 100, .75: GOTO 1542
IF snumber% = 4 THEN SOUND 250, .75: GOTO 1542
IF snumber% = 5 THEN FOR IT% = 1 TO 63: SBPlay IT% + 100: NEXT IT%: CALL WriteReg(&HB0, &H0): GOTO 1542
IF snumber% = 6 THEN FOR IT% = 1 TO 63: SOUND IT% * 100, .3: NEXT IT%: CALL WriteReg(&HB0, &H0): GOTO 1542
IF snumber% = 7 THEN CALL song1: GOTO 1542
IF snumber% = 8 THEN CALL song2: GOTO 1542
IF snumber% = 9 THEN soundeffect "STICK": GOTO 1542
IF snumber% = 10 THEN SOUND 150, .75: GOTO 1542
IF snumber% = 11 THEN
DO: RANDOMIZE TIMER
gh% = INT(RND * 3000) + 13000
note gh%, 7500
IF INKEY$ <> "" THEN GOTO 1542
LOOP
END IF
IF snumber% = 12 THEN
DO: RANDOMIZE TIMER
fgh% = INT(RND * 1000) + 50
SOUND fgh%, .3
IF INKEY$ <> "" THEN GOTO 1542
LOOP
END IF
IF snumber% <> 1 AND snumber% <> 2 AND snumber% <> 3 AND snumber% <> 4 AND snumber% <> 5 AND snumber% <> 6 AND snumber% <> 7 AND snumber% <> 8 AND snumber% <> 9 AND snumber% <> 10 AND snumber% <> 11 AND snumber% <> 12 THEN CLS : SCREEN 13: ncount%  _
= 0: zcount% = 0: kcount% = 0: EXIT SUB
END SUB

SUB song1
IF sounds$ = "NO" THEN EXIT SUB
IF soundcard$ = "NO" THEN EXIT SUB
delay 32766
delay 32766
note 15500, 20000
note 14000, 15000
note 14500, 15000
note 15000, 32766
note 16250, 17500
note 15000, 32766
note 16250, 17500
note 16000, 15000
note 16250, 17500
note 15000, 32766
note 16250, 17500
note 15000, 32766
note 14500, 15000
note 14000, 15000
note 15500, 20000
delay 20000
note 14750, 15000
note 14000, 15000
note 15500, 20000
delay 32766
END SUB

SUB song2
IF sounds$ = "NO" THEN EXIT SUB
IF soundcard$ = "NO" THEN EXIT SUB
note 13000, 32766
note 16000, 10000
note 15000, 10000
delay 10000
note 14500, 15000
note 13000, 20000
note 11000, 32766
note 12000, 32766
note 13000, 32766
END SUB

SUB soundeffect (kind$)
IF change$ = "YES" THEN EXIT SUB
IF sounds$ = "NO" THEN delay 10000: EXIT SUB
SELECT CASE kind$
CASE IS = "STICK"
IF soundcard$ = "NO" THEN SOUND 150, .75: delay 10000: EXIT SUB
FOR this% = 1000 TO 1010
SBPlay this%
FOR delayc% = 0 TO 1000 STEP 1: NEXT delayc%
NEXT this%
CALL WriteReg(&HB0, &H0)
CASE IS = "PUNCH"
IF soundcard$ = "NO" THEN SOUND 100, .75: delay 10000: EXIT SUB
FOR nt = 0 TO 255
NEXT nt
SBPlay 2000
FOR delayc% = 0 TO 10000 STEP 1: NEXT delayc%
CALL WriteReg(&HB0, &H0)
CASE IS = "KICK"
IF soundcard$ = "NO" THEN SOUND 100, .75: delay 10000: EXIT SUB
FOR nt = 0 TO 255
NEXT nt
SBPlay 2000
FOR delayd% = 0 TO 10000 STEP 1: NEXT delayd%
CALL WriteReg(&HB0, &H0)
CASE IS = "DING"
IF soundcard$ = "NO" THEN SOUND 250, .75: EXIT SUB
FOR nt = 0 TO 255
NEXT nt
SBPlay 5000
FOR delaye% = 0 TO 10000 STEP 1: NEXT delaye%
CALL WriteReg(&HB0, &H0)
CASE IS = "HIGH"
IF soundcard$ = "NO" THEN SOUND 450, 1.5: EXIT SUB
note 13000, 12500
END SELECT
END SUB

SUB soundoptions
ncount% = 0: SPD = 50: CLS : SCREEN 13: SLEEP 1: SLEEP 1
210 LOCATE 9, 15: COLOR 12: PRINT "  DEATH FIGHT!": LOCATE 11, 14
COLOR 10: IF SELCT = 0 THEN PRINT CHR$(16); " SOUND CARD? ";  ELSE PRINT "  SOUND CARD? ";
IF player = 0 THEN PRINT "YES" ELSE IF player = 1 THEN PRINT "NO "
LOCATE 13, 14
IF SELCT = 1 THEN PRINT CHR$(16); " SOUND ON? ";  ELSE PRINT "  SOUND ON? ";
IF STYLE = 0 THEN PRINT "YES" ELSE IF STYLE = 1 THEN PRINT "NO "
14 LOCATE 15, 14
IF SELCT = 2 THEN PRINT CHR$(16); " GO TO DEATH FIGHT!";  ELSE PRINT "  GO TO DEATH FIGHT!";
DO: A$ = UCASE$(INKEY$): LOOP WHILE A$ = ""

IF A$ = "B" AND ncount% = 7 THEN ncount% = ncount% + 6
IF A$ = "A" AND ncount% = 4 THEN ncount% = ncount% + 3
IF A$ = "G" AND ncount% < 30000 THEN ncount% = ncount% + 4
IF A$ = "E" AND ncount% = 13 THEN ncount% = ncount% + 5
IF A$ = "N" AND zcount% = 13 THEN zcount% = zcount% + 5
IF A$ = "S" AND zcount% < 30000 THEN zcount% = zcount% + 4
IF A$ = "P" AND zcount% = 4 THEN zcount% = zcount% + 3
IF A$ = "E" AND zcount% = 7 THEN zcount% = zcount% + 6
IF A$ = "E" AND zcount% = 19 THEN zcount% = zcount% + 6
IF A$ = "M" AND dcount% = 4 THEN dcount% = dcount% + 3
IF A$ = "C" AND zcount% = 18 THEN zcount% = zcount% + 1
IF A$ = "D" AND dcount% < 10 THEN dcount% = dcount% + 4
IF A$ = "O" AND dcount% = 7 THEN dcount% = dcount% + 6
IF A$ = "D" AND dcount% = 13 THEN dcount% = dcount% + 5
IF A$ = "E" AND dcount% = 18 THEN dcount% = dcount% + 7
IF A$ = "K" AND kcount% < 30000 THEN kcount% = kcount% + 4
IF A$ = "L" AND kcount% = 4 THEN kcount% = kcount% + 3
IF A$ = "O" AND kcount% = 7 THEN kcount% = kcount% + 6
IF A$ = "O" AND kcount% = 18 THEN kcount% = kcount% + 7
IF A$ = "B" AND kcount% = 13 THEN kcount% = kcount% + 5
IF A$ = "V" AND mcount% = 7 THEN mcount% = mcount% + 6
IF A$ = "O" AND mcount% = 4 THEN mcount% = mcount% + 3
IF A$ = "M" AND mcount% < 30000 THEN mcount% = mcount% + 4
IF A$ = "E" AND mcount% = 13 THEN mcount% = mcount% + 5
IF A$ = " " THEN dcount% = 0: zcount% = 0: ncount% = 0: mcount% = 0: kcount% = 0
IF dcount% = 25 THEN BEEP: practicemode$ = "YES": dmode$ = "YES": dcount% = 0: mcount% = 0: kcount% = 0: zcount% = 0: ncount% = 0
'IF zcount% = 25 THEN CALL grafxtest
'IF mcount% = 18 THEN mcount% = 0: CALL movelist
IF kcount% = 25 THEN BEEP: difficulty = 20: dcount% = 0: kcount% = 0: zcount% = 0: mcount% = 0: ncount% = 0
IF ncount% = 18 THEN
IF dsoundcard$ = "NO" THEN CALL soundtest
IF dsoundcard$ <> "NO" THEN CALL sbsoundtest
END IF

'IF A$ = CHR$(27) THEN CALL exitprogram
IF A$ = CHR$(0) + "H" THEN SELCT = SELCT - 1: IF SELCT < 0 THEN SELCT = 0: GOTO 210 ELSE GOTO 210
IF A$ = CHR$(0) + "P" THEN SELCT = SELCT + 1: IF SELCT > 2 THEN SELCT = 2: GOTO 210 ELSE GOTO 210
IF SELCT = 0 AND player = 0 THEN player = 1 ELSE IF SELCT = 0 AND player = 1 THEN player = 0
IF SELCT = 1 AND STYLE = 0 THEN STYLE = 1 ELSE IF SELCT = 1 AND STYLE = 1 THEN STYLE = 0
IF SELCT = 2 AND SPD = 50 THEN SPD = 250 ELSE IF SELCT = 2 AND SPD = 250 THEN SPD = 500 ELSE IF SELCT = 2 AND SPD = 500 THEN SPD = 50
IF SELCT <> 2 THEN GOTO 210
CLS : SCREEN 13
IF player = 0 THEN soundcard$ = "YES"
IF player = 1 THEN soundcard$ = "NO"
IF STYLE = 0 THEN sounds$ = "YES"
IF STYLE = 1 THEN sounds$ = "NO"
END SUB

SUB soundtest
IF dsoundcard$ = "NO" THEN soundcard$ = "NO"
154 CLS : SCREEN 9
LOCATE 2, 2:  COLOR 12: PRINT "Welcome to the secret sound and music test room for losers with no sound cards!"
LOCATE 4, 2: COLOR 10: PRINT "1) ATTACK"
LOCATE 5, 2: COLOR 10: PRINT "2) DING"
LOCATE 6, 2: COLOR 10: PRINT "3) STICK"
LOCATE 7, 2: COLOR 10: PRINT "4) RANDOM"
LOCATE 8, 2: COLOR 10: PRINT "5) NEVERMIND"
LOCATE 10, 2: COLOR 12: INPUT "Enter the number of the sound you want to hear, loser... ", snumber%
IF snumber% = 1 THEN soundeffect "PUNCH": GOTO 154
IF snumber% = 2 THEN soundeffect "DING": GOTO 154
IF snumber% = 3 THEN SOUND 150, .75: GOTO 154
IF snumber% = 4 THEN
DO: RANDOMIZE TIMER
fgh% = INT(RND * 1000) + 50
SOUND fgh%, .3
IF INKEY$ <> "" THEN GOTO 154
LOOP
END IF
IF snumber% = 5 THEN CLS : SCREEN 13: ncount% = 0: EXIT SUB
IF snumber% <> 1 AND snumber% <> 2 AND snumber% <> 3 AND snumber% <> 4 THEN CLS : SCREEN 13: ncount% = 0: zcount% = 0: kcount% = 0: EXIT SUB
END SUB

SUB WriteReg (Reg%, Value%)
OUT &H388, Reg%
FOR x = 0 TO 5
A = INP(&H388)
NEXT x
OUT &H389, Value%
FOR x = 0 TO 34
A = INP(&H388)
NEXT x
END SUB

