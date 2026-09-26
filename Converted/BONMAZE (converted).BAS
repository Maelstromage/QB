SCREEN 7
CLS
b = 50250&
DIM mz$(15)

start:
 GOSUB blink
 GOSUB options
 GOSUB boarder
 
END

blink:
 DO WHILE z <> 3
  z = z + 1
  COLOR , 15
   FOR a = 1 TO b
   NEXT a
  COLOR , 1
   FOR a = 1 TO b
   NEXT a
  COLOR , 4
   FOR a = 1 TO b
   NEXT a
 LOOP
RETURN

boarder:
 CLS
 COLOR 15, 2
 GOSUB mazebank
 IF dif = 1 THEN GOSUB boarder1
 IF dif = 2 THEN GOSUB boarder2
 IF dif = 3 THEN GOSUB boarder3

boarder1:
RETURN
boarder2:
RETURN
boarder3:
 cmb = VAL(MID$(mz$(mx - 1), my - 1, 1))


RETURN



RETURN

mazebank:
GOSUB maze1

maze1:
'        1   5    10   1517
'        |   |    |    | |
 mx = 1
 my = 6
 mz$(0) = "00000000000000000"
 mz$(1) = "11111011111111111"
 mz$(2) = "12001010001002101"
 mz$(3) = "10101010101010101"
 mz$(4) = "10101010101010001"
 mz$(5) = "10101000100010101"
 mz$(6) = "10101111101110101"
 mz$(7) = "10100000001000101"
 mz$(8) = "10111111111011101"
 mz$(9) = "10001000100000101"
mz$(10) = "11101011111110101"
mz$(11) = "10001010000010001"
mz$(12) = "10111111101010111"
mz$(13) = "10000000100002001"
mz$(14) = "11111110111111111"




RETURN

RETURN

options:
 COLOR 15, 4
  PRINT "press 1-3 for skill level"
  PRINT "1...tard"
  PRINT "2...IQ 70"
  PRINT "3...PIMP!"
PRINT
PRINT
cmoptions:
INPUT "choose"; dif
IF dif > 3 THEN GOTO cmoptions


RETURN