
SCREEN 7
REM monopoly
GOSUB board
GOSUB setup
GOSUB stats
DO WHILE INKEY$ = "": LOOP


s: FOR pt = 1 TO hmp

GOSUB board
GOSUB menu
NEXT pt
GOTO s


board:
CLS
PAINT (0, 0), 15
LINE (1, 1)-(318, 198), 0, B
LINE (38, 30)-(280, 169), 0, B
PAINT (0, 0), 9, 0
COLOR 12
up = 14
FOR a = 1 TO 10
up = up + 15.5
LINE (1, up)-(38, up), 0
NEXT a
up = 14
FOR a = 1 TO 10
up = up + 15.5
LINE (280, up)-(318, up), 0
NEXT a
ac = 11
FOR a = 1 TO 10
ac = ac + 27
IF a = 10 THEN ac = ac - 1
LINE (ac, 1)-(ac, 30), 0
NEXT a
ac = 11
FOR a = 1 TO 10
ac = ac + 27
IF a = 10 THEN ac = ac - 1
LINE (ac, 169)-(ac, 198), 0
NEXT a
PAINT (150, 100), 0, 0

RETURN
stats: FOR a = 1 TO hmp
IF a = 1 THEN LOCATE 5, 6: PRINT na1$; : LOCATE 5, 21: PRINT ": $"; pm1
IF a = 2 THEN LOCATE 6, 6: PRINT na2$; : LOCATE 6, 21: PRINT ": $"; pm2
IF a = 3 THEN LOCATE 7, 6: PRINT na3$; : LOCATE 7, 21: PRINT ": $"; pm3
IF a = 4 THEN LOCATE 8, 6: PRINT na4$; : LOCATE 8, 21: PRINT ": $"; pm4
IF a = 5 THEN LOCATE 9, 6: PRINT na5$; : LOCATE 9, 21: PRINT ": $"; pm5
IF a = 6 THEN LOCATE 10, 6: PRINT na6$; : LOCATE 10, 21: PRINT ": $"; pm6
IF a = 7 THEN LOCATE 11, 6: PRINT na7$; : LOCATE 11, 21: PRINT ": $"; pm7
IF a = 8 THEN LOCATE 12, 6: PRINT na8$; : LOCATE 12, 21: PRINT ": $"; pm8

NEXT a
RETURN






setup: DO WHILE INKEY$ = "": LOOP
CLS
COLOR 15
hmpp: INPUT "how many players"; hmp
IF hmp > 8 THEN GOTO hmpp




FOR a = 1 TO hmp

CLS
PRINT "Player "; a
IF hat = 0 THEN PRINT "1...Hat"
IF can = 0 THEN PRINT "2...Cannon"
IF sho = 0 THEN PRINT "3...Shoe"
IF hor = 0 THEN PRINT "4...Horse"
IF shi = 0 THEN PRINT "5...Ship"
IF thi = 0 THEN PRINT "6...Thimble"
IF dog = 0 THEN PRINT "7...Dog"
IF iro = 0 THEN PRINT "8...Iorn"
GOSUB pickpeice
IF a = 1 THEN pp1$ = pp$: pp1 = pp
IF a = 2 THEN pp2$ = pp$: pp2 = pp
IF a = 3 THEN pp3$ = pp$: pp3 = pp
IF a = 4 THEN pp4$ = pp$: pp4 = pp
IF a = 5 THEN pp5$ = pp$: pp5 = pp
IF a = 6 THEN pp6$ = pp$: pp6 = pp
IF a = 7 THEN pp7$ = pp$: pp7 = pp
IF a = 8 THEN pp8$ = pp$: pp8 = pp


NEXT a
FOR a = 1 TO hmp
CLS
PRINT "what is your name player "; a
INPUT na$
na$ = LEFT$(na$, 15)
IF a = 1 THEN na1$ = na$
IF a = 2 THEN na2$ = na$
IF a = 3 THEN na3$ = na$
IF a = 4 THEN na4$ = na$
IF a = 5 THEN na5$ = na$
IF a = 6 THEN na6$ = na$
IF a = 7 THEN na7$ = na$
IF a = 8 THEN na8$ = na$
NEXT a
GOSUB board

pm1 = 1500
pm2 = 1500
pm3 = 1500
pm4 = 1500
pm5 = 1500
pm6 = 1500
pm7 = 1500
pm8 = 1500













RETURN



pickpeice: pp$ = INKEY$
IF hat = 0 AND pp$ = "1" THEN pp$ = "Hat": pp = 1: hat = 1: RETURN
IF can = 0 AND pp$ = "2" THEN pp$ = "Cannon": pp = 2: can = 1: RETURN
IF sho = 0 AND pp$ = "3" THEN pp$ = "Shoe": pp = 3: sho = 1: RETURN
IF hor = 0 AND pp$ = "4" THEN pp$ = "Horse": pp = 4: hor = 1: RETURN
IF shi = 0 AND pp$ = "5" THEN pp$ = "Ship": pp = 5: shi = 1: RETURN
IF thi = 0 AND pp$ = "6" THEN pp$ = "Thimble": pp = 6: thi = 1: RETURN
IF dog = 0 AND pp$ = "7" THEN pp$ = "Dog": pp = 7: dog = 1: RETURN
IF iro = 0 AND pp$ = "8" THEN pp$ = "Iron": pp = 8: iro = 1: RETURN
GOTO pickpeice


dice: COLOR 15
DO WHILE INKEY$ = "": LOOP
RANDOMIZE TIMER
dice1 = INT(RND * 6) + 1
dice2 = INT(RND * 6) + 1
LOCATE 17, 7: PRINT "Dice"
COLOR 15
IF dice1 = dice2 THEN COLOR 14
LOCATE 19, 7: PRINT dice1
LINE (50, 140)-(67, 155), , B
LOCATE 19, 10: PRINT dice2
LINE (74, 140)-(91, 155), , B
DO WHILE INKEY$ = "": LOOP
RETURN



titledeeds:
GOSUB titleinfo
GOSUB deedgraph
RETURN
titleinfo:
IF tide = 1 THEN
        tdco = 5
        tdna$ = " MEDITERRANEAN AVE."
        rent = 2
        w1h = 10
        w2h = 30
        w3h = 90
        w4h = 160
        hotel = 250
        morval = 30
        hocost = 50
END IF
IF tide = 2 THEN
        tdco = 5
        tdna$ = " BALTIC AVE."
        rent = 4
        w1h = 20
        w2h = 60
        w3h = 180
        w4h = 320
        hotel = 450
        morval = 30
        hocost = 50
END IF
IF tide = 3 THEN
        tdco = 11
        tdna$ = " ORIENTAL AVE."
        rent = 6
        w1h = 30
        w2h = 90
        w3h = 270
        w4h = 400
        hotel = 550
        morval = 50
        hocost = 50
END IF
IF tide = 4 THEN
        tdco = 11
        tdna$ = " VERMONT AVE."
        rent = 6
        w1h = 30
        w2h = 90
        w3h = 270
        w4h = 400
        hotel = 550
        morval = 50
        hocost = 50
END IF
IF tide = 5 THEN
        tdco = 11
        tdna$ = " CONNECTICUT AVE."
        rent = 8
        w1h = 40
        w2h = 100
        w3h = 300
        w4h = 450
        hotel = 600
        morval = 60
        hocost = 50
END IF
IF tide = 6 OR tide = 7 THEN
        tdco = 13
        IF tide = 6 THEN tdna$ = " ST. CHARLES PLACE"
        IF tide = 7 THEN tdna$ = " STATES AVE."
        rent = 10
        w1h = 50
        w2h = 150
        w3h = 450
        w4h = 625
        hotel = 750
        morval = 70
        hocost = 100
END IF
IF tide = 8 THEN
        tdco = 13
        tdna$ = " VIRGINIA AVE."
        rent = 12
        w1h = 60
        w2h = 180
        w3h = 500
        w4h = 700
        hotel = 900
        morval = 80
        hocost = 100
END IF
IF tide = 9 OR tide = 10 THEN
        tdco = 6
        IF tide = 9 THEN tdna$ = " ST. JAMES PLACE"
        IF tide = 10 THEN tdna$ = " TENNESSEE AVE."
        rent = 14
        w1h = 70
        w2h = 200
        w3h = 550
        w4h = 750
        hotel = 950
        morval = 90
        hocost = 100
END IF
IF tide = 11 THEN
        tdco = 6
        tdna$ = " NEW YORK AVE."
        rent = 16
        w1h = 80
        w2h = 220
        w3h = 600
        w4h = 800
        hotel = 1000
        morval = 100
        hocost = 100
END IF
IF tide = 12 OR tide = 13 THEN
        tdco = 12
        IF tide = 12 THEN tdna$ = " KENTUCKY AVE."
        IF tide = 13 THEN tdna$ = " INDIANA AVE."
        rent = 18
        w1h = 90
        w2h = 250
        w3h = 700
        w4h = 875
        hotel = 1050
        morval = 110
        hocost = 150
END IF
IF tide = 14 THEN
        tdco = 12
        tdna$ = " ILLINOIS AVE."
        rent = 20
        w1h = 100
        w2h = 300
        w3h = 750
        w4h = 925
        hotel = 1100
        morval = 120
        hocost = 150
END IF
IF tide = 15 OR tide = 16 THEN
        tdco = 14
        IF tide = 15 THEN tdna$ = " ATLANTIC AVE."
        IF tide = 16 THEN tdna$ = " VENTNOR AVE."
        rent = 22
        w1h = 110
        w2h = 330
        w3h = 800
        w4h = 975
        hotel = 1150
        morval = 130
        hocost = 150
END IF
IF tide = 17 THEN
        tdco = 14
        IF tide = 17 THEN tdna$ = " MARVIN GARDENS"
        rent = 24
        w1h = 120
        w2h = 360
        w3h = 850
        w4h = 1025
        hotel = 1200
        morval = 140
        hocost = 150
END IF
IF tide = 18 OR tide = 19 THEN
        tdco = 2
        IF tide = 18 THEN tdna$ = " PACIFIC AVE."
        IF tide = 19 THEN tdna$ = " NO. CAROLINA AVE."
        rent = 26
        w1h = 130
        w2h = 390
        w3h = 900
        w4h = 1100
        hotel = 1275
        morval = 150
        hocost = 200
END IF
IF tide = 20 THEN
        tdco = 2
        tdna$ = " PENNSYLVANIA AVE."
        rent = 28
        w1h = 150
        w2h = 450
        w3h = 1000
        w4h = 1200
        hotel = 1400
        morval = 160
        hocost = 200
END IF
IF tide = 21 THEN
        tdco = 1
        tdna$ = " PARK PLACE"
        rent = 35
        w1h = 175
        w2h = 500
        w3h = 1100
        w4h = 1300
        hotel = 1500
        morval = 175
        hocost = 200
END IF
IF tide = 22 THEN
        tdco = 1
        tdna$ = " BOARDWALK"
        rent = 50
        w1h = 200
        w2h = 600
        w3h = 1400
        w4h = 1700
        hotel = 2000
        morval = 200
        hocost = 200
END IF
IF tide = 23 THEN
        tdco = 15
        tdna$ = " READING RAILROAD"
        rent = 25
        w1h = 50
        w2h = 100
        w3h = 200
        w4h = 0
        hotel = 0
        morval = 100
        hocost = 0
END IF
IF tide = 24 THEN
        tdco = 15
        tdna$ = " PENNSYLVANIA R.R."
        rent = 25
        w1h = 50
        w2h = 100
        w3h = 200
        w4h = 0
        hotel = 0
        morval = 100
        hocost = 0
END IF
IF tide = 25 THEN
        tdco = 15
        tdna$ = " B. & O. RAILROAD"
        rent = 25
        w1h = 50
        w2h = 100
        w3h = 200
        w4h = 0
        hotel = 0
        morval = 100
        hocost = 0
END IF
IF tide = 26 THEN
        tdco = 15
        tdna$ = " SHORT LINE R.R."
        rent = 25
        w1h = 50
        w2h = 100
        w3h = 200
        w4h = 0
        hotel = 0
        morval = 100
        hocost = 0
END IF
IF tide = 27 THEN
        tdco = 15
        tdna$ = " ELECRIC COMPANY"
        rent = 4
        w1h = 10
        w2h = 0
        w3h = 0
        w4h = 0
        hotel = 0
        morval = 75
        hocost = 0
END IF
IF tide = 28 THEN
        tdco = 15
        tdna$ = " WATER WORKS"
        rent = 4
        w1h = 10
        w2h = 0
        w3h = 0
        w4h = 0
        hotel = 0
        morval = 75
        hocost = 0
END IF


RETURN

deedgraph:
SCREEN 12

CLS
LINE (100, 50)-(200 * 2, 150 * 3), 15, BF
LINE (105, 55)-(195 * 2, 145 * 3), 0, B
IF tide < 23 THEN LINE (108, 58)-(192 * 2, 53 * 3), 0, B
IF tide < 23 THEN PAINT (109, 59), tdco, 0
IF tide < 23 THEN LOCATE 5, 27: PRINT "TITLE DEED"

IF tide > 22 THEN LINE (108, 110)-(385, 110), 0
IF tide > 22 THEN LINE (108, 130)-(385, 130), 0

LOCATE 8, 15: PRINT tdna$
IF tide < 27 THEN LOCATE 12, 27: PRINT "RENT  $"; rent
IF tide < 23 THEN LOCATE 14, 15: PRINT "With 1 House            $"; w1h
IF tide < 23 THEN LOCATE 15, 15: PRINT "With 2 Houses           $"; w2h
IF tide < 23 THEN LOCATE 16, 15: PRINT "With 3 Houses           $"; w3h
IF tide < 23 THEN LOCATE 17, 15: PRINT "With 4 Houses           $"; w4h
IF tide < 23 THEN LOCATE 18, 27: PRINT "With HOTLE  $"; hotel

IF tide > 22 AND tide < 27 THEN LOCATE 14, 15: PRINT "If 2 R.R.'s are owned    $"; w1h
IF tide > 22 AND tide < 27 THEN LOCATE 15, 15: PRINT "If 3 R.R.'s are owned    $"; w2h
IF tide > 22 AND tide < 27 THEN LOCATE 16, 15: PRINT "If 4 R.R.'s are owned    $"; w3h

IF tide > 26 THEN LOCATE 10, 15: PRINT "    If one `Utility' is owned rent"
IF tide > 26 THEN LOCATE 11, 15: PRINT "is 4 times amount shown on dice.  "
IF tide > 26 THEN LOCATE 13, 15: PRINT "    If both `Utility' are owned   "
IF tide > 26 THEN LOCATE 14, 15: PRINT "rent is 10 times anount shown on  "
IF tide > 26 THEN LOCATE 15, 15: PRINT "dice.                             "



LOCATE 20, 15: PRINT "Mortgage Value  $"; morval
IF tide < 23 THEN LOCATE 21, 15: PRINT "Houses cost  $"; hocost; ". each Hotels,"
IF tide < 23 THEN LOCATE 22, 15: PRINT "$"; hocost; ". plus 4 houses"
menu:
GOSUB namefind
LOCATE 5, 6: PRINT "What do you want to do "; na$; " ?"
LOCATE 6, 6: PRINT "1. Roll"
LOCATE 7, 6: PRINT "2. Make a deal"
LOCATE 8, 6: PRINT "3. Buy a house"
LOCATE 9, 6: PRINT "4. Sell a house"
LOCATE 10, 6: PRINT "5. Mortgage a property"
LOCATE 11, 6: PRINT "6. Unmortgage a property"
menu$ = INKEY$
IF menu$ = "" THEN GOTO menu
RETURN
namefind:
IF pt = 1 THEN na$ = na1$
IF pt = 2 THEN na$ = na2$
IF pt = 3 THEN na$ = na3$
IF pt = 4 THEN na$ = na4$
IF pt = 5 THEN na$ = na5$
IF pt = 6 THEN na$ = na6$
IF pt = 7 THEN na$ = na7$
IF pt = 8 THEN na$ = na8$
RETURN

