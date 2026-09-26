DEFINT A-Z
DIM Ball(84)     'Dimension integer array large enough
                 'to hold ball.
SCREEN 2         '640 pixels by 200 pixels screen resolution.

INPUT "Press any key to end; press <ENTER> to start", Test$
CLS
CIRCLE (16, 16), 14       'Draw and paint ball.
PAINT (16, 16), 1
GET (0, 0)-(32, 32), Ball
X = 0: Y = 0
Xdelta = 2: Ydelta = 1

DO
   'Continue moving in same direction as long as ball is within
   'the boundaries of the screen - (0,0) to (640,200).
   X = X + Xdelta: Y = Y + Ydelta
   IF INKEY$ <> "" THEN END  ' Test for key press.
   'Change X direction if ball hits left or right edge.
   IF (X < 1 OR X > 600) THEN
      Xdelta = -Xdelta
      BEEP
   END IF
   'Change Y direction if ball hits top or bottom edge.
   IF (Y < 1 OR Y > 160) THEN
      Ydelta = -Ydelta
      BEEP
   END IF
   'Put new image on screen, simultaneously erasing old image.
   PUT (X, Y), Ball, PSET
LOOP
END
