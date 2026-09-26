SCREEN 8, , 1, 0


c1 = 4
c2 = 1


s:
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



LINE (x1, y1)-(x1, y2), c1 'left
GOSUB axis


LINE (x2, y3)-(x2, y4), c2 'right
LINE (x1, y1)-(x2, y3), 14 'top
LINE (x1, y2)-(x2, y4), 2 'bottom

'PAINT (319, 99), 15

'line (
PCOPY 1, 0

NEXT a


FOR a = 0 TO 159 / g + 1
CLS

b = 160 / g - a

y1 = INT(49 - b)
y2 = INT(149 + b)
y3 = INT(49 + b)
y4 = INT(149 - b)


x1 = 159 + b * g
x2 = 479 - b * g



LINE (x2, y3)-(x2, y4), c1'right
GOSUB axis
LINE (x1, y1)-(x1, y2), c2'left

LINE (x1, y1)-(x2, y3), 14'top
LINE (x1, y2)-(x2, y4), 2'bottom

'PAINT (319, 99), 15


PCOPY 1, 0
NEXT a

SWAP c1, c2
GOTO s


axis:



LOCATE 1, 42: PRINT "y axis"; y1; ","; y2
LINE (319, 0)-(319, 199), 7
LOCATE 12, 1: PRINT "x axis"; x1; ","; x2
LINE (0, 99)-(639, 99), 7
RETURN