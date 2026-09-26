p = 1
REM RUSSIAN ROLET
SCREEN 7
GOSUB sceen
GOTO s
sceen:
'head
CIRCLE (200, 50), 15
CIRCLE (50, 50), 15
'body
LINE (200, 63)-(200, 100)
LINE STEP(0, 0)-(170, 100)
LINE STEP(0, 0)-(170, 130)
LINE STEP(0, 0)-(160, 130)
LINE (50, 63)-(50, 100)
LINE STEP(0, 0)-(80, 100)
LINE STEP(0, 0)-(80, 130)
LINE STEP(0, 0)-(90, 130)
LINE (70, 80)-(180, 90), , BF

'eyes
LINE (190, 45)-(190, 48)
LINE (60, 45)-(60, 48)
RETURN

s: fi$ = INKEY$
IF fi$ = CHR$(27) THEN END
IF fi$ = "" THEN GOTO s
IF p = 1 THEN GOSUB spin1
IF p = 2 THEN GOSUB spin2
sp = INT(RND * 6) + 1
SLEEP 1
IF p = 1 THEN GOSUB cring1
IF p = 2 THEN GOSUB cring2
'SLEEP 1
'IF sp = 6 AND p = 1 THEN GOSUB death1
'IF sp = 6 AND p = 2 THEN GOSUB death2

IF p = 1 THEN p = 2: GOTO s
IF p = 2 THEN p = 1: GOTO s


spin1:
LINE (200, 70)-(150, 70)
'gun
LINE (155, 73)-(155, 67)
LINE STEP(0, 0)-(140, 67)

RETURN
spin2:
LINE (50, 70)-(100, 70)
'gun
LINE (95, 73)-(95, 67)
LINE STEP(0, 0)-(110, 67)
RETURN

cring1:
LINE (190, 45)-(190, 48), 0
LINE (190, 48)-(195, 48), 15
LINE (190, 48)-(193, 50)
LINE (190, 48)-(193, 46)
DRAW "bd10 bl5 rrrffdgg"

LINE (199, 70)-(150, 70), 0
'gun
LINE (155, 73)-(155, 67), 0
LINE STEP(0, 0)-(140, 67), 0
LINE (200, 70)-(175, 80)
LINE STEP(0, 0)-(183, 65)
DRAW "bd2 llrrfr"
LINE STEP(0, 0)-(190, 58)
RETURN

cring2:
LINE (40, 45)-(40, 48), 0
LINE (190, 48)-(195, 48), 15
LINE (190, 48)-(193, 50)
LINE (190, 48)-(193, 46)
DRAW "bd10 bl5 rrrffdgg"

LINE (199, 70)-(150, 70), 0
'gun
LINE (155, 73)-(155, 67), 0
LINE STEP(0, 0)-(140, 67), 0
LINE (200, 70)-(175, 80)
LINE STEP(0, 0)-(183, 65)
DRAW "bd2 llrrfr"
LINE STEP(0, 0)-(190, 58)
RETURN

