'     Grekken's Quest
'     Episode 1:  The Beginning
'     ************************************************************************
'
'     Press SHIFT + F5 to start
'
'     Visit Fig's Web Page at http://members.aol.com/pantera55/index.html
'
'     Visit Rich Software at http://members.aol.com/raj79/index.html
'
'     E-mail me at RAJ79@aol.com


















DECLARE SUB space ()
DECLARE SUB fp3 ()
DECLARE SUB words (x!, y!, word$, c!)
DIM a AS INTEGER
DIM b AS SINGLE
DIM c AS SINGLE
DIM enter AS STRING
DIM z AS STRING
DIM x AS INTEGER
DIM locatin AS INTEGER
DIM xloc AS INTEGER
DIM yloc AS INTEGER
DIM direction AS INTEGER
DIM strength AS INTEGER
DIM magic AS INTEGER
DIM hitpoint AS INTEGER
DIM hpmax AS INTEGER
DIM defense AS INTEGER
DIM gold AS INTEGER
DIM boat AS INTEGER
DIM opphp AS INTEGER
DIM visit1 AS INTEGER
DIM visit2 AS INTEGER
DIM visit3 AS INTEGER
DIM visit4 AS INTEGER
DIM visit5 AS INTEGER
DIM brick(10, 5)
DIM grass(10, 10)
DIM block(10, 10)
DIM tree(10, 10)
DIM browntre(10, 10)
DIM greendor(10, 10)
DIM graydoor(10, 10)
DIM browndor(10, 10)
DIM dirtpath(10, 10)
DIM water(10, 10)
DIM heroE(10, 10)
DIM heroW(10, 10)
DIM black(10, 10)
DIM greencav(30, 20)
DIM browncav(30, 20)
DIM house(30, 30)
DIM castle(50, 30)
DIM heroboat(10, 10)
SCREEN 13
CLS
DRAW "bm10,10;c255;r10d10l10u10"
PAINT (11, 11), 255
GET (10, 10)-(20, 20), black
CLS
DRAW "bm10,10;c20;r10d1c22l10d1c24r10d1c24l10d1c22r10d1c20l10;u5r1c22d5br8u5r1c20d5l10u5r10"
GET (10, 10)-(20, 15), brick
CLS
DRAW "bm9,9;c2r12d12l12u12"
PAINT (11, 11), 2
PSET (12, 12), 15
PSET (16, 12), 15
PSET (14, 15), 15
PSET (18, 15), 15
PSET (12, 18), 15
PSET (16, 18), 15
GET (10, 10)-(20, 20), grass
CLS
PUT (10, 10), brick, PSET
PUT (5, 15), brick, PSET
PUT (15, 15), brick, PSET
GET (10, 10)-(20, 20), block
CLS
DRAW "bm10,10;c2r10d10l10u10"
PAINT (11, 11), 2
DRAW "bm15,20;c6u5r5c191l10r1u1r8l1u1l6r1u1r4l1u1l2r1u1"
DRAW "bm10,10;c2;r10d10l10u10"
GET (10, 10)-(20, 20), tree
CLS
DRAW "bm10,10;c6r10d10l10u10"
PAINT (11, 11), 6
DRAW "bm15,20;c14u5r5c191l10r1u1r8l1u1l6r1u1r4l1u1l2r1u1"
DRAW "bm10,10;c6;r10d10l10u10"
GET (10, 10)-(20, 20), browntre
CLS
DRAW "bm10,10;c2;r10d10l10u10"
PAINT (11, 11), 2
DRAW "bm12,20;c255;r6u1l6u1r6u1l6u1r6u1l6u1r6l1u1l4"
LINE (10, 10)-(20, 20), 2, B
GET (10, 10)-(20, 20), greendor
CLS
DRAW "bm10,10;c7;r10d10l10u10"
PAINT (11, 11), 7
DRAW "bm12,20;c255;r6u1l6u1r6u1l6u1r6u1l6u1r6l1u1l4"
LINE (10, 20)-(20, 20), 2
GET (10, 10)-(20, 20), graydoor
CLS
DRAW "bm10,10;c6;r10d10l10u10"
PAINT (11, 11), 6
DRAW "bm12,20;c255;r6u1l6u1r6u1l6u1r6u1l6u1r6l1u1l4"
LINE (10, 20)-(20, 20), 6
GET (10, 10)-(20, 20), browndor
CLS
DRAW "bm10,10;c6r10d10l10u10"
PAINT (11, 11), 6
PSET (12, 12), 255
PSET (16, 12), 255
PSET (14, 15), 255
PSET (18, 15), 255
PSET (12, 18), 255
PSET (16, 18), 255
GET (10, 10)-(20, 20), dirtpath
CLS
DRAW "bm10,10;c1r10d10l10u10"
PAINT (11, 11), 1
PSET (12, 12), 15
PSET (16, 12), 15
PSET (14, 15), 15
PSET (18, 15), 15
PSET (12, 18), 15
PSET (16, 18), 15
GET (10, 10)-(20, 20), water
CLS
DRAW "bm10,10;c255r10d1c12l3c1l1c12l3c255l3d1r2c12r8d1c4l3c12l7d1r10d1c4l10d1r2c255r1c4r2c255r1c4r4d1c255l6c4l2c255l2d1c1r2c255r1c12r2c255r1c1r4d1c255l3c1l2c255l4c1l1"
GET (10, 10)-(20, 20), heroE
CLS
PAINT (1, 1), 1
PUT (10, 10), heroE, PSET
LINE (10, 15)-(10, 20), 0, BF
DRAW "bm10,15;c6r10d1l10d1r10l1d1l8r1d1r6"
GET (10, 10)-(20, 20), heroboat
CLS
DRAW "bm20,10;c255;l10d1c12r3c1r1c12r3c255r3d1l2c12l8d1c4r3c12r7d1l10d1c4r10d1l2c255l1c4l2c255l1c4l4d1c255r6c4r2c255r2d1c1l2c255l1c12l2c255l1c1l4d1c255r3c1r2c255r4c1r1"
GET (10, 10)-(20, 20), heroW
CLS
PAINT (1, 1), 2
DRAW "bm10,30;c7;r30"
CIRCLE (25, 30), 15, 7
PAINT (11, 29), 7
PUT (20, 20), graydoor, OR
LINE (10, 10)-(40, 30), 2, B
GET (10, 10)-(40, 30), greencav
CLS
PAINT (1, 1), 6
DRAW "bm10,30;c7;r30"
CIRCLE (25, 30), 15, 7
PAINT (11, 29), 7
PUT (20, 20), graydoor, OR
LINE (10, 10)-(40, 30), 6, B
GET (10, 10)-(40, 30), browncav
CLS
PAINT (1, 1), 2
DRAW "bm10,40;c15;r30u15h15g15d15"
PAINT (11, 39), 15
DRAW "bm20,40;c255;u10r10d10l10"
PAINT (21, 39), 255
DRAW "bm10,25;c6r30h15g15"
PAINT (12, 24), 6
LINE (10, 10)-(40, 40), 2, B
GET (10, 10)-(40, 40), house
CLS
PAINT (1, 1), 2
DRAW "bm10,10;c7r15d5l5d5r30u5l5u5r15d5l5d25l40u25l5u5"
PAINT (11, 11), 7
PUT (30, 30), graydoor, OR
LINE (10, 10)-(60, 40), 2, B
GET (10, 10)-(60, 40), castle
CLS
FOR a = 16 TO 31
COLOR a
LOCATE 9, 12
PRINT "Rich  Software"
COLOR a
LOCATE 11, 11
PRINT "A subdivision of"
FOR b = 1 TO 20000
NEXT b
NEXT a
FOR c = 1 TO 300000
NEXT c
FOR a = 31 TO 16 STEP -1
COLOR a
LOCATE 9, 12
PRINT "Rich  Software"
COLOR a
LOCATE 11, 11
PRINT "A subdivision of"
FOR b = 1 TO 20000
NEXT b
NEXT a
fp3
PLAY "o3;l16;bgegbgegafdfafdf"
PLAY "bgegbgegafdfafd;l8;f"
CLS
DRAW "bm0,100;c1;r320"
PAINT (1, 1), 1
PAINT (1, 150), 2, 1
DRAW "bm0,165;c55r320"
PAINT (1, 190), 55
FOR b = 30 TO 50 STEP 10
FOR a = 10 TO 60 STEP 10
PUT (a, b), brick, PSET
PUT (a + 120, b), brick, PSET
PUT (a + 240, b), brick, PSET
NEXT a
PUT (10, b - 5), brick, PSET
PUT (60, b - 5), brick, PSET
PUT (130, b - 5), brick, PSET
PUT (180, b - 5), brick, PSET
PUT (250, b - 5), brick, PSET
PUT (300, b - 5), brick, PSET
FOR a = 15 TO 55 STEP 10
PUT (a, b - 5), brick, PSET
PUT (a + 120, b - 5), brick, PSET
PUT (a + 240, b - 5), brick, PSET
NEXT a
NEXT b
FOR b = 50 TO 150 STEP 10
FOR a = 10 TO 300 STEP 10
PUT (a, b), brick, PSET
NEXT a
PUT (10, b + 5), brick, PSET
PUT (300, b + 5), brick, PSET
FOR a = 15 TO 295 STEP 10
PUT (a, b + 5), brick, PSET
NEXT a
NEXT b
PUT (10, 20), brick, PSET
PUT (35, 20), brick, PSET
PUT (60, 20), brick, PSET
PUT (130, 20), brick, PSET
PUT (155, 20), brick, PSET
PUT (180, 20), brick, PSET
PUT (250, 20), brick, PSET
PUT (275, 20), brick, PSET
PUT (300, 20), brick, PSET
DRAW "bm130,160"
FOR a = 1 TO 30
DRAW "c185u60r1c186d60r1"
NEXT a
PLAY "o3;l16;bgegbgegafdfafdf"
PLAY "bgegbgegafdfafd;l8;f"
DRAW "bm35,40;c65"
FOR a = 1 TO 10
DRAW "r20l20d20r20u5l5bh14"
NEXT a
DRAW "bm75,50"
FOR a = 1 TO 10
DRAW "r10l10d10u10bf1"
NEXT a
DRAW "bm105,45"
FOR a = 1 TO 10
DRAW "r10d10l10u10d15r10l10u14br1"
NEXT a
DRAW "bm110,50;c8;f10;c65;bm135,40"
FOR a = 1 TO 10
DRAW "d20u10r10u10d10l5f5d5bl9bu19"
NEXT a
DRAW "bm165,40"
FOR a = 1 TO 10
DRAW "d20u10r10u10d10l5f5d5bl9bu19"
NEXT a
DRAW "bm195,45"
FOR a = 1 TO 10
DRAW "r10d10l10u10d15r10l10u14br1"
NEXT a
DRAW "bm200,50;c8;f10;c65;bm225,50"
FOR a = 1 TO 10
DRAW "r10d10bl10u10bf1"
NEXT a
DRAW "bm255,50"
FOR a = 1 TO 10
DRAW "r10l10d5r10d5l10bu9br1"
NEXT a
DRAW "bm85,100"
FOR a = 1 TO 10
DRAW "r20d20l20u20bf20u5l5bh14"
NEXT a
DRAW "bm125,110"
FOR a = 1 TO 10
DRAW "d10r10u10bl9bd1"
NEXT a
DRAW "bm155,105"
FOR a = 1 TO 10
DRAW "r10d10l10u10d15r10l10u14br1"
NEXT a
DRAW "bm160,110;c185;f10;c65;bm185,110"
FOR a = 1 TO 10
DRAW "r10l10d5r10d5l10r1bu9"
NEXT a
DRAW "bm215,100"
FOR a = 1 TO 10
DRAW "br5d20u10l5r10l9bu9"
NEXT a
3DO
enter = INKEY$
LOOP UNTIL enter <> ""
SCREEN 13
CLS
FOR b = 10 TO 180 STEP 10
FOR a = 10 TO 300 STEP 10
PUT (a, b), block, PSET
NEXT a
NEXT b
FOR b = 40 TO 150 STEP 10
FOR a = 70 TO 240 STEP 10
PUT (a, b), black, PSET
NEXT a
NEXT b
x = 1
DO
    IF x = 1 THEN
        LOCATE 9, 16
        COLOR 4
        PRINT "Play Game"
        LOCATE 11, 16
        COLOR 14
        PRINT "Read Story"
        LOCATE 13, 16
        PRINT "Credits"
        LOCATE 15, 16
        PRINT "Quit"
    END IF
    IF x = 2 THEN
        LOCATE 9, 16
        COLOR 14
        PRINT "Play Game"
        LOCATE 11, 16
        COLOR 4
        PRINT "Read Story"
        COLOR 14
        LOCATE 13, 16
        PRINT "Credits"
        LOCATE 15, 16
        PRINT "Quit"
    END IF
    IF x = 3 THEN
        LOCATE 9, 16
        COLOR 14
        PRINT "Play Game"
        LOCATE 11, 16
        PRINT "Read Story"
        COLOR 4
        LOCATE 13, 16
        PRINT "Credits"
        COLOR 14
        LOCATE 15, 16
        PRINT "Quit"
    END IF
    IF x = 4 THEN
        LOCATE 9, 16
        COLOR 14
        PRINT "Play Game"
        LOCATE 11, 16
        PRINT "Read Story"
        LOCATE 13, 16
        PRINT "Credits"
        LOCATE 15, 16
        COLOR 4
        PRINT "Quit"
    END IF
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN x = x + 1: IF x > 4 THEN x = 4
    IF z = CHR$(0) + CHR$(72) THEN x = x - 1: IF x < 1 THEN x = 1
LOOP UNTIL z = CHR$(13)
COLOR 4
IF x = 1 THEN GOTO 0
IF x = 2 THEN GOTO 1
IF x = 3 THEN GOTO 2
IF x = 4 THEN END
1CLS
FOR a = 100 TO 199
LINE (0, a)-(319, a), 15
LINE (0, -a + 199)-(319, -a + 199), 15
FOR b = 1 TO 10000
NEXT b
NEXT a
SCREEN 11
CLS
PRINT "Once upon a time the kingdom of Lanonanileianbolicadoliveadoroville was a"
PRINT "a peaceful kingdom, the kind you would want to raise your kids in, but recently,"
PRINT "one of the four kings of the kingdom, King Larken has turned to evil and"
PRINT "declared war against the other three kings.  Now this is where you come into"
PRINT "play.  You are the famous Grekken, known for your famous battles against evil,"
PRINT "but retired from battle, you have begun a life of tranquility as a blacksmith."
PRINT "Now, this morning you were awoken by a group of soldiers and dragged in front of"
PRINT "a castle in the town of Printhith.  This is the King of Printhith's castle, so"
PRINT "you begin to wonder if it has something to do with the war.  That is where this"
PRINT "quest begins."
PRINT
PRINT "Press any key"
GOTO 3
2CLS
COLOR 68
PRINT "This game was programmed by Rich Soft-  "
COLOR 69
PRINT "ware, a member of Fig Software Inc., a  "
COLOR 70
PRINT "group of RPG programmers founded by"
COLOR 71
PRINT "PANTERA55@aol.com, e-mail him if you "
COLOR 72
PRINT "want to join.  Also, if you want to give"
COLOR 73
PRINT "me comments on the game, e-mail me,"
COLOR 74
PRINT "RAJ79@aol.com, I hope to hear from you"
COLOR 75
PRINT "soon..."
PRINT
COLOR 76
PRINT "Visit FIG Software's web page at"
COLOR 77
PRINT "http://members.aol.com/pantera55"
COLOR 78
PRINT "Visit Rich Software's web page at"
COLOR 79
PRINT "http://members.aol.com/raj79"
PRINT
PRINT
COLOR 80
PRINT "Press any key to continue."
GOTO 3
0CLS
FOR b = 10 TO 180 STEP 10
FOR a = 10 TO 300 STEP 10
PUT (a, b), block, PSET
NEXT a
NEXT b
FOR b = 40 TO 150 STEP 10
FOR a = 70 TO 240 STEP 10
PUT (a, b), black, PSET
NEXT a
NEXT b
x = 1
DO
    IF x = 1 THEN
        LOCATE 11, 16
        COLOR 4
        PRINT "New Game"
        LOCATE 13, 16
        COLOR 14
        PRINT "Load Game"
    END IF
    IF x = 2 THEN
        LOCATE 11, 16
        COLOR 14
        PRINT "New Game"
        LOCATE 13, 16
        COLOR 4
        PRINT "Load Game"
    END IF
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN x = x + 1: IF x > 2 THEN x = 2
    IF z = CHR$(0) + CHR$(72) THEN x = x - 1: IF x < 1 THEN x = 1
LOOP UNTIL z = CHR$(13)
IF x = 1 THEN GOTO 5
IF x = 2 THEN GOTO 4
4PRINT "This feature is not available in the beta version."
DO
   z = INKEY$
LOOP UNTIL z <> ""
GOTO 5
5xloc = 15
yloc = 9
locatin = 118
direction = 1
strength = 5
magic = 0
defense = 5
hitpoint = 300
hpmax = 300
gold = 0
boat = 0
visit1 = 0
visit2 = 0
visit3 = 0
visit4 = 0
visit5 = 0
6CLS
IF locatin = 104 THEN
    COLOR 15
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), tree, PSET
    PUT (a, 180), tree, PSET
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (10, a), tree, PSET
    PUT (300, a), tree, PSET
    NEXT a
    DRAW "bm140,120;c14;r40u30h10l20g10d30"
    PAINT (141, 119), 6, 14
    DRAW "bm140,120;c14;u25r40d25l4u25l4d25l4u25l4d25l4u25l4d25l4u25l4d25l4u25l4d25;bm155,105;r10d1l10d1r5c255r1c14r4d1l10d1r10"
    LINE (140, 120)-(180, 80), 2, B
    DRAW "bm141,119;c14;r38u29d5l38u5d29;bm149,81;r22"
    PUT (70, 180), grass, PSET
END IF
IF locatin = 95 THEN GOTO story
IF locatin = 105 THEN
    COLOR 15
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), tree, PSET
    PUT (a, 180), tree, PSET
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (10, a), tree, PSET
    PUT (300, a), tree, PSET
    NEXT a
    PUT (10, 90), grass, PSET
    PUT (140, 80), house, PSET
END IF
IF locatin = 107 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), water, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 300 STEP 10
    PUT (a, 170), tree, PSET
    PUT (a, 10), tree, PSET
    NEXT a
    PUT (150, 10), grass, PSET
    PUT (150, 170), grass, PSET
    PUT (10, 180), tree, PSET
    PUT (300, 180), tree, PSET
    FOR a = 20 TO 290 STEP 10
    PUT (a, 180), grass, PSET
    NEXT a
END IF
IF locatin = 115 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 20 TO 280 STEP 10
    PUT (b, a), water, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (10, a), tree, PSET
    PUT (290, a), tree, PSET
    PUT (300, a), grass, PSET
    NEXT a
    PUT (300, 10), tree, PSET
END IF
IF locatin = 116 THEN
    COLOR 15
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), tree, PSET
    NEXT a
    FOR b = 40 TO 180 STEP 10
    FOR a = 30 TO 120 STEP 10
    PUT (a, b), tree, PSET
    NEXT a
    NEXT b
    FOR b = 40 TO 180 STEP 10
    FOR a = 140 TO 300 STEP 10
    PUT (a, b), tree, PSET
    NEXT a
    NEXT b
END IF
IF locatin = 117 THEN
    COLOR 15
    PRINT "Town of Printhith"
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), tree, PSET
    NEXT a
    FOR b = 40 TO 180 STEP 10
    PUT (10, b), tree, PSET
    NEXT b
    PUT (220, 110), house, PSET
END IF
IF locatin = 118 THEN
    COLOR 15
    PRINT "Town of Printhith"
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), tree, PSET
    NEXT a
    FOR b = 10 TO 180 STEP 10
    PUT (300, b), tree, PSET
    NEXT b
    PUT (130, 60), castle, PSET
    PUT (40, 30), house, PSET
    PUT (60, 150), house, PSET
    PUT (220, 110), house, PSET
END IF
IF locatin = 119 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), browntre, PSET
    NEXT b
    NEXT a
    PUT (150, 180), dirtpath, PSET
    FOR a = 20 TO 150 STEP 10
    PUT (a, 170), dirtpath, PSET
    NEXT a
    FOR a = 20 TO 160 STEP 10
    PUT (20, a), dirtpath, PSET
    NEXT a
    FOR a = 20 TO 290 STEP 10
    PUT (a, 10), dirtpath, PSET
    NEXT a
    FOR b = 50 TO 150 STEP 10
    FOR a = 100 TO 200 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    PUT (140, 90), house, PSET
END IF
IF locatin = 120 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), tree, PSET
    NEXT b
    NEXT a
    FOR a = 90 TO 180 STEP 10
    PUT (150, a), grass, PSET
    NEXT a
END IF
IF locatin = 127 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 20 TO 270 STEP 10
    PUT (b, a), water, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (10, a), tree, PSET
    PUT (290, a), grass, PSET
    PUT (300, a), tree, PSET
    PUT (280, a), tree, PSET
    NEXT a
    PUT (300, 10), grass, PSET
    PUT (300, 170), grass, PSET
    PUT (300, 160), grass, PSET
    PUT (290, 180), tree, PSET
END IF
IF locatin = 128 THEN
    COLOR 15
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR a = 30 TO 120 STEP 10
    PUT (a, 10), tree, PSET
    NEXT a
    FOR a = 140 TO 300 STEP 10
    PUT (a, 10), tree, PSET
    NEXT a
    FOR a = 10 TO 120 STEP 10
    PUT (a, 20), tree, PSET
    NEXT a
    FOR b = 30 TO 150 STEP 10
    FOR a = 10 TO 280 STEP 10
    PUT (a, b), tree, PSET
    NEXT a
    NEXT b
    FOR a = 10 TO 180 STEP 10
    PUT (300, a), tree, PSET
    NEXT a
    FOR a = 10 TO 280 STEP 10
    PUT (a, 180), tree, PSET
    NEXT a
    PUT (280, 170), tree, PSET
    PUT (280, 160), tree, PSET
    PUT (270, 150), greendor, PSET
END IF
IF locatin = 129 THEN
    COLOR 15
    PRINT "Town of Printhith"
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR b = 150 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), tree, PSET
    NEXT a
    NEXT b
    FOR b = 10 TO 180 STEP 10
    PUT (10, b), tree, PSET
    NEXT b
    PUT (130, 70), house, PSET
    PUT (210, 100), house, PSET
END IF
IF locatin = 130 THEN
    COLOR 15
    PRINT "Town of Printhith"
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR b = 150 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), tree, PSET
    NEXT a
    NEXT b
    FOR a = 30 TO 130 STEP 10
    FOR b = 30 TO 180 STEP 10
    PUT (a, b), tree, PSET
    NEXT b
    NEXT a
    FOR a = 170 TO 300 STEP 10
    FOR b = 30 TO 180 STEP 10
    PUT (a, b), tree, PSET
    NEXT b
    NEXT a
    PUT (300, 10), tree, PSET
    PUT (300, 20), tree, PSET
    PUT (130, 140), grass, PSET
    PUT (130, 130), grass, PSET
    PUT (130, 120), grass, PSET
    PUT (130, 110), grass, PSET
    PUT (170, 140), grass, PSET
    PUT (170, 130), grass, PSET
    PUT (170, 120), grass, PSET
    PUT (170, 110), grass, PSET
    PUT (170, 100), grass, PSET
    PUT (130, 100), grass, PSET
    PUT (140, 110), house, PSET
END IF
IF locatin = 131 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), dirtpath, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), browntre, PSET
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (10, a), browntre, PSET
    PUT (300, a), browntre, PSET
    NEXT a
    PUT (150, 10), dirtpath, PSET
    PUT (300, 90), dirtpath, PSET
END IF
IF locatin = 132 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), tree, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 150 STEP 10
    PUT (a, 90), grass, PSET
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (150, a), grass, PSET
    NEXT a
END IF
IF locatin = 140 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), tree, PSET
    NEXT b
    NEXT a
    PUT (290, 10), grass, PSET
    PUT (290, 20), grass, PSET
    PUT (300, 20), grass, PSET
END IF
IF locatin = 141 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), tree, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 300 STEP 10
    PUT (a, 20), grass, PSET
    NEXT a
    IF visit3 = 5 THEN PUT (150, 10), greendor, PSET
END IF
IF locatin = 142 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), dirtpath, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), browntre, PSET
    PUT (a, 180), browntre, PSET
    NEXT a
    FOR a = 30 TO 180 STEP 10
    PUT (10, a), browntre, PSET
    NEXT a
END IF
IF locatin = 143 THEN
    COLOR 15
    FOR a = 10 TO 180 STEP 10
    FOR b = 10 TO 300 STEP 10
    PUT (b, a), dirtpath, PSET
    NEXT b
    NEXT a
    FOR a = 10 TO 300 STEP 10
    PUT (a, 180), browntre, PSET
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (300, a), browntre, PSET
    NEXT a
    PUT (10, 10), browntre, PSET
    FOR b = 60 TO 120 STEP 10
    FOR a = 100 TO 200 STEP 10
    PUT (a, b), browntre, PSET
    NEXT a
    NEXT b
    FOR a = 80 TO 120 STEP 10
    PUT (150, a), dirtpath, PSET
    NEXT a
    PUT (150, 70), browndor, PSET
END IF
IF locatin = 144 THEN
    COLOR 15
    FOR b = 10 TO 180 STEP 10
    FOR a = 10 TO 300 STEP 10
    PUT (a, b), grass, PSET
    NEXT a
    NEXT b
    FOR a = 10 TO 300 STEP 10
    PUT (a, 10), tree, PSET
    PUT (a, 180), tree, PSET
    NEXT a
    FOR a = 10 TO 180 STEP 10
    PUT (10, a), tree, PSET
    PUT (300, a), tree, PSET
    NEXT a
    PUT (150, 10), grass, PSET
    PUT (140, 80), greencav, PSET
END IF
DO WHILE locatin = 104
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc > 17 AND xloc <> 7 THEN yloc = 17
        IF yloc > 18 THEN yloc = 1: locatin = 116: GOTO 7
        IF yloc = 8 AND xloc > 13 AND xloc < 18 THEN yloc = 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc < 2 THEN yloc = 2
        IF yloc = 11 AND xloc > 13 AND xloc < 18 THEN yloc = 12
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc = 17 AND yloc > 7 AND yloc < 12 THEN xloc = 18
        IF xloc < 2 THEN xloc = 2
        IF xloc = 6 AND yloc = 18 THEN xloc = 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc = 14 AND yloc > 7 AND yloc < 12 THEN xloc = 13
        IF xloc > 29 THEN xloc = 29
        IF xloc = 8 AND yloc = 18 THEN xloc = 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
    IF z = " " AND yloc = 12 AND xloc > 13 AND xloc < 18 AND visit2 = 0 THEN LOCATE 1, 1: PRINT "You found 100 gold.": visit2 = 1: gold = gold + 100
LOOP
DO WHILE locatin = 105
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc > 17 THEN yloc = 17
        IF xloc = 1 AND yloc = 10 THEN yloc = 9
        IF (xloc = 14 OR xloc = 15 OR xloc = 16) AND yloc = 8 THEN yloc = 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc < 2 THEN yloc = 2
        IF xloc = 1 AND yloc = 8 THEN yloc = 9
        IF (xloc = 14 OR xloc = 16) AND yloc = 10 THEN yloc = 11
        IF xloc = 15 AND yloc = 10 THEN yloc = 11: GOTO house7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc < 2 AND yloc <> 9 THEN xloc = 2
        IF xloc < 1 THEN xloc = 30: locatin = 120: GOTO 7
        IF xloc = 16 AND (yloc = 8 OR yloc = 9 OR yloc = 10) THEN xloc = 17
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc > 29 THEN xloc = 29
        IF xloc = 14 AND (yloc = 8 OR yloc = 9 OR yloc = 10) THEN xloc = 13
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 107
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 100)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc = 2 THEN yloc = 17: GOTO boat2
        IF yloc > 18 THEN yloc = 1: locatin = 119: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc < 1 THEN yloc = 18: locatin = 95: GOTO 7
        IF yloc = 17 AND xloc <> 15 THEN yloc = 18
        IF yloc = 16 AND boat = 1 THEN yloc = 1: GOTO boat
        IF yloc = 16 AND boat = 0 THEN yloc = 17
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        direction = 2
        xloc = xloc - 1
        IF xloc < 2 THEN xloc = 2
        IF yloc = 17 OR yloc = 1 THEN xloc = 15
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        direction = 1
        xloc = xloc + 1
        IF xloc > 29 THEN xloc = 29
        IF yloc = 17 OR yloc = 1 THEN xloc = 15
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 115
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 100)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        IF xloc = 30 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc <> 30 THEN PUT (xloc * 10, yloc * 10), water, PSET
        yloc = yloc + 1
        IF yloc > 18 AND xloc = 28 THEN yloc = 18
        IF yloc > 18 THEN yloc = 1: locatin = 127: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        IF xloc = 30 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc <> 30 THEN PUT (xloc * 10, yloc * 10), water, PSET
        yloc = yloc - 1
        IF yloc = 1 AND xloc = 30 THEN yloc = 2
        IF yloc < 1 THEN yloc = 18: locatin = 103: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        IF xloc = 30 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc <> 30 THEN PUT (xloc * 10, yloc * 10), water, PSET
        direction = 2
        xloc = xloc - 1
        IF xloc = 29 THEN xloc = 30
        IF xloc < 2 THEN xloc = 2
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        IF xloc = 30 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc < 30 THEN PUT (xloc * 10, yloc * 10), water, PSET
        direction = 1
        xloc = xloc + 1
        IF xloc = 29 THEN xloc = 28
        IF xloc > 30 THEN xloc = 1: locatin = 116: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 116
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 100)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc = 4 AND ((xloc > 2 AND xloc < 13) OR xloc > 13) THEN yloc = 3
        IF yloc > 18 THEN yloc = 1: locatin = 128: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc < 2 AND xloc <> 7 THEN yloc = 2
        IF yloc < 1 THEN yloc = 18: locatin = 104: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc = 12 AND yloc > 3 THEN xloc = 13
        IF xloc = 6 AND yloc = 1 THEN xloc = 7
        IF xloc < 1 THEN xloc = 30: locatin = 115: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc = 3 AND yloc > 3 THEN xloc = 2
        IF xloc = 14 AND yloc > 3 THEN xloc = 13
        IF xloc = 8 AND yloc = 1 THEN xloc = 7
        IF xloc > 30 THEN xloc = 1: locatin = 117: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 117
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc = 11 AND (xloc = 22 OR xloc = 23 OR xloc = 24) THEN yloc = yloc - 1
        IF yloc > 18 THEN yloc = 1: locatin = 129: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc = 13 AND (xloc = 22 OR xloc = 24) THEN yloc = yloc + 1
        IF yloc < 2 THEN yloc = 2
        IF yloc = 13 AND xloc = 23 THEN xloc = 23: yloc = 14: GOTO house4
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF (yloc = 11 OR yloc = 12 OR yloc = 13) AND xloc = 24 THEN xloc = xloc + 1
        IF xloc < 2 AND yloc > 3 THEN xloc = 2
        IF xloc < 1 THEN xloc = 30: locatin = 116: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF (yloc = 11 OR yloc = 12 OR yloc = 13) AND xloc = 22 THEN xloc = xloc - 1
        IF xloc > 30 THEN xloc = 1: locatin = 118: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 118
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc = 6 AND (xloc = 13 OR xloc = 14 OR xloc = 15 OR xloc = 16 OR xloc = 17) THEN yloc = yloc - 1
        IF yloc = 3 AND (xloc = 6 OR xloc = 5 OR xloc = 4) THEN yloc = yloc - 1
        IF yloc = 15 AND (xloc = 6 OR xloc = 7 OR xloc = 8) THEN yloc = yloc - 1
        IF yloc = 11 AND (xloc = 22 OR xloc = 23 OR xloc = 24) THEN yloc = yloc - 1
        IF yloc > 18 THEN yloc = 1: locatin = 130: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc = 8 AND (xloc = 13 OR xloc = 14 OR xloc = 16 OR xloc = 17) THEN yloc = yloc + 1
        IF yloc = 5 AND (xloc = 6 OR xloc = 4) THEN yloc = yloc + 1
        IF yloc = 17 AND (xloc = 8 OR xloc = 6) THEN yloc = yloc + 1
        IF yloc = 13 AND (xloc = 22 OR xloc = 24) THEN yloc = yloc + 1
        IF yloc < 2 THEN yloc = 2
        IF xloc = 15 AND yloc = 8 THEN xloc = 15: yloc = 9: GOTO castle1
        IF yloc = 5 AND xloc = 5 THEN xloc = 5: yloc = 6: GOTO house1
        IF yloc = 13 AND xloc = 23 THEN xloc = 23: yloc = 14: GOTO house2
        IF yloc = 17 AND xloc = 7 THEN xloc = 7: yloc = 18: GOTO house3
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF (yloc = 8 OR yloc = 7 OR yloc = 6) AND (xloc = 17) THEN xloc = xloc + 1
        IF (yloc = 5 OR yloc = 4 OR yloc = 3) AND xloc = 6 THEN xloc = xloc + 1
        IF (yloc = 16 OR yloc = 17 OR yloc = 15) AND xloc = 8 THEN xloc = xloc + 1
        IF (yloc = 11 OR yloc = 12 OR yloc = 13) AND xloc = 24 THEN xloc = xloc + 1
        IF xloc < 1 THEN xloc = 30: locatin = 117: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF (yloc = 8 OR yloc = 7 OR yloc = 6) AND xloc = 13 THEN xloc = xloc - 1
        IF (yloc = 5 OR yloc = 4 OR yloc = 3) AND xloc = 4 THEN xloc = xloc - 1
        IF (yloc = 16 OR yloc = 17 OR yloc = 15) AND xloc = 6 THEN xloc = xloc - 1
        IF (yloc = 11 OR yloc = 12 OR yloc = 13) AND xloc = 22 THEN xloc = xloc - 1
        IF xloc > 29 THEN xloc = 29
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 119
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 75)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc + 1
        IF yloc = 18 AND xloc > 1 AND xloc < 15 THEN yloc = 17
        IF yloc > 18 THEN yloc = 1: locatin = 131: GOTO 7
        IF yloc = 2 AND xloc > 2 THEN yloc = 1
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc - 1
        IF yloc < 1 THEN yloc = 18: locatin = 107: GOTO 7
        IF yloc = 16 AND xloc > 2 AND xloc < 16 THEN yloc = 17
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc - 1
        IF xloc = 14 AND yloc = 18 THEN xloc = 15
        IF xloc < 2 THEN xloc = 2
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc + 1
        IF xloc = 16 AND (yloc = 18 OR yloc = 17) THEN xloc = 15
        IF xloc > 29 THEN xloc = 29
        IF xloc = 3 AND yloc > 1 AND yloc < 17 THEN xloc = 2
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 120
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 35)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        IF xloc = 15 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc <> 15 THEN PUT (xloc * 10, yloc * 10), tree, PSET
        yloc = yloc + 1
        IF xloc > 15 THEN yloc = yloc - 1
        IF yloc > 18 THEN yloc = 1: locatin = 132: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        IF xloc = 15 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc <> 15 THEN PUT (xloc * 10, yloc * 10), tree, PSET
        yloc = yloc - 1
        IF yloc < 9 THEN yloc = 9
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        IF xloc = 15 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc <> 15 THEN PUT (xloc * 10, yloc * 10), tree, PSET
        xloc = xloc - 1
        IF yloc <> 9 THEN xloc = 15
        IF xloc < 15 THEN xloc = 15
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        IF xloc = 15 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc <> 15 THEN PUT (xloc * 10, yloc * 10), tree, PSET
        xloc = xloc + 1
        IF yloc <> 9 THEN xloc = xloc - 1
        IF xloc > 30 THEN xloc = 1: locatin = 105: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 127
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 100)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        IF xloc = 29 OR xloc = 30 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc < 29 THEN PUT (xloc * 10, yloc * 10), water, PSET
        yloc = yloc + 1
        IF yloc > 17 AND xloc > 28 THEN yloc = 17
        IF yloc = 2 AND xloc = 30 THEN yloc = 1
        IF xloc > 28 AND yloc > 17 THEN yloc = 17
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        IF xloc = 29 OR xloc = 30 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc < 29 THEN PUT (xloc * 10, yloc * 10), water, PSET
        yloc = yloc - 1
        IF yloc = 15 AND xloc = 30 THEN yloc = 16
        IF yloc < 1 AND xloc = 29 THEN yloc = 1
        IF yloc < 1 AND xloc = 30 THEN yloc = 18: locatin = 115: GOTO 7
        END IF
    IF z = CHR$(0) + CHR$(75) THEN
        IF xloc = 30 OR xloc = 29 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc < 29 THEN PUT (xloc * 10, yloc * 10), water, PSET
        direction = 2
        xloc = xloc - 1
        IF xloc = 28 THEN xloc = 29
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        IF xloc = 30 OR xloc = 29 THEN PUT (xloc * 10, yloc * 10), grass, PSET
        IF xloc < 29 THEN PUT (xloc * 10, yloc * 10), water, PSET
        direction = 1
        xloc = xloc + 1
        IF xloc > 29 AND yloc > 1 AND yloc < 16 THEN xloc = 29
        IF xloc > 30 THEN xloc = 1: locatin = 128: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 128
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 100)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF xloc > 12 AND xloc < 29 AND yloc = 3 THEN yloc = 2
        IF yloc = 2 AND xloc = 1 OR xloc = 2 THEN yloc = 1
        IF yloc > 17 AND xloc <> 29 THEN yloc = 17
        IF yloc > 18 THEN yloc = 1: locatin = 140: GOTO 7
        END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF xloc > 13 AND yloc = 1 THEN yloc = 2
        IF yloc = 15 AND xloc < 27 THEN yloc = 16
        IF yloc = 15 AND xloc = 27 THEN yloc = 16: GOTO store1
        IF yloc < 1 THEN yloc = 18: locatin = 116: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc = 12 AND (yloc = 1 OR yloc = 2) THEN xloc = 13
        IF xloc < 1 THEN xloc = 30: locatin = 127: GOTO 7
        IF xloc = 28 AND yloc > 2 THEN xloc = 29
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc > 29 THEN xloc = 29
        IF xloc = 14 AND yloc = 1 THEN xloc = 13
        IF xloc = 30 AND yloc = 2 THEN xloc = 29
        IF xloc = 3 AND yloc = 1 THEN xloc = 2
        IF xloc = 28 AND yloc > 15 THEN xloc = 27
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 129
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc > 14 THEN yloc = 14
        IF yloc = 10 AND (xloc = 21 OR xloc = 22 OR xloc = 23) THEN yloc = 9
        IF yloc = 7 AND (xloc = 13 OR xloc = 14 OR xloc = 15) THEN yloc = 6
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc = 13 AND (xloc = 22 OR xloc = 24) THEN yloc = yloc + 1
        IF yloc < 1 THEN yloc = 18: locatin = 117: GOTO 7
        IF yloc = 12 AND (xloc = 21 OR xloc = 23) THEN yloc = 13
        IF yloc = 12 AND xloc = 22 THEN yloc = 13: GOTO house1
        IF yloc = 9 AND (xloc = 13 OR xloc = 15) THEN yloc = 10
        IF yloc = 9 AND xloc = 14 THEN yloc = 10: GOTO house5
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc = 23 AND (yloc = 10 OR yloc = 11 OR yloc = 12) THEN xloc = 24
        IF xloc = 15 AND (yloc = 9 OR yloc = 8 OR yloc = 7) THEN xloc = 16
        IF xloc < 2 THEN xloc = 2
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc = 21 AND (yloc = 10 OR yloc = 11 OR yloc = 12) THEN xloc = 20
        IF xloc > 30 THEN xloc = 1: locatin = 130: GOTO 7
        IF xloc = 13 AND (yloc = 9 OR yloc = 8 OR yloc = 7) THEN xloc = 12
    END IF
    IF z = CHR$(13) THEN GOTO enter
    LOCATE 1, 1
LOOP
DO WHILE locatin = 130
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc = 3 AND ((xloc > 2 AND xloc < 14) OR xloc > 16) THEN yloc = 2
        IF yloc = 11 AND (xloc = 14 OR xloc = 15 OR xloc = 16) THEN yloc = 10
        IF yloc = 15 AND xloc > 12 AND xloc < 19 THEN yloc = 14
        IF yloc > 14 THEN yloc = 14
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF (xloc = 13 OR xloc = 17) AND yloc = 9 THEN yloc = 10
        IF (xloc = 14 OR xloc = 16) AND yloc = 13 THEN yloc = 14
        IF xloc = 15 AND yloc = 13 THEN yloc = 14: GOTO house6
        IF yloc < 1 THEN yloc = 18: locatin = 118: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc = 13 AND yloc > 2 AND yloc < 10 THEN xloc = 14
        IF xloc = 12 AND yloc > 9 AND yloc < 16 THEN xloc = 13
        IF xloc = 16 AND (yloc = 11 OR yloc = 12 OR yloc = 13) THEN xloc = 17
        IF xloc < 1 THEN xloc = 30: locatin = 129: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc > 29 THEN xloc = 29
        IF xloc = 3 AND yloc > 2 THEN xloc = 2
        IF xloc = 17 AND yloc > 2 AND yloc < 10 THEN xloc = 16
        IF xloc = 18 AND yloc > 9 AND yloc < 15 THEN xloc = 17
        IF xloc = 14 AND (yloc = 11 OR yloc = 12 OR yloc = 13) THEN xloc = 13
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 131
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 75)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc + 1
        IF yloc = 10 AND xloc = 30 THEN yloc = 9
        IF yloc > 18 THEN yloc = 1: locatin = 143: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc - 1
        IF yloc = 8 AND xloc = 30 THEN yloc = 9
        IF yloc = 1 AND xloc <> 15 THEN yloc = 2
        IF yloc < 1 THEN yloc = 18: locatin = 119: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc - 1
        IF xloc = 14 AND yloc = 1 THEN xloc = 15
        IF xloc < 2 THEN xloc = 2
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc + 1
        IF xloc > 29 AND yloc <> 9 THEN xloc = 29
        IF xloc = 16 AND yloc = 1 THEN xloc = 15
        IF xloc > 30 THEN xloc = 1: locatin = 132: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 132
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 25)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc = 10 AND xloc <> 15 THEN yloc = 9
        IF yloc > 18 THEN yloc = 1: locatin = 144: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc = 8 AND xloc <> 15 THEN yloc = 9
        IF yloc < 1 THEN yloc = 18: locatin = 120: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF yloc <> 9 THEN xloc = 15
        IF xloc < 1 THEN xloc = 30: locatin = 131: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc > 15 THEN xloc = 15
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 140
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 50)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) AND yloc = 1 AND xloc = 29 THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
    END IF
    IF z = CHR$(0) + CHR$(72) AND xloc = 29 AND (yloc = 1 OR yloc = 2) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc < 1 THEN yloc = 18: locatin = 128: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
    direction = 2
    IF z = CHR$(0) + CHR$(75) AND yloc = 2 AND xloc = 30 THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
    END IF
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
    direction = 1
    IF z = CHR$(0) + CHR$(77) AND yloc = 2 AND xloc = 29 OR xloc = 30 THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc > 30 THEN xloc = 1: locatin = 141: GOTO 7
    END IF
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 141
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 50)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc > 2 THEN yloc = 2
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc < 2 AND xloc <> 15 THEN yloc = 2
        IF yloc = 1 AND xloc = 15 AND visit3 = 5 THEN yloc = 2: GOTO store2
        IF yloc = 1 AND xloc = 15 AND visit3 <> 5 THEN yloc = 2
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc < 1 THEN xloc = 30: locatin = 140: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc > 30 THEN xloc = 1: locatin = 142: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
    IF z = "R" OR z = "r" THEN visit3 = visit3 + 1: IF visit3 > 5 THEN visit3 = 5: PLAY "o5;l64cdcdcdcdcdc": PUT (150, 10), greendor, PSET
LOOP
DO WHILE locatin = 142
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 75)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc + 1
        IF yloc > 17 THEN yloc = 17
        IF xloc = 1 AND yloc = 3 THEN yloc = 2
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc - 1
        IF yloc < 2 THEN yloc = 2
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc - 1
        IF xloc < 2 AND yloc <> 2 THEN xloc = 2
        IF xloc < 1 THEN xloc = 30: locatin = 141: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc + 1
        IF xloc > 30 THEN xloc = 1: locatin = 143: GOTO 7
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 143
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    RANDOMIZE RND * TIMER
    a = INT(RND * 75)
    IF a = 1 THEN GOTO fight
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc + 1
        IF yloc = 6 AND xloc > 9 AND xloc < 21 THEN yloc = 5
        IF yloc > 17 THEN yloc = 17
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        yloc = yloc - 1
        IF xloc = 15 AND yloc = 7 THEN yloc = 8: GOTO store3
        IF xloc = 1 AND yloc = 1 THEN yloc = 2
        IF yloc = 12 AND xloc > 9 AND xloc < 21 AND xloc <> 15 THEN yloc = 13
        IF yloc < 1 THEN yloc = 18: locatin = 131: GOTO 7
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc - 1
        IF xloc = 14 AND yloc > 7 AND yloc < 13 THEN xloc = 15
        IF xloc = 1 AND yloc = 1 THEN xloc = 2
        IF xloc < 1 THEN xloc = 30: locatin = 142: GOTO 7
        IF xloc = 20 AND yloc > 5 AND yloc < 13 THEN xloc = 21
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), dirtpath, PSET
        xloc = xloc + 1
        IF xloc = 16 AND yloc > 7 AND yloc < 13 THEN xloc = 15
        IF xloc > 29 THEN xloc = 29
        IF xloc = 10 AND yloc > 5 AND yloc < 13 THEN xloc = 9
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP
DO WHILE locatin = 144
    IF direction = 1 THEN PUT (xloc * 10, yloc * 10), heroE, PSET
    IF direction = 2 THEN PUT (xloc * 10, yloc * 10), heroW, PSET
    DO
      z = INKEY$
    LOOP UNTIL z <> ""
    IF z = CHR$(0) + CHR$(80) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc + 1
        IF yloc > 17 THEN yloc = 17
        IF (xloc = 14 OR xloc = 15 OR xloc = 16) AND yloc = 8 THEN yloc = 7
    END IF
    IF z = CHR$(0) + CHR$(72) THEN
        PUT (xloc * 10, yloc * 10), grass, PSET
        yloc = yloc - 1
        IF yloc < 2 AND xloc <> 15 THEN yloc = 2
        IF yloc < 1 THEN yloc = 18: locatin = 132: GOTO 7
        IF (xloc = 14 OR xloc = 16) AND yloc = 9 THEN yloc = 10
        IF xloc = 15 AND yloc = 9 THEN yloc = 10: GOTO cave1
    END IF
    IF z = CHR$(0) + CHR$(75) THEN
        direction = 2
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc - 1
        IF xloc < 2 THEN xloc = 2
        IF xloc < 1 THEN xloc = 30: locatin = 120: GOTO 7
        IF xloc = 14 AND yloc = 1 THEN xloc = 15
        IF xloc = 16 AND (yloc = 8 OR yloc = 9) THEN xloc = 17
    END IF
    IF z = CHR$(0) + CHR$(77) THEN
        direction = 1
        PUT (xloc * 10, yloc * 10), grass, PSET
        xloc = xloc + 1
        IF xloc = 16 AND yloc = 1 THEN xloc = 15
        IF xloc > 29 THEN xloc = 29
        IF xloc = 14 AND (yloc = 8 OR yloc = 9) THEN xloc = 13
    END IF
    IF z = CHR$(13) THEN GOTO enter
LOOP

7GOTO 6
enter:
    CLS
    PRINT "Hit Points  ="; hitpoint
    PRINT "Max H. P.   ="; hpmax
    PRINT "Magic Points="; magic
    PRINT "Gold Coins  ="; gold
    IF strength = 5 THEN PRINT "No Weapon"
    IF strength = 15 THEN PRINT "Wooden Sword"
    IF strength = 20 THEN PRINT "Short Sword"
    IF strength = 30 THEN PRINT "Long Sword"
    IF strength = 50 THEN PRINT "Crossbow"
    IF strength = 100 THEN PRINT "Ball and Chain"
    IF defense = 5 THEN PRINT "No Armor"
    IF defense = 25 THEN PRINT "Chain Armor"
    IF defense = 50 THEN PRINT "Golden Chain Armor"
    IF defense = 100 THEN PRINT "Ethereal Armor"
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    SCREEN 13
    GOTO 6
castle1:
    SCREEN 11
    CLS
    PRINT "GREKKEN:  You have summoned me your lordship."
    space
    PRINT "KING:  Yes, I need you to embark on a great voyage."
    space
    PRINT "GREKKEN:  But my lord, you know I'm not fit to battle anything, my HERO days"
    PRINT "        are over.  I am now a blacksmith living a peaceful life alone."
    space
    PRINT "KING:  Please, Grekken, everyone knows you are the greatest voyager in the land."
    PRINT "        The evil King Larken has declared war on our peaceful town of"
    PRINT "        Printhith and has kidnapped my daughter.  Now I need you to go to the"
    PRINT "        city of Larkenville, kill King Larken, and rescue my daughter, the"
    PRINT "        Princess Karenina."
    space
    PRINT "GREKKEN:  Ahhhh, the Princess Karenina is known far and wide because of her"
    PRINT "        exquisite beauty.  It would be my honor to fight for her your majesty."
    space
    PRINT "KING:  Great, and as a reward upon your return, you win the hand of Karenina and"
    PRINT "        will one day rule over Printhith as King."
    space
    PRINT "GREKKEN:  Thank you my Lord."
    space
    PRINT "KING:  If you need help on your voyage, the town's wiseman will teach you a bit"
    PRINT "        of black magic and the blacksmith will supply you with a sword to fight"
    PRINT "        with.  It's not much, but we don't have much because of the recent"
    PRINT "        attack on our town from the evil King Larken."
    space
    PRINT "GREKKEN:  Yes my lord, I thank you for giving me this opportunity."
    space
    PRINT "KING:  The old hermit stole our town boat to cross the river, so you must first"
    PRINT "        find the hermit's cave and retrieve our boat.  I believe the hermit's"
    PRINT "        cave is located somewhere to the southeast."
    space
    PRINT "GREKKEN:  Yes my lord.  I will go and retrieve the boat."
    space
    PRINT "KING:  Now go.  We have so little time."
    DO
       z = INKEY$
    LOOP UNTIL z <> ""
    SCREEN 13
    GOTO 6
house1:
    SCREEN 11
    CLS
    PRINT "OLD WOMAN:  Who are you?"
    space
    PRINT "GREKKEN:  I am Grekken."
    space
    PRINT "OLD WOMAN:  Well, get out of my house."
    space
    PRINT "GREKKEN:  Okay, fine."
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    SCREEN 13
    GOTO 6
house2:
    SCREEN 11
    CLS
    PRINT "YOUNG MAN:  Do I know you?"
    space
    PRINT "GREKKEN:  No, I'm looking for the blacksmith."
    space
    PRINT "YOUNG MAN:  Oh, well he is located just west of here."
    space
    PRINT "GREKKEN:  Okay, thank you."
    space
    PRINT "YOUNG MAN:  Are you the man who is going to embark on the voyage to rescue our"
    PRINT "        princess?"
    space
    PRINT "GREKKEN:  Yes, I am."
    space
    PRINT "YOUNG MAN:  Well, I wish you luck on your voyage."
    space
    PRINT "GREKKEN:  Thank you, wait, just one more thing.  Do you know where the old wise"
    PRINT "        man lives?  The king has told me that he will teach me black magic."
    space
    PRINT "YOUNG MAN:  Yes, he lives just south of here."
    space
    PRINT "GREKKEN:  Thank you, I really appreciate your help."
    space
    PRINT "YOUNG MAN:  No problem.  Glad I could help."
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    SCREEN 13
    GOTO 6
house3:
    SCREEN 11
    CLS
    PRINT "OLD MAN:  Get out, you twisted man who's come to take me away, get out."
    space
    PRINT "GREKKEN:  Are you the old wise man?"
    space
    PRINT "OLD MAN:  No, get away from me you evil man, get away."
    space
    PRINT "GREKKEN:  Okay, I'm sorry to have disturbed you."
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    SCREEN 13
    GOTO 6
house4:
    CLS
    SCREEN 11
    PRINT "BLACKSMITH:  Hello, I am the town's blacksmith, and you must be Grekken.  I've"
    PRINT "        been expecting you."
    space
    PRINT "GREKKEN:  Yes, I am Grekken.  I happen to be a blacksmith myself.  Are you going"
    PRINT "        to supply me with a sword or something?"
    space
    PRINT "BLACKSMITH:  Yes, here's a wooden sword.  I would supply you with something more"
    PRINT "        but with the war and everything going on, we're a bit low on resources."
    space
    PRINT "GREKKEN:  That's okay.  This will do just fine.  Thank you."
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    strength = 15
    SCREEN 13
    GOTO 6
house5:
    SCREEN 11
    CLS
    PRINT "YOUNG WOMAN:  Hello, there, my name is Annette.  What can I do for you?"
    space
    PRINT "GREKKEN:  Sorry, ma'am, I must have the wrong house.  I was looking for the old"
    PRINT "        wise man."
    space
    PRINT "YOUNG WOMAN:  He is located just east of here, but why don't you stay and eat"
    PRINT "        something before you get going.  My husband won't be home for another"
    PRINT "        three hours."
    space
    PRINT "GREKKEN:  As tempting as that sounds, I really must be on my way.  Thank you."
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    SCREEN 13
    GOTO 6
house6:
  IF visit1 = 0 THEN
    SCREEN 11
    CLS
    PRINT "GREKKEN: Excuse me, sir, are you the wise man?"
    space
    PRINT "WISE MAN:  Why yes, young man, I've been expecting you."
    space
    PRINT "GREKKEN:  Yes, the King has said that you will be teaching me black magic?"
    space
    PRINT "WISE MAN:  Yes, yes, yes, here is a book.  Now study this and when you are done"
    PRINT "        reading, I will show you the secrets to black magic."
    space
    PRINT "GREKKEN:  Thank you, great wise man."
    space
    PRINT "'A month has gone by.'"
    space
    PRINT "WISE MAN:  Now, young GREKKEN, you are ready to do battle against the evil King"
    PRINT "        Larken.  Now go."
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
    magic = magic + 30
    visit1 = 1
    SCREEN 13
    GOTO 6
  END IF
  IF visit1 = 1 THEN
    SCREEN 11
    CLS
    PRINT "OLD WOMAN:  Oh, my heart is filled with grief.  The wise man has deceased."
    space
    PRINT "GREKKEN:  No, this can't be.  I'd mourn his loss, but I must be on my way."
    DO
        z = INKEY$
    LOOP UNTIL z <> ""
  END IF
  SCREEN 13
  GOTO 6
house7:
                                                                                IF visit4 = 0 THEN
                                                                                  SCREEN 11
                                                                                  CLS
                                                                                  PRINT "OLD MAN:  Welcome young Grekken, I've been expecting you."
                                                                                  space
                                                                                  PRINT "GREKKEN:  How do you know my name?"
                                                                                  space
                                                                                  PRINT "OLD MAN:  Oh, everyone around here knows you're the famous man who's trying to"
                                                                                  PRINT "        rescue the princess"
                                                                                  space
                                                                                  PRINT "GREKKEN:  But you're out here deep in the woods."
                                                                                  space
                                                                                  PRINT "OLD MAN:  Just because I'm deep in the woods doesn't mean I don't leave."
                                                                                  space
                                                                                  PRINT "GREKKEN:  Okay, that makes sense.  Now, why were you expecting me?"
                                                                                  space
                                                                                  PRINT "OLD MAN:  Because you sensed me.  I have something good for you, and all GREAT"
                                                                                  PRINT "        voyagers sense good, and go to it."
                                                                                                                                                                space
                                                                                  PRINT "GREKKEN:  I am rather awesome, aren't I."
                                                                                  space
                                                                                  PRINT "OLD MAN:  Ummmmm, yes.  Here, take this potion and drink it.  It will give you"
                                                                                  PRINT "        increased stamina."
                                                                                  space
                                                                                  PRINT "GREKKEN:  Wait, how do I know this isn't a trick?  You could be trying to kill"
                                                                                  PRINT "        me or something."
                                                                                  space
                                                                                  PRINT "OLD MAN:  I guess that's just the chance you'll have to take.  You have a long"
                                                                                  PRINT "        voyage ahead of you and this could be VERY helpful."
                                                                                  space
                                                                                  PRINT
                                                                                  PRINT "1 Take the potion"
                                                                                  PRINT "2 Kill the Old Man and run"
                                                                                  PRINT
                                                                                  PRINT "Make your choice"
                                                                                  DO
                                                                                      z = INKEY$
                                                                                  LOOP UNTIL z = "1" OR z = "2"
                                                                                  IF z = "1" THEN
                                                                                      PRINT "OLD MAN:  You see, I told you.  You're feeling better already, aren't you."
                                                                                      space
                                                                                      PRINT "GREKKEN:  I feel totally different.  Thank you."
                                                                                      hitpoint = hitpoint + 100
                                                                                      hpmax = hpmax + 100
                                                                                      visit4 = 1
                                                                                  END IF
                                                                                  IF z = "2" THEN
                                                                                      visit4 = 2
                                                                                      PRINT "You slay the old man and run..."
                                                                                  END IF
                                                                                      DO
                                                                                          z = INKEY$
                                                                                      LOOP UNTIL z <> ""
                                                                                      SCREEN 13
                                                                                      GOTO 6
                                                                                END IF
                                                                                IF visit4 = 1 THEN
                                                                                  SCREEN 11
                                                                                  CLS
                                                                                  PRINT "OLD MAN:  I've helped you as much as I can, now it's up to you Grekken."
                                                                                  DO
                                                                                      z = INKEY$
                                                                                  LOOP UNTIL z <> ""
                                                                                END IF
                                                                                IF visit4 = 2 THEN
                                                                                  SCREEN 11
                                                                                  CLS
                                                                                  PRINT "You walk into a bloodbath that once was the old man that you slain."
                                                                                  DO
                                                                                      z = INKEY$
                                                                                  LOOP UNTIL z <> ""
                                                                                END IF
                                                                                SCREEN 13
                                                                                GOTO 6
fight:
PLAY "o1;l1;c"
    CLS
SCREEN 8
IF locatin >= 107 AND locatin <= 143 THEN
LOCATE 1, 1
RANDOMIZE RND * TIMER
a = INT(RND * 3 + .5)
IF a <= 1 THEN
    opphp = 100
    DRAW "bm280,50;c6r20f5e5d20h5u10d10g5l20h5g5u20f5d10u10e5bd5c4f5h2g2e2f2br10e5g3f2h2e3c15bd8l20r5d5r5u5d5r5u5bd7c6f5d5l20u5e5g5d5r20d5l20u5r10d5r10d5l20u5d25r10u15d15r10u20"
    PRINT "Rat Boy"
END IF
IF a = 2 THEN
    opphp = 75
    DRAW "bm310,50;c6r20f5d10g5l20h5u10e5bd5c1r5br10r5l5bd5c15l10g3f3r10e3h3f3bl2c12l12bd7c6g5h20d50e20d20r10u15d15r10u20f20u50g20h5"
    PRINT "Flying Monkey"
END IF
IF a >= 3 THEN
    opphp = 50
    DRAW "bm310,50;c8r20f5d10g5l20h5u10e5g5h10d30e10f5r20e5f10u30g10bl8c14g5bl10e5"
    PRINT "Ba-Bat"
END IF
END IF
IF locatin = 144 THEN
    opphp = 500
    DRAW "bm310,20;c12r20f5d10g5l20h5u10e5bd5f5br10e5bd10l20bl5c12u5l1c14l19g5d40r10u20d70r30u60d60r30u70d20r10u40h5l19"
END IF
LINE (0, 150)-(639, 150), 15
PCOPY 0, 1
8LOCATE 20, 1
PRINT "Your Turn  ("; hitpoint; "/"; hpmax; ")"
PRINT "---------"
PRINT "(A)ttack"
PRINT "(M)agic ("; magic; ")"
DO
    z = INKEY$
LOOP UNTIL z = "a" OR z = "A" OR z = "m" OR z = "M"
IF z = "a" OR z = "A" THEN
    IF strength = 5 THEN DRAW "bm250,70;c12h5e5f5e10f5g10e10f5g10e10f5g15"
    IF strength = 15 THEN DRAW "bm250,70;c6r5d5g20h5e20g20c8h5f15g5h15e5g5f5g5f5e5"
    IF strength = 20 THEN DRAW "bm250,70;c7r5d5g20h5e20g20c8h5f15g5h15e5g5f5g5f5e5"
    IF strength = 30 THEN DRAW "bm250,70;c7r5d5g35h5e35g35c8h5f15g5h15e5g5f5g5f5e5"
    IF strength = 50 THEN DRAW "bm250,70;c7r5d5u5c8g35e2l2r2d2u2e2l2r2d2u2e2l2r2d2"
    IF strength = 100 THEN DRAW "bm250,70;c8r10f1d10g1l10h1u10e1g1d5l10h5l10g10f20r10e10"
    x = INT(RND * strength + 5)
    LOCATE 5, 5
    PRINT "You do"; x; "damage."
    opphp = opphp - x
END IF
IF z = "m" OR z = "M" THEN
    INPUT "How much?"; c
    IF c > magic THEN c = magic
    magic = magic - c
    LINE (0, 150)-(320, 75), 14
    LINE (0, 150)-(30, 150), 14
    LINE (30, 150)-(320, 75), 14
    PAINT (15, 149), 14
    LINE (639, 150)-(320, 75), 14
    LINE (609, 150)-(639, 150), 14
    LINE (609, 150)-(320, 75), 14
    PAINT (630, 149), 14
    LOCATE 5, 5
    RANDOMIZE RND * TIMER
    b = c * INT(RND * 3 + 2)
    PRINT "You do"; b; "damage"
    opphp = opphp - b
END IF
IF opphp < 1 THEN GOTO 9
IF hitpoint < 1 THEN GOTO 10
DO
    z = INKEY$
LOOP UNTIL z <> ""
PCOPY 1, 0
IF locatin >= 107 AND locatin <= 143 THEN
IF a <= 1 THEN
    DRAW "bm150,50;c15r20d30g10h10u30br50r20d30g10h10u30bl25bd50r20d30g10h10u30"
    RANDOMIZE RND * TIMER
    b = INT(RND * defense)
    IF b <= 8 THEN
        RANDOMIZE RND * TIMER
        x = INT(RND * 12)
        LOCATE 5, 5
        PRINT "He does"; x; "damage."
        hitpoint = hitpoint - x
    END IF
END IF
IF a = 2 THEN
    FOR x = 1 TO 100
    b = INT(RND * 2)
    IF b > 1 THEN c = 14
    IF b <= 1 THEN c = 4
    CIRCLE (200, 75), x, c
    NEXT x
    RANDOMIZE RND * TIMER
    b = INT(RND * defense)
    IF b <= 8 THEN
        RANDOMIZE RND * TIMER
        x = INT(RND * 10)
        LOCATE 5, 5
        PRINT "He does"; x; "damage."
        hitpoint = hitpoint - x
    END IF
END IF
IF a >= 3 THEN
    FOR x = 1 TO 100
    PALETTE 0, 15
    PALETTE 0, 0
    NEXT x
    RANDOMIZE RND * TIMER
    b = INT(RND * defense)
    IF b <= 8 THEN
        RANDOMIZE RND * TIMER
        x = INT(RND * 8)
        LOCATE 5, 5
        PRINT "He does"; x; "damage."
        hitpoint = hitpoint - x
    END IF
END IF
END IF
IF locatin = 144 THEN
    DRAW "bm150,25;c7h20l30g50d10f20r20f30g30h30e30"
    RANDOMIZE RND * TIMER
    b = INT(RND * defense)
    IF b <= 17 THEN
        RANDOMIZE RND * TIMER
        x = INT(RND * 25)
        LOCATE 5, 5
        PRINT "He does"; x; "damage."
        hitpoint = hitpoint - x
    END IF
END IF
IF opphp < 1 THEN GOTO 9
IF hitpoint < 1 THEN GOTO 10
DO
    z = INKEY$
LOOP UNTIL z <> ""
PCOPY 1, 0
GOTO 8
9:SCREEN 13
                                                                              IF locatin >= 107 AND locatin <= 143 THEN
                                                                              CLS
                                                                              PLAY "o3l16cdefegfgl1a"
                                                                              PRINT "You have defeated the enemy!!!"
                                                                              RANDOMIZE RND * TIMER
                                                                              IF a <= 1 THEN b = INT(RND * 25 + 25)
                                                                              IF a = 2 THEN b = INT(RND * 15 + 15)
                                                                              IF a >= 3 THEN b = INT(RND * 10 + 10)
                                                                              PRINT "You gain"; b; "gold coins."
                                                                              gold = gold + b
                                                                              PRINT
                                                                              PRINT "Press SPACE BAR"
                                                                              space
                                                                              END IF
                                                                              IF locatin = 144 THEN
                                                                              CLS
                                                                              PLAY "o4l16cdecdecdecdecdecdecdecdecde"
                                                                              PRINT "You have defeated the hermit!!!"
                                                                              RANDOMIZE RND * TIMER
                                                                              b = INT(RND * 50 + 100)
                                                                              PRINT "You gain"; b; "gold coins."
                                                                              gold = gold + b
                                                                              hpmax = hpmax + 100
                                                                              hitpoint = hpmax
                                                                              PRINT "You now have"; hpmax; "hit points."
                                                                              PRINT "You have retrieved the boat!!!"
                                                                              boat = 1
                                                                              space
                                                                              END IF
                                                                              GOTO 6
10SCREEN 11
                                                                              CLS
                                                                              PRINT "You lose.  You don't get a fancy ending.  You have failed in your quest."
                                                                              space
                                                                              END
                                                                              SCREEN 13
                                                                              GOTO 6

store1:
                                                                                  CLS
                                                                                  PRINT "Welcome to the Armory!!!"
                                                                                  PRINT "*******************************"
                                                                                  PRINT "1 Chain Armor        = 200 gold"
                                                                                  PRINT "2 Golden Chain Armor = 500 gold"
                                                                                  PRINT "3 Ethereal Armor     = 999 gold"
                                                                                  PRINT "L Leave the Store"
                                                                                  PRINT
                                                                                  PRINT "You have"; gold; "gold."
                                                                                  PRINT
                                                                                  PRINT "Which will it be? (1,2,3,L)"
                                                                                  PRINT
                                                                                  DO
                                                                                      z = INKEY$
                                                                                  LOOP UNTIL z = "1" OR z = "2" OR z = "3" OR z = "L" OR z = "l"
                                                                                  IF z = "l" OR z = "L" THEN PRINT "Hey, no browsing.  Get out of here!!!"
                                                                                  IF (z = "1" AND gold < 200) OR (z = "2" AND gold < 500) OR (z = "3" AND gold < 999) THEN PRINT "Yeah right.  Get out of here!!!"
                                                                                  IF z = "1" AND gold >= 200 THEN gold = gold - 200: defense = 25: PRINT "Thank you and have a nice day!!!"
                                                                                  IF z = "2" AND gold >= 500 THEN gold = gold - 500: defense = 50: PRINT "Thank you and have a nice day!!!"
                                                                                  IF z = "3" AND gold >= 999 THEN gold = gold - 999: defense = 100: PRINT "Thank you and have a nice day!!!"
                                                                                  space
                                                                                  GOTO 6
store2:
                                                                                  CLS
                                                                                  PRINT "Welcome to the Armory!!!"
                                                                                  PRINT "*******************************"
                                                                                  PRINT "1 Chain Armor        = 50 gold"
                                                                                  PRINT "2 Golden Chain Armor = 250 gold"
                                                                                  PRINT "3 Ethereal Armor     = 500 gold"
                                                                                  PRINT "L Leave the Store"
                                                                                  PRINT
                                                                                  PRINT "You have"; gold; "gold."
                                                                                  PRINT
                                                                                  PRINT "Which will it be? (1,2,3,L)"
                                                                                  PRINT
                                                                                  DO
                                                                                      z = INKEY$
                                                                                  LOOP UNTIL z = "1" OR z = "2" OR z = "3" OR z = "L" OR z = "l"
                                                                                  IF z = "l" OR z = "L" THEN PRINT "Hey, no browsing.  Get out of here!!!"
                                                                                  IF (z = "1" AND gold < 50) OR (z = "2" AND gold < 250) OR (z = "3" AND gold < 500) THEN PRINT "Yeah right.  Get out of here!!!"
                                                                                  IF z = "1" AND gold >= 50 THEN gold = gold - 50: defense = 25: PRINT "Thank you and have a nice day!!!"
                                                                                  IF z = "2" AND gold >= 250 THEN gold = gold - 250: defense = 50: PRINT "Thank you and have a nice day!!!"
                                                                                  IF z = "3" AND gold >= 500 THEN gold = gold - 500: defense = 100: PRINT "Thank you and have a nice day!!!"
                                                                                  space
                                                                                  GOTO 6
store3:
                                                                                  CLS
                                                                                  PRINT "Welcome to the Weapons Shop!!!"
                                                                                  PRINT "*******************************"
                                                                                  PRINT "1 Short Sword        = 250 gold"
                                                                                  PRINT "2 Long Sword         = 400 gold"
                                                                                  PRINT "3 Crossbow           = 650 gold"
                                                                                  PRINT "4 Ball and Chain     = 999 gold"
                                                                                  PRINT "L Leave the Store"
                                                                                  PRINT
                                                                                  PRINT "You have"; gold; "gold."
                                                                                  PRINT
                                                                                  PRINT "Which will it be? (1,2,3,L)"
                                                                                  PRINT
                                                                                  DO
                                                                                      z = INKEY$
                                                                                  LOOP UNTIL z = "1" OR z = "2" OR z = "3" OR z = "4" OR z = "L" OR z = "l"
                                                                                  IF z = "l" OR z = "L" THEN PRINT "Hey, no browsing.  Get out of here!!!"
                                                                                  IF (z = "1" AND gold < 250) OR (z = "2" AND gold < 400) OR (z = "3" AND gold < 650) OR (z = "4" AND gold < 999) THEN PRINT "Yeah right.  Get out of here!!!"
                                                                                  IF z = "1" AND gold >= 250 THEN gold = gold - 250: strength = 20: PRINT "Thank you and have a nice day!!!"
                                                                                  IF z = "2" AND gold >= 400 THEN gold = gold - 400: strength = 30: PRINT "Thank you and have a nice day!!!"
                                                                                  IF z = "3" AND gold >= 500 THEN gold = gold - 650: strength = 50: PRINT "Thank you and have a nice day!!!"
                                                                                  IF z = "4" AND gold >= 999 THEN gold = gold - 999: strength = 100: PRINT "Thank you and have a nice day!!!"
                                                                                  space
                                                                                  GOTO 6
boat:
                                                                                  FOR a = 160 TO 20 STEP -1
                                                                                  PUT (150, a), heroboat, PSET
                                                                                  FOR b = 1 TO 10000: NEXT b
                                                                                  FOR b = 20 TO 160 STEP 10
                                                                                  PUT (150, b), water, PSET
                                                                                  NEXT b
                                                                                  NEXT a
                                                                                  GOTO 6
boat2:
                                                                                  FOR a = 20 TO 160
                                                                                  PUT (150, a), heroboat, PSET
                                                                                  FOR b = 1 TO 10000: NEXT b
                                                                                  FOR b = 20 TO 160 STEP 10
                                                                                  PUT (150, b), water, PSET
                                                                                  NEXT b
                                                                                  NEXT a
                                                                                  GOTO 6
cave1:
                                                                                IF visit5 = 0 THEN
                                                                                  SCREEN 11
                                                                                  CLS
                                                                                  PRINT "HERMIT:  What do you want?"
                                                                                  space
                                                                                  PRINT "GREKKEN:  I'm here to retrieve the boat that you stole from the townspeople."
                                                                                  space
                                                                                  PRINT "HERMIT:  They are lying.  This is my boat."
                                                                                  space
                                                                                  PRINT "GREKKEN:  No, I think you're lying.  Now give me the boat back."
                                                                                  space
                                                                                  PRINT "HERMIT:  You'll have to fight me for it."
                                                                                  space
                                                                                  PRINT "GREKKEN:  So be it."
                                                                                  DO
                                                                                      z = INKEY$
                                                                                  LOOP UNTIL z <> ""
                                                                                  visit5 = 1
                                                                                  SCREEN 13
                                                                                  GOTO fight
                                                                                END IF
                                                                                IF visit5 = 1 THEN GOTO 6
story:
                                                                              SCREEN 11
                                                                              CLS
                                                                              PRINT "And Young Grekken continues his voyage..."
                                                                              PRINT "This is the end of episode one.  Follow Grekken as he goes on in his quest to"
                                                                              PRINT "defeat King Larken and marry the fair princess Karenina in his latter voyages."
                                                                              PRINT "I will definitely make one more episode, and if I get e-mail from people that"
                                                                              PRINT "says they like the game, I'll make two or three more episodes of it.  My e-mail"
                                                                              PRINT "address is..."
                                                                              PRINT
                                                                              PRINT "RAJ79@aol.com"
                                                                              PRINT
                                                                              PRINT "http://members.aol.com/raj79/index.html"
                                                                              PRINT
                                                                              PRINT "My web page   "
                                                                              PRINT
                                                                              PRINT "Thanks for playing..."
                                                                              PRINT
                                                                              PRINT "P.S.  Did you find all the secrets?  There's three of them.  Try to find them."
                                                                              PRINT "P.S.S.  E-mail me and tell me if you would like the later voyages to be done in"
                                                                              PRINT "        VBasic, QBasic 4.5, or QBasic 1.1."
                                                                              PRINT
                                                                                                                                                                                                                                          PRINT "Also, if you e-mail me, you will get your screen name on my web page as masters"
                                                                                                                                                                                                                                          PRINT "of Grekken's Quest because you will not have seen this unless you beat it."



DEFSNG A-Z
SUB fp3
SCREEN 13
x = 0
y = 0

CLS

PAINT (1, 1), 17
LINE (5, 5)-(315, 195), 18, BF

DRAW "bm60,40c20r50d15l30d10r20d15l20d30l20u70"  '
PAINT (61, 41), 20                               ' F
DRAW "bm57,38c21r50d15l30d10r20d15l20d30l20u70"  '
PAINT (58, 40), 21                               '

DRAW "bm130,40c20r50d15l15d40r15d15l50u15r15u40l15u15"  '
PAINT (131, 41), 20                                     ' I
DRAW "bm127,38c21r50d15l15d40r15d15l50u15r15u40l15u15"  '
PAINT (128, 39), 21                                     '

DRAW "bm200,40c20r50d15l30d40r15u10l10u5r25d30l50u70"  '
PAINT (201, 41), 20                                    ' G
DRAW "bm197,38c21r50d15l30d40r15u10l10u5r25d30l50u70"  '
PAINT (198, 39), 21                                    '

SLEEP 1

DO
LINE (155 - x, 150 - y)-(155 + x, 150 + y), 22, BF
x = x + 6: y = y + 1
SOUND 40 + x, .3
LOOP UNTIL x > 120
x = 0: y = 0
DO
LINE (155 - x, 150 - y)-(155 + x, 150 + y), 24, BF
x = x + 7: y = y + 1
SOUND 80 + x, .3
LOOP UNTIL x > 115

words 80, 145, "PROUDLY PRESENTS", 19

FOR d = 1 TO 7000
NEXT d

FOR y = 200 TO 0 STEP -1
LINE (0, y)-(320, y), 17
SOUND 200, .1
NEXT y

FOR y = 200 TO 0 STEP -1
LINE (0, y)-(320, y), 16
SOUND 100, .1
NEXT y
END SUB

SUB space
DIM v AS STRING
DO
    v = INKEY$
LOOP UNTIL v = " "
END SUB

SUB words (x, y, word$, c)
FOR t = 1 TO LEN(word$)
a$ = MID$(word$, t, 1)
COLOR c
SELECT CASE a$
        CASE IS = "A"
        LINE (x - 3, y + 6)-(x - 3, y + 3)
        LINE (x, y)
        LINE (x + 3, y + 3)
        LINE (x + 3, y + 6)
        LINE (x - 3, y + 3)-(x + 3, y + 3)
     
        CASE IS = "B"
        LINE (x - 3, y)-(x + 2, y)
        LINE (x + 3, y + 1)
        LINE (x + 3, y + 2)
        LINE (x + 2, y + 3)
        LINE (x + 3, y + 4)
        LINE (x + 3, y + 5)
        LINE (x + 2, y + 6)
        LINE (x - 3, y + 6)
        LINE (x - 2, y)-(x - 2, y + 6)
        LINE (x - 3, y + 3)-(x + 2, y + 3)
    
        CASE IS = "C"
        LINE (x + 3, y)-(x, y)
        LINE (x - 3, y + 3)
        LINE (x, y + 6)
        LINE (x + 3, y + 6)

        CASE IS = "D"
        LINE (x - 3, y)-(x + 2, y)
        LINE (x + 3, y + 1)
        LINE (x + 3, y + 5)
        LINE (x + 2, y + 6)
        LINE (x - 3, y + 6)
        LINE (x - 2, y)-(x - 2, y + 6)

        CASE IS = "E"
        LINE (x - 3, y)-(x + 3, y)
        LINE (x - 2, y + 3)-(x + 2, y + 3)
        LINE (x - 3, y + 6)-(x + 3, y + 6)
        LINE (x - 2, y)-(x - 2, y + 6)

        CASE IS = "F"
        LINE (x - 3, y)-(x + 3, y)
        LINE (x - 2, y + 3)-(x + 2, y + 3)
        LINE (x - 2, y)-(x - 2, y + 6)
        LINE (x - 3, y + 6)-(x - 1, y + 6)

        CASE IS = "G"
        LINE (x + 3, y + 2)-(x + 3, y)
        LINE (x - 3, y)
        LINE (x - 3, y)-(x - 3, y + 6)
        LINE (x - 3, y + 6)-(x + 3, y + 6)
        LINE (x + 3, y + 4)
        LINE (x + 1, y + 4)

        CASE IS = "H"
        LINE (x - 3, y)-(x - 3, y + 6)
        LINE (x + 3, y)-(x + 3, y + 6)
        LINE (x - 3, y + 3)-(x + 3, y + 3)

        CASE IS = "I"
        LINE (x + 3, y)-(x - 3, y)
        LINE (x, y)-(x, y + 6)
        LINE (x - 3, y + 6)-(x + 3, y + 6)

        CASE IS = "J"
        LINE (x - 3, y)-(x + 3, y)
        LINE (x + 1, y)-(x + 1, y + 6)
        LINE (x - 3, y + 6)
        LINE (x - 3, y + 4)

        CASE IS = "K"
        LINE (x - 3, y)-(x - 2, y)
        LINE (x - 2, y + 6)
        LINE (x - 3, y + 6)
        LINE (x + 3, y)-(x - 1, y + 3)
        LINE (x + 3, y + 6)

        CASE IS = "L"
        LINE (x - 3, y)-(x - 1, y)
        LINE (x - 2, y)-(x - 2, y + 6)
        LINE (x - 3, y + 6)-(x + 3, y + 6)
        LINE (x + 3, y + 5)

        CASE IS = "M"
        LINE (x - 3, y)-(x - 1, y)
        LINE (x + 3, y)-(x + 1, y)
        LINE (x - 3, y)-(x - 3, y + 6)
        LINE (x + 3, y)-(x + 3, y + 6)
        LINE (x - 2, y)-(x, y + 2)
        LINE (x + 2, y)

        CASE IS = "N"
        LINE (x - 3, y)-(x - 1, y)
        LINE (x - 3, y + 6)-(x - 3, y + 6)
        LINE (x - 2, y + 6)-(x - 2, y)
        LINE (x + 2, y + 6)
        LINE (x + 2, y)
        LINE (x + 3, y)-(x + 1, y)
        LINE (x + 3, y + 6)-(x + 3, y + 6)
     
        CASE IS = "O"
        LINE (x - 3, y)-(x + 3, y)
        LINE (x + 3, y + 6)
        LINE (x - 3, y + 6)
        LINE (x - 3, y)
     
        CASE IS = "P"
        LINE (x - 3, y)-(x + 2, y)
        LINE (x + 3, y + 1)
        LINE (x + 3, y + 2)
        LINE (x + 2, y + 3)
        LINE (x - 2, y + 3)
        LINE (x - 2, y)-(x - 2, y + 6)
        LINE (x - 3, y + 6)-(x - 1, y + 6)
     
        CASE IS = "Q"
        LINE (x - 3, y)-(x + 3, y)
        LINE (x + 3, y + 6)
        LINE (x - 3, y + 6)
        LINE (x - 3, y)
        LINE (x + 1, y + 4)-(x + 3, y + 6)
     
        CASE IS = "R"
        LINE (x - 3, y)-(x + 2, y)
        LINE (x + 3, y + 1)
        LINE (x + 3, y + 2)
        LINE (x + 2, y + 3)
        LINE (x - 2, y + 3)
        LINE (x - 2, y)-(x - 2, y + 6)
        LINE (x - 3, y + 6)-(x - 1, y + 6)
        LINE (x + 2, y + 3)-(x + 2, y + 6)
        LINE (x + 1, y + 6)-(x + 3, y + 6)
     
        CASE IS = "S"
        LINE (x + 3, y + 1)-(x + 3, y)
        LINE (x - 3, y)
        LINE (x - 3, y + 3)
        LINE (x + 3, y + 3)
        LINE (x + 3, y + 6)
        LINE (x - 3, y + 6)
        LINE (x - 3, y + 5)
     
        CASE IS = "T"
        LINE (x - 3, y + 1)-(x - 3, y)
        LINE (x + 3, y)
        LINE (x + 3, y + 1)
        LINE (x, y)-(x, y + 6)
        LINE (x - 1, y + 6)-(x + 1, y + 6)
    
        CASE IS = "U"
        LINE (x - 3, y)-(x - 3, y + 6)
        LINE (x + 3, y + 6)
        LINE (x + 3, y)
      
        CASE IS = "V"
        LINE (x - 3, y)-(x - 3, y + 3)
        LINE (x, y + 6)
        LINE (x + 3, y + 3)
        LINE (x + 3, y)

        CASE IS = "W"
        LINE (x - 3, y)-(x - 3, y + 6)
        LINE (x, y + 3)
        LINE (x + 3, y + 6)
        LINE (x + 3, y)
    
        CASE IS = "X"
        LINE (x - 3, y)-(x + 3, y + 6)
        LINE (x + 3, y)-(x - 3, y + 6)
            
        CASE IS = "Y"
        LINE (x - 3, y)-(x, y + 3)
        LINE (x + 3, y)
        LINE (x, y + 3)-(x, y + 6)
        LINE (x - 1, y + 6)-(x + 1, y + 6)
    
        CASE IS = "Z"
        LINE (x - 3, y + 1)-(x - 3, y)
        LINE (x + 3, y)
        LINE (x - 3, y + 6)
        LINE (x + 3, y + 6)
        LINE (x + 3, y + 5)
     
        CASE IS = "'"
        LINE (x - 3, y + 3)-(x, y)
        x = x - 2

        CASE IS = ","
        LINE (x, y + 6)-(x - 3, y + 9)

        CASE IS = "."
        LINE (x - 2, y + 6)-(x - 2, y + 6)

     
     
        END SELECT

x = x + 10
NEXT

END SUB