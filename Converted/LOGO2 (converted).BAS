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