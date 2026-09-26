SCREEN 8
b = 39
c = 19
FOR d = 1 TO 10
FOR a = 1 TO 16
LINE (e, f)-(b, c), , B
b = b + 40
e = e + 40
NEXT a
b = 39
e = 0
c = c + 20
f = f + 20
NEXT d
DO WHILE INKEY$ = "": LOOP