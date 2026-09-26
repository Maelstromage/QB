TYPE BLOCK
  cell AS INTEGER
  x AS INTEGER
  y AS INTEGER
  up AS INTEGER
  down AS INTEGER
  left AS INTEGER
  right AS INTEGER
  upLeft AS INTEGER
  upRight AS INTEGER
  downleft AS INTEGER
  downRight AS INTEGER
END TYPE

TYPE regtype
    ax AS INTEGER
    bx AS INTEGER
    cx AS INTEGER
    dx AS INTEGER
    bp AS INTEGER
    si AS INTEGER
    di AS INTEGER
    flags AS INTEGER
    ds AS INTEGER
    es AS INTEGER
END TYPE

DIM SHARED regs AS regtype
REDIM SHARED intrpt(1 TO 50) AS INTEGER

CONST sz = 10
CONST elements = 64 * 35
CONST chance = 7
DIM SHARED node(elements) AS BLOCK

DEF SEG = VARSEG(intrpt(1))
address = VARPTR(intrpt(1))

FOR I% = 0 TO 99
    READ a%
    POKE address + I%, a%
NEXT I%

'****************************************************************************

RANDOMIZE TIMER
CLS
CALL openScreen
CALL initNode
COLOR 7, 0
CLS
DO UNTIL done%
  SCREEN 0
  in$ = ""
  pick% = mainMenu%
  SCREEN 9, , 1, 0
  SELECT CASE pick%
    CASE 0
      CALL patience
      CALL getLit
    CASE 1
      CALL miceShow
      CALL getUserLit
      CALL patience
    CASE 2
      BEEP
      in$ = "rerun"
    CASE 3
      done% = 1
      in$ = "Done"
  END SELECT
  DO UNTIL in$ <> ""
    CALL lightCell(in$)
    CALL newAge(in$)
    PCOPY 1, 0
  LOOP
LOOP

COLOR 7, 0
SCREEN 0
END
'****************************************************************************
DATA 85
DATA 139,236
DATA 86
DATA 87
DATA 30
DATA 139,118,6
DATA 139,4
DATA 139,92,2
DATA 139,76,4
DATA 139,84,6
DATA 139,108,8
DATA 139,124,12
DATA 142,68,18
DATA 255,116,10
DATA 131,124,18,255
DATA 117,2
DATA 30
DATA 7

DATA 131,124,16,255
DATA 116,3
DATA 142,92,16

DATA 94
DATA 205,33
DATA 85
DATA 139,236
DATA 30
DATA 86
DATA 142,94,2
DATA 139,118,14
DATA 137,4
DATA 137,92,2
DATA 137,76,4
DATA 137,84,6
DATA 143,68,10
DATA 143,68,16
DATA 143,68,8
DATA 137,124,12
DATA 140,68,18
DATA 156
DATA 143,68,14
DATA 95
DATA 95
DATA 94
DATA 93
DATA 202,2,0

FUNCTION getDown% (index%)

forw% = index% + 64

IF forw% <= elements THEN
  getDown% = forw%
ELSE
  getDown% = forw% - elements
END IF

END FUNCTION

FUNCTION getleft% (index%)

col% = index% MOD 64

IF col% <> 1 THEN
  getleft% = index% - 1
ELSE
  getleft% = index% + 63
END IF


END FUNCTION

SUB getLit

FOR count% = 1 TO elements
  lit% = INT(RND * chance)
  IF lit% = 0 THEN
    node(count%).cell = -1
  ELSE
    node(count%).cell = 0
    END IF
NEXT count%

END SUB

FUNCTION getNum% (x%, y%)

x% = (x% + 10) \ 10

y% = (y% \ 10) * 64

getNum% = x% + y%

END FUNCTION

FUNCTION getRight% (index%)

col% = index% MOD 64

IF col% <> 0 THEN
  getRight% = index% + 1
ELSE
  getRight% = index% - 63
END IF

END FUNCTION

FUNCTION getUp% (index%)

back% = index% - 64

IF back% > 0 THEN
  getUp% = back%
ELSE
  getUp% = back% + elements
END IF

END FUNCTION

SUB getUserLit
FOR count% = 1 TO elements
    node(count%).cell = 0
NEXT count%

DO
  press$ = INKEY$
  SELECT CASE LEN(press$)
    CASE 0
      CALL micePressed(buttonPress%, numTimes%, xMouse%, yMouse%)
        IF numTimes% THEN
          num% = getNum%(xMouse%, yMouse%)
          CALL miceHide
          IF node(num%).cell THEN
            node(num%).cell = 0
            LINE (node(num%).x, node(num%).y)-(node(num%).x + 10, node(num%).y + 10), 0, BF
            PCOPY 1, 0
          ELSE
            node(num%).cell = -1
            LINE (node(num%).x, node(num%).y)-(node(num%).x + 10, node(num%).y + 10), 15, BF
            PCOPY 1, 0
          END IF
          CALL miceShow
        END IF
    CASE 1
      IF press$ = CHR$(13) OR press$ = CHR$(27) THEN EXIT DO
  END SELECT
LOOP
CALL miceHide
CLS
END SUB

SUB initNode

FOR count% = 0 TO 34
  FOR cnt% = 0 TO 63
    index% = index% + 1
    node(index%).x = cnt% * sz
    node(index%).y = count% * sz
    node(index%).up = getUp%(index%)
    node(index%).down = getDown%(index%)
    node(index%).left = getleft%(index%)
    node(index%).right = getRight%(index%)
    node(index%).upLeft = getUp%(getleft%(index%))
    node(index%).upRight = getUp%(getRight%(index%))
    node(index%).downleft = getDown%(getleft%(index%))
    node(index%).downRight = getDown%(getRight%(index%))
  NEXT cnt%
NEXT count%

END SUB

SUB interrupt (intnum%, regs AS regtype)

    DEF SEG = VARSEG(intrpt(1))
    address = VARPTR(intrpt(1))
    POKE address + 51, intnum%

    CALL absolute(regs, address)

END SUB

SUB lightCell (in$)

FOR count% = 1 TO elements
  IF node(count%).cell THEN
    LINE (node(count%).x, node(count%).y)-(node(count%).x + sz, node(count%).y + sz), 15, BF
  ELSE
    LINE (node(count%).x, node(count%).y)-(node(count%).x + sz, node(count%).y + sz), 0, BF
  END IF
  in$ = INKEY$
  IF in$ <> "" THEN EXIT SUB
NEXT count%
END SUB

FUNCTION mainMenu%

DIM choice(3) AS STRING

heading$ = "QLIFE"
choice(0) = "Random Cell Selection"
choice(1) = "User Cell Selection  "
choice(2) = "                     "
choice(3) = "Exit Program         "

row% = 9

headLength% = LEN(heading$)
col% = (80 - LEN(choice(0))) / 2

COLOR 7, 0
FOR count% = row% + 3 TO row% + 2 + UBOUND(choice)
  num% = num% + 1
  LOCATE row% + 2 + num%, col%
  PRINT choice(num%)
NEXT count%

COLOR 15, 0
LOCATE row%, (80 - headLength%) / 2: PRINT heading$

menuNum% = 0
row% = row% + 2

COLOR 0, 7: LOCATE row%, col%: PRINT choice(0)
DO
  keyPress$ = INKEY$
  SELECT CASE LEN(keyPress$)
  CASE 1
    IF keyPress$ = CHR$(13) THEN EXIT DO
  CASE 2
    SELECT CASE RIGHT$(keyPress$, 1)
      CASE "P" 'down
        IF menuNum% < 3 THEN
          COLOR 7, 0
          LOCATE row%, col%
          PRINT choice(menuNum%)
          COLOR 0, 7
          row% = row% + 1
          menuNum% = menuNum% + 1
          LOCATE row%, col%
          PRINT choice(menuNum%)
        END IF
      CASE "H" 'up
        IF menuNum% > 0 THEN
          COLOR 7, 0
          LOCATE row%, col%
          PRINT choice(menuNum%)
          COLOR 0, 7
          row% = row% - 1
          menuNum% = menuNum% - 1
          LOCATE row%, col%
          PRINT choice(menuNum%)
        END IF
    END SELECT
  END SELECT
LOOP

mainMenu% = menuNum%

COLOR 7, 0

END FUNCTION

SUB miceHide
   
    regs.ax = 2
    regs.bx = 0
    regs.cx = 0
    regs.dx = 0
  
    CALL interrupt(&H33, regs)


END SUB

SUB micePressed (buttonPress%, numTimes%, xMouse%, yMouse%)

' if buttonPress% passed as 0 then info returned applies to left button
' if buttonPress% passed as 1 then info returned applies to right button


    regs.ax = 5
    regs.bx = buttonPress%
    regs.cx = 0
    regs.dx = 0

    CALL interrupt(&H33, regs)

    buttonPress% = regs.ax 'if 1 returned left pressed since last call
                           'if 2 returned right pressed since last call
                           'if 3 returned both pressed since last call

    numTimes% = regs.bx   'depends on buttonPress% passed as 0 (left) or
                          '1 (right)
   
    xMouse% = regs.cx     ' see ^
    yMouse% = regs.dx     ' see ^

END SUB

FUNCTION miceReset%
   
    regs.ax = 0
    regs.bx = 0
    regs.cx = 0
    regs.dx = 0
  
    CALL interrupt(&H33, regs)

    miceReset% = regs.ax

END FUNCTION

SUB miceShow
   
    regs.ax = 1
    regs.bx = 0
    regs.cx = 0
    regs.dx = 0
   
    CALL interrupt(&H33, regs)

END SUB

SUB newAge (in$)

DIM alive(1 TO elements) AS INTEGER

FOR count% = 1 TO elements
  in$ = INKEY$: IF in$ <> "" THEN EXIT SUB
  IF node(node(count%).upLeft).cell THEN onn% = onn% + 1
  IF node(node(count%).up).cell THEN onn% = onn% + 1
  IF node(node(count%).upRight).cell THEN onn% = onn% + 1
  IF node(node(count%).left).cell THEN onn% = onn% + 1
  IF node(node(count%).right).cell THEN onn% = onn% + 1
  IF node(node(count%).downleft).cell THEN onn% = onn% + 1
  IF node(node(count%).down).cell THEN onn% = onn% + 1
  IF node(node(count%).downRight).cell THEN onn% = onn% + 1
 
 
  IF node(count%).cell THEN
    IF onn% <> 2 AND onn% <> 3 THEN
      alive(count%) = 0
    ELSE
      alive(count%) = -1
    END IF
  ELSE
    IF onn% = 3 THEN alive(count%) = -1
  END IF
  onn% = 0
NEXT count%

FOR count% = 1 TO elements
  node(count%).cell = alive(count%)
NEXT count%

END SUB

SUB openScreen
title$ = "QLIFE.BAS"
by$ = "by"
me$ = "Jim Golston,"
aol$ = "AOL screen-name: JimCG1"
freely$ = "Freely distributed without restriction."

lenTitle% = LEN(title$)
lenBy% = LEN(by$)
lenMe% = LEN(me$)
lenAol% = LEN(aol$)
lenFreely% = LEN(freely$)

COLOR 15, 1
CLS
LOCATE 8, (80 - lenTitle%) / 2: PRINT title$
LOCATE 12, (80 - lenBy%) / 2: PRINT by$
LOCATE 14, (80 - lenMe%) / 2: PRINT me$
LOCATE 15, (80 - lenAol%) / 2: PRINT aol$
LOCATE 25, (80 - lenFreely%) / 2: PRINT freely$;

END SUB

SUB patience
COLOR 7
line1$ = "Patience! It will take a fairly long time to initialize the screen grid."
line2$ = "Also, there will be a lengthy pause between each generation of cells."
line3$ = "This is only QBASIC code, after all!"
len1% = LEN(line1$)
len2% = LEN(line2$)
len3% = LEN(line3$)

LOCATE 10, (80 - len1%) / 2: PRINT line1$
LOCATE 11, (80 - len1%) / 2: PRINT line2$
LOCATE 13, (80 - len3%) / 2: PRINT line3$

PCOPY 1, 0
END SUB

