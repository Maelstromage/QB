S: CLS
SCREEN 8
RANDOMIZE TIMER
FOR a = 1 TO INT(RND * 50) + 1


CIRCLE (INT(RND * 640), INT(RND * 200)), INT(RND * 105) + 6, INT(RND * 15) + 1







NEXT

INPUT "how many circles are there?"; gu
IF gu = a - 1 THEN GOTO win
PRINT "nope your a loser"
GOTO S
SYSTEM
win:
FOR C = 1 TO 100
CIRCLE (320, 100), C * 4, INT(RND * 15) + 1
SOUND (C * 5) + 37, 1
NEXT
PRINT "YOU WIN!!!!"

