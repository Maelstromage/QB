'/////////////////////////////////////////////////////////////////////////////
'//                        Rvs inc.                                         //
'//                             Rubic's Cube v0.80                          //
'//                                                                         //
'//                                                                         //
'//   It works good enough. You can only go one direction but if you turn   //
'//   it three times it's like turning it in the opposite direction.        //
'//   Version v1.0 will have all that worked out. If you find any bugs or   //
'//   wish to contact me then email me at Reverse90@cs.com.                 //
'//                                                                         //
'/////////////////////////////////////////////////////////////////////////////

RANDOMIZE TIMER
SCREEN 8, , 1, 0
'GOTO logo

s:
NE = NE + 1
IF NE = 2 THEN GOTO logo
cob = 2
y1 = 49
y3 = 49
y2 = 149
y4 = 149
x1 = 159
x2 = 479
g = 5


FOR a = 0 TO 159 / g + 1
CLS


y1 = 49 + a
y2 = 149 - a
y3 = 49 - a
y4 = 149 + a

x1 = 159 + a * g
x2 = 479 - a * g

x3 = x3
x4 = x4



LINE (x1, y1)-(x1, y2), cob 'left
GOSUB axis


LINE (x2, y3)-(x2, y4), cob 'right
LINE (x1, y1)-(x2, y3), cob 'top
LINE (x1, y2)-(x2, y4), cob 'bottom

'PAINT (319, 99), 15

'line (
PCOPY 1, 0

NEXT a


FOR a = 0 TO 159 / g + 1
CLS

B = 160 / g - a

y1 = INT(49 - B)
y2 = INT(149 + B)
y3 = INT(49 + B)
y4 = INT(149 - B)


x1 = 159 + B * g
x2 = 479 - B * g



LINE (x2, y3)-(x2, y4), cob'right
GOSUB axis
LINE (x1, y1)-(x1, y2), cob'left

LINE (x1, y1)-(x2, y3), cob'top
LINE (x1, y2)-(x2, y4), cob'bottom

'PAINT (319, 99), 15


PCOPY 1, 0
NEXT a


GOTO s


axis:
COLOR 14
LINE (0, 0)-(639, 199), 1, B
SOUND INT(RND * 3000) + 40, 1
LOCATE 2, 42: PRINT "y axis"; y1; ","; y2
LINE (319, 0)-(319, 199), 1
LOCATE 12, 2: PRINT "x axis"; x1; ","; x2
LINE (0, 99)-(639, 99), 1
RETURN
logo:
'r
'LINE (159, 49)-(479, 149), 4, B
LINE (170, 51)-(170, 140), 4
LINE STEP(0, 0)-(200, 99), 4
LINE STEP(0, 0)-(320, 125), 4
LINE STEP(0, 0)-(210, 85), 4
LINE STEP(0, 0)-(270, 65), 4
LINE STEP(0, 0)-(170, 51), 4
'v
LINE (260, 51)-(319, 160), 4
LINE STEP(0, 0)-(378, 51), 4
LINE STEP(0, 0)-(319, 110), 4
LINE STEP(0, 0)-(260, 51), 4
's
LINE (470, 75)-(420, 55), 4
LINE STEP(0, 0)-(340, 75), 4
LINE STEP(0, 0)-(430, 125), 4
LINE STEP(0, 0)-(340, 115), 4
LINE STEP(0, 0)-(420, 145), 4
LINE STEP(0, 0)-(475, 125), 4
LINE STEP(0, 0)-(390, 80), 4
LINE STEP(0, 0)-(420, 70), 4
LINE STEP(0, 0)-(470, 75), 4
COLOR 4
LOCATE 18, 56: PRINT "inc."
'PAINT (171, 52), 4, 4

PCOPY 1, 0
DO WHILE INKEY$ = "": LOOP








SCREEN 7, 0, 1, 0
'init
PRINT "Rubik's Cube v0.80"
picvalue = 5000
DIM pic(1 TO picvalue)
DIM move$(1 TO 1000)
'red=4 white=15 green=2 blue=1 yellow=14 orange=6
a = 1
s1 = 4
s2 = 15
s3 = 2
s4 = 1
s5 = 14
s6 = 12
bd = 8'boarder color

start:
s1.1 = s1
s1.2 = s1
s1.3 = s1
s1.4 = s1
s1.5 = s1
s1.6 = s1
s1.7 = s1
s1.8 = s1
s1.9 = s1

s2.1 = s2
s2.2 = s2
s2.3 = s2
s2.4 = s2
s2.5 = s2
s2.6 = s2
s2.7 = s2
s2.8 = s2
s2.9 = s2

s3.1 = s3
s3.2 = s3
s3.3 = s3
s3.4 = s3
s3.5 = s3
s3.6 = s3
s3.7 = s3
s3.8 = s3
s3.9 = s3

s4.1 = s4
s4.2 = s4
s4.3 = s4
s4.4 = s4
s4.5 = s4
s4.6 = s4
s4.7 = s4
s4.8 = s4
s4.9 = s4

s5.1 = s5
s5.2 = s5
s5.3 = s5
s5.4 = s5
s5.5 = s5
s5.6 = s5
s5.7 = s5
s5.8 = s5
s5.9 = s5

s6.1 = s6
s6.2 = s6
s6.3 = s6
s6.4 = s6
s6.5 = s6
s6.6 = s6
s6.7 = s6
s6.8 = s6
s6.9 = s6


LOCATE 24, 1: PRINT "Press any key when ready";
PCOPY 1, 0

DO WHILE INKEY$ = "": LOOP

format1: '3 dimension front and 3 dimension back
CLS


LOCATE 2, 21: PRINT "Type # for move..."
LOCATE 3, 21: PRINT "1 Rotates side 1"
LOCATE 4, 21: PRINT "2 Rotates side 2"
LOCATE 5, 21: PRINT "3 Rotates side 3"
LOCATE 6, 21: PRINT "4 Rotates side 4"
LOCATE 7, 21: PRINT "5 Rotates side 5"
LOCATE 8, 21: PRINT "6 Rotates side 6"
LOCATE 9, 21: PRINT "7 Middle between 3&5"
LOCATE 10, 21: PRINT "8 Middle between 2&4"
LOCATE 11, 21: PRINT "9 Middle between 1&6"
LOCATE 14, 2: PRINT "F1 Undo"
LOCATE 15, 2: PRINT "F2 Mix"



LINE (159, 0)-(159, 199), bd 'screen boarders
LINE (0, 99)-(319, 99), bd
LINE (0, 0)-(319, 199), bd, B

LINE (20, 24)-(79, 2), bd  'outside top lines
LINE (139, 24)-(79, 2), bd

LINE (20, 24)-(20, 74), bd 'outside middle lines
LINE (139, 24)-(139, 74), bd

LINE (20, 74)-(79, 97), bd 'outside bottom lines
LINE (139, 74)-(79, 97), bd

LINE (20, 24)-(79, 50), bd 'inside Y shape lines
LINE (79, 97)-(79, 50), bd
LINE (139, 24)-(79, 50), bd

LINE (60, 9)-(119, 31), bd 'inside top left to right lines
LINE (40, 17)-(99, 40), bd

LINE (99, 9)-(39, 32), bd 'inside top right to left lines
LINE (119, 17)-(60, 40), bd

LINE (39, 32)-(39, 81), bd 'inside left top to bottom lines
LINE (60, 40)-(60, 89), bd

LINE (99, 40)-(99, 89), bd 'inside right top to bottom lines
LINE (119, 31)-(119, 81), bd

LINE (20, 41)-(79, 66), bd 'inside left, left to right lines
LINE (20, 57)-(79, 82), bd

LINE (139, 41)-(79, 66), bd'inside right, left to right lines
LINE (139, 57)-(79, 82), bd

LOCATE 2, 5: PRINT "6"
LOCATE 12, 15: PRINT "4"
LOCATE 12, 6: PRINT "5"


GET (1, 1)-(158, 98), pic
PUT (160, 100), pic, OR


LOCATE 2, 5: PRINT "1"
LOCATE 12, 15: PRINT "3"
LOCATE 12, 6: PRINT "2"


'         .           side 1 is the top of the cube
'        /3\          it is labeled 1 to 9 at the top
'      /2\ /6\        the left and right sides are
'   ./1\ /5\ /9\.     s2.1-9 and s3.1-9 respectively
'   |\ /4\ /8\ /|
'   |1|\ /7\ /|3|
'   |\|2|\./|2|/|
'   |4|\|3|1|/|6|
'   |\|5|\|/|5|/|
'   |7|\|6|4|/|9|
'    \|8|\|/|8|/
'      \|9|7|/
'        \|/
'         `
main:
GOSUB colorcube
GOSUB move
GOTO main
END

colorcube:

PAINT (39, 24), s1.1, bd 'top side
PAINT (59, 11), s1.2, bd
PAINT (79, 4), s1.3, bd
PAINT (59, 34), s1.4, bd
PAINT (79, 24), s1.5, bd
PAINT (99, 14), s1.6, bd
PAINT (79, 34), s1.7, bd
PAINT (99, 31), s1.8, bd
PAINT (119, 24), s1.9, bd

PAINT (21, 35), s2.1, bd 'left side
PAINT (49, 41), s2.2, bd
PAINT (75, 55), s2.3, bd
PAINT (21, 54), s2.4, bd
PAINT (49, 64), s2.5, bd
PAINT (75, 69), s2.6, bd
PAINT (21, 67), s2.7, bd
PAINT (49, 79), s2.8, bd
PAINT (75, 87), s2.9, bd

PAINT (121, 35), s3.3, bd 'right side
PAINT (115, 41), s3.2, bd
PAINT (85, 55), s3.1, bd
PAINT (121, 54), s3.6, bd
PAINT (115, 64), s3.5, bd
PAINT (85, 69), s3.4, bd
PAINT (121, 67), s3.9, bd
PAINT (115, 79), s3.8, bd
PAINT (85, 87), s3.7, bd

PAINT (39 + 159, 24 + 99), s6.1, bd '2nd cube top side
PAINT (59 + 159, 11 + 99), s6.2, bd
PAINT (79 + 159, 4 + 99), s6.3, bd
PAINT (59 + 159, 34 + 99), s6.4, bd
PAINT (79 + 159, 24 + 99), s6.5, bd
PAINT (99 + 159, 14 + 99), s6.6, bd
PAINT (79 + 159, 34 + 99), s6.7, bd
PAINT (99 + 159, 31 + 99), s6.8, bd
PAINT (119 + 159, 24 + 99), s6.9, bd

PAINT (21 + 159, 35 + 99), s5.1, bd '2nd cube left side
PAINT (49 + 159, 41 + 99), s5.2, bd
PAINT (75 + 159, 55 + 99), s5.3, bd
PAINT (21 + 159, 54 + 99), s5.4, bd
PAINT (49 + 159, 64 + 99), s5.5, bd
PAINT (75 + 159, 69 + 99), s5.6, bd
PAINT (21 + 159, 67 + 99), s5.7, bd
PAINT (49 + 159, 79 + 99), s5.8, bd
PAINT (75 + 159, 87 + 99), s5.9, bd

PAINT (121 + 159, 35 + 99), s4.3, bd'2nd cube right side
PAINT (115 + 159, 41 + 99), s4.2, bd
PAINT (85 + 159, 55 + 99), s4.1, bd
PAINT (121 + 159, 54 + 99), s4.6, bd
PAINT (115 + 159, 64 + 99), s4.5, bd
PAINT (85 + 159, 69 + 99), s4.4, bd
PAINT (121 + 159, 67 + 99), s4.9, bd
PAINT (115 + 159, 79 + 99), s4.8, bd
PAINT (85 + 159, 87 + 99), s4.7, bd

IF auto = 1 AND a = 3 THEN PCOPY 1, 0
IF auto = 0 THEN PCOPY 1, 0
RETURN

move:
IF auto <> 1 THEN mv$ = INKEY$
IF auto <> 1 AND mv$ = "" THEN GOTO move
IF auto <> 1 THEN move$(a) = mv$
IF auto <> 1 THEN a = a + 1
IF mv$ = CHR$(0) + ";" AND a > 2 THEN
    a = a - 2
    auto = 1
    mv$ = move$(a)
    B = 0
END IF
IF auto = 1 THEN B = B + 1
IF B = 3 THEN auto = 0
IF mv$ = CHR$(27) THEN END

'IF mv$ = CHR$(0) + "?" THEN
'    CLS


IF mv$ = "1" THEN
    s7.1 = s1.1
    s7.2 = s1.2
    s7.3 = s1.3
    s7.4 = s1.4
    s7.5 = s1.5
    s7.6 = s1.6
    s7.7 = s1.7
    s7.8 = s1.8
    s7.9 = s1.9
    s8.1 = s2.1
    s8.2 = s2.2
    s8.3 = s2.3
    s9.1 = s3.1
    s9.2 = s3.2
    s9.3 = s3.3
    s10.1 = s4.9
    s10.2 = s4.8
    s10.3 = s4.7
    s11.1 = s5.9
    s11.2 = s5.8
    s11.3 = s5.7
    s1.1 = s7.7
    s1.2 = s7.4
    s1.3 = s7.1
    s1.4 = s7.8
    s1.5 = s7.5
    s1.6 = s7.2
    s1.7 = s7.9
    s1.8 = s7.6
    s1.9 = s7.3
    s2.1 = s9.1
    s2.2 = s9.2
    s2.3 = s9.3
    s3.1 = s10.1
    s3.2 = s10.2
    s3.3 = s10.3
    s4.9 = s11.1
    s4.8 = s11.2
    s4.7 = s11.3
    s5.9 = s8.1
    s5.8 = s8.2
    s5.7 = s8.3
END IF
IF mv$ = "2" THEN
    s7.1 = s2.1
    s7.2 = s2.2
    s7.3 = s2.3
    s7.4 = s2.4
    s7.5 = s2.5
    s7.6 = s2.6
    s7.7 = s2.7
    s7.8 = s2.8
    s7.9 = s2.9
    s8.1 = s1.1
    s8.2 = s1.4
    s8.3 = s1.7
    s9.1 = s3.1
    s9.2 = s3.4
    s9.3 = s3.7
    s10.1 = s6.3
    s10.2 = s6.2
    s10.3 = s6.1
    s11.1 = s5.1
    s11.2 = s5.4
    s11.3 = s5.7
    s2.1 = s7.7
    s2.2 = s7.4
    s2.3 = s7.1
    s2.4 = s7.8
    s2.5 = s7.5
    s2.6 = s7.2
    s2.7 = s7.9
    s2.8 = s7.6
    s2.9 = s7.3
    s1.1 = s11.1
    s1.4 = s11.2
    s1.7 = s11.3
    s3.1 = s8.1
    s3.4 = s8.2
    s3.7 = s8.3
    s6.3 = s9.1
    s6.2 = s9.2
    s6.1 = s9.3
    s5.1 = s10.1
    s5.4 = s10.2
    s5.7 = s10.3
END IF
IF mv$ = "3" THEN
    s7.1 = s3.1
    s7.2 = s3.2
    s7.3 = s3.3
    s7.4 = s3.4
    s7.5 = s3.5
    s7.6 = s3.6
    s7.7 = s3.7
    s7.8 = s3.8
    s7.9 = s3.9
    s8.1 = s1.7
    s8.2 = s1.8
    s8.3 = s1.9
    s9.1 = s4.9
    s9.2 = s4.6
    s9.3 = s4.3
    s10.1 = s6.9
    s10.2 = s6.6
    s10.3 = s6.3
    s11.1 = s2.9
    s11.2 = s2.6
    s11.3 = s2.3
    s3.1 = s7.7
    s3.2 = s7.4
    s3.3 = s7.1
    s3.4 = s7.8
    s3.5 = s7.5
    s3.6 = s7.2
    s3.7 = s7.9
    s3.8 = s7.6
    s3.9 = s7.3
    s1.7 = s11.1
    s1.8 = s11.2
    s1.9 = s11.3
    s4.9 = s8.1
    s4.6 = s8.2
    s4.3 = s8.3
    s6.9 = s9.1
    s6.6 = s9.2
    s6.3 = s9.3
    s2.9 = s10.1
    s2.6 = s10.2
    s2.3 = s10.3
END IF
IF mv$ = "6" THEN
    s7.1 = s6.1
    s7.2 = s6.2
    s7.3 = s6.3
    s7.4 = s6.4
    s7.5 = s6.5
    s7.6 = s6.6
    s7.7 = s6.7
    s7.8 = s6.8
    s7.9 = s6.9
    s8.1 = s5.1
    s8.2 = s5.2
    s8.3 = s5.3
    s9.1 = s4.1
    s9.2 = s4.2
    s9.3 = s4.3
    s10.1 = s3.9
    s10.2 = s3.8
    s10.3 = s3.7
    s11.1 = s2.9
    s11.2 = s2.8
    s11.3 = s2.7
    s6.1 = s7.7
    s6.2 = s7.4
    s6.3 = s7.1
    s6.4 = s7.8
    s6.5 = s7.5
    s6.6 = s7.2
    s6.7 = s7.9
    s6.8 = s7.6
    s6.9 = s7.3
    s5.1 = s9.1
    s5.2 = s9.2
    s5.3 = s9.3
    s4.1 = s10.1
    s4.2 = s10.2
    s4.3 = s10.3
    s3.9 = s11.1
    s3.8 = s11.2
    s3.7 = s11.3
    s2.9 = s8.1
    s2.8 = s8.2
    s2.7 = s8.3
END IF
IF mv$ = "5" THEN
    s7.1 = s5.1
    s7.2 = s5.2
    s7.3 = s5.3
    s7.4 = s5.4
    s7.5 = s5.5
    s7.6 = s5.6
    s7.7 = s5.7
    s7.8 = s5.8
    s7.9 = s5.9
    s8.1 = s6.1
    s8.2 = s6.4
    s8.3 = s6.7
    s9.1 = s4.1
    s9.2 = s4.4
    s9.3 = s4.7
    s10.1 = s1.3
    s10.2 = s1.2
    s10.3 = s1.1
    s11.1 = s2.1
    s11.2 = s2.4
    s11.3 = s2.7
    s5.1 = s7.7
    s5.2 = s7.4
    s5.3 = s7.1
    s5.4 = s7.8
    s5.5 = s7.5
    s5.6 = s7.2
    s5.7 = s7.9
    s5.8 = s7.6
    s5.9 = s7.3
    s6.1 = s11.1
    s6.4 = s11.2
    s6.7 = s11.3
    s4.1 = s8.1
    s4.4 = s8.2
    s4.7 = s8.3
    s1.3 = s9.1
    s1.2 = s9.2
    s1.1 = s9.3
    s2.1 = s10.1
    s2.4 = s10.2
    s2.7 = s10.3
END IF
IF mv$ = "4" THEN
    s7.1 = s4.1
    s7.2 = s4.2
    s7.3 = s4.3
    s7.4 = s4.4
    s7.5 = s4.5
    s7.6 = s4.6
    s7.7 = s4.7
    s7.8 = s4.8
    s7.9 = s4.9
    s8.1 = s6.7
    s8.2 = s6.8
    s8.3 = s6.9
    s9.1 = s3.9
    s9.2 = s3.6
    s9.3 = s3.3
    s10.1 = s1.9
    s10.2 = s1.6
    s10.3 = s1.3
    s11.1 = s5.9
    s11.2 = s5.6
    s11.3 = s5.3
    s4.1 = s7.7
    s4.2 = s7.4
    s4.3 = s7.1
    s4.4 = s7.8
    s4.5 = s7.5
    s4.6 = s7.2
    s4.7 = s7.9
    s4.8 = s7.6
    s4.9 = s7.3
    s6.7 = s11.1
    s6.8 = s11.2
    s6.9 = s11.3
    s3.9 = s8.1
    s3.6 = s8.2
    s3.3 = s8.3
    s1.9 = s9.1
    s1.6 = s9.2
    s1.3 = s9.3
    s5.9 = s10.1
    s5.6 = s10.2
    s5.3 = s10.3
END IF
IF mv$ = "7" THEN
    s8.1 = s1.2
    s8.2 = s1.5
    s8.3 = s1.8
    s9.1 = s3.2
    s9.2 = s3.5
    s9.3 = s3.8
    s10.1 = s6.6
    s10.2 = s6.5
    s10.3 = s6.4
    s11.1 = s5.2
    s11.2 = s5.5
    s11.3 = s5.8
    s1.2 = s11.1
    s1.5 = s11.2
    s1.8 = s11.3
    s3.2 = s8.1
    s3.5 = s8.2
    s3.8 = s8.3
    s6.6 = s9.1
    s6.5 = s9.2
    s6.4 = s9.3
    s5.2 = s10.1
    s5.5 = s10.2
    s5.8 = s10.3
END IF
IF mv$ = "8" THEN
    s8.1 = s1.4
    s8.2 = s1.5
    s8.3 = s1.6
    s9.1 = s4.8
    s9.2 = s4.5
    s9.3 = s4.2
    s10.1 = s6.8
    s10.2 = s6.5
    s10.3 = s6.2
    s11.1 = s2.8
    s11.2 = s2.5
    s11.3 = s2.2
    s1.4 = s11.1
    s1.5 = s11.2
    s1.6 = s11.3
    s4.8 = s8.1
    s4.5 = s8.2
    s4.2 = s8.3
    s6.8 = s9.1
    s6.5 = s9.2
    s6.2 = s9.3
    s2.8 = s10.1
    s2.5 = s10.2
    s2.2 = s10.3
END IF
IF mv$ = "9" THEN
    s8.1 = s2.4
    s8.2 = s2.5
    s8.3 = s2.6
    s9.1 = s3.4
    s9.2 = s3.5
    s9.3 = s3.6
    s10.1 = s4.6
    s10.2 = s4.5
    s10.3 = s4.4
    s11.1 = s5.6
    s11.2 = s5.5
    s11.3 = s5.4
    s2.4 = s9.1
    s2.5 = s9.2
    s2.6 = s9.3
    s3.4 = s10.1
    s3.5 = s10.2
    s3.6 = s10.3
    s4.6 = s11.1
    s4.5 = s11.2
    s4.4 = s11.3
    s5.6 = s8.1
    s5.5 = s8.2
    s5.4 = s8.3
END IF

RETURN