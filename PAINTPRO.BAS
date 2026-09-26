' Paint Pro Ver: 5.4
' ** By: Joe Riedel ** 1994 Last Update Jan 5 1995
' ** Requires Fred Sexton Jr's Qbasic Extender TSR ***
' ***************************************************************************
' ** For a complete function reference refer to PAINTPRO.TXT.
' ** This also includes technical additions.
' ***************************************************************************
' ** This program is shareware and may be modified for your
' ** own personal use (you may not modify this opening statement), if you
' ** wish to upload another version that has more options or something, you
' ** MUST e-mail it to me first, at PHREAK24. I will answer as soon as
' ** possible. You must include the opening title screen, unchanged. I have
' ** put many months of work into this program, I hope you enjoy it, and if
' ** you make some kind of game with it, I would be honored to see it.
' **                     THANK YOU -Joe Riedel-
' ***************************************************************************
' ** This program was designed with game development in mind. At first I
' ** was going to make a game very similiar to KINGS QUEST but I moved to
' ** C and thus never finished.
' ***************************************************************************
' Please tell me what you think. My screen name is PHREAK24.
' ***************************************************************************

DEFINT A-Z                            ' Set default Variable type to Integer

TYPE Hues                             ' Define type needed for The Pallete
   red AS INTEGER                     '
   green AS INTEGER                   '
   blue AS INTEGER                    '
END TYPE                              '

DECLARE FUNCTION GetKeyStroke ()      ' Detects a Key Stroke
DECLARE FUNCTION Mouse (Mode)         ' Performs Mouse Functions
DECLARE FUNCTION PullDown (menu$())   ' Menu Function
DECLARE FUNCTION GetFileName$ (St$)   ' Gets valid file name
DECLARE FUNCTION File (Mode)          ' For File List, Size, Type ect.
DECLARE FUNCTION ChangeSize (Size, CColor, Style) ' Changes Font Size
DECLARE FUNCTION ChangeStyle (Size, CColor, Style) ' Changes Font Style
DECLARE FUNCTION ChangeColor (Size, CColor, Style) ' Changes Font Color

DECLARE SUB WaitLetGo (Mode)          ' Waits till The Depression of Button
DECLARE SUB ShowCredits ()            ' Shows Credits
DECLARE SUB PaintPro ()               ' Main Paint Program Loop
DECLARE SUB PollMouse ()              ' Moves Mouse Icon
DECLARE SUB ChangeMouseColor ()       ' Changes Mouse Color
DECLARE SUB ColorPick ()              ' Lets user Choose a color
DECLARE SUB Sketch ()                 ' Used to Sketch
DECLARE SUB ShutDown ()               ' Shuts Everything Down
DECLARE SUB SetColors ()              ' Sets system colors
DECLARE SUB GetFileList ()            ' Gets File List
DECLARE SUB Fill ()                   ' Fills Images on Screen
DECLARE SUB DrawBoxes ()              ' Draws Boxes
DECLARE SUB DrawCircles ()            ' Draws Circles
DECLARE SUB DrawLines ()              ' Draws Lines
DECLARE SUB Eraser ()                 ' Erases Stuff
DECLARE SUB Save ()                   ' Saves Image
DECLARE SUB ChangeIntensity ()        ' Changes Background Intensity
DECLARE SUB PickNewPalette ()         ' Load New Palette
DECLARE SUB PickSprite ()             ' Loads a Sprite File
DECLARE SUB Cut (Mode)                ' Performs Cut function
DECLARE SUB Copy ()                   ' Performes Copy funtion
DECLARE SUB Paste ()                  ' Performes Paste function
DECLARE SUB TypeFont (Word$, Size, Clr, Style, PlaceX, PlaceY) ' Puts Font
                                                               ' On Screen.
DECLARE SUB TextEditor () ' Edits Text
 
COMMON SHARED TSRseg, TSRofs          ' Shared Variable List
COMMON SHARED MouseX, MouseY          '
COMMON SHARED MouseLeft, MouseRight   '
COMMON SHARED ExtKeySeg, ExtKeyOfs    '
COMMON SHARED MouseColor, MouseIcon() '
COMMON SHARED Clicks, Position, Set   '
COMMON SHARED CurOn, CurOff           '
COMMON SHARED CurrentColor            '
COMMON SHARED FileName$, FileSize&    '
COMMON SHARED FileList$(), FileSpec$  '
COMMON SHARED Fmenu$()                '
COMMON SHARED Saved
COMMON SHARED Pal() AS Hues, PasteMenu()
COMMON SHARED LimitX, LimitY
COMMON SHARED MinX, MinY, MaxX, MaxY
COMMON SHARED Update$

REDIM Fmenu$(1 TO 7)                  ' Main Pull Down Menu
Fmenu$(1) = "New"                     '
Fmenu$(2) = "Load"                    '
Fmenu$(3) = "Save"                    '
Fmenu$(4) = "Save As..."
Fmenu$(5) = "Colors"
Fmenu$(6) = "Options..."              '
Fmenu$(7) = "Exit"                    '

Blank = 0                             ' Used for holes
Clicks = 2                            ' # QBEX(2) Button Status
Position = 3                          ' # QBEX(3) Get mouse position
Set = 4                               ' # QBEX(4) Set mouse position
CurOn = 5                             ' # QBEX(5) Mouse on
CurOff = 6                            ' # QBEX(6) Mouse off
MouseColor = 15                       ' # Mouse color.
CurrentColor = 15                     ' # Set mouse limits
LimitX = 7: LimitY = 8

IF NOT Mouse(0) THEN                      ' Check for TSR
   CLS                                    '
   SCREEN 0, 1                            '
   PRINT "Qbasic Extender TSR Not Found!" '
   PRINT "Fred Sextons Qbasic Extender TSR ver 1.0"
   PRINT "needs to be loaded before Paint Pro will run."
   END                                    '
END IF                                    '
                                    
IF NOT Mouse(1) THEN                      ' Check for Mouse
   CLS                                    '
   SCREEN 0, 1                            '
   PRINT "Mouse Not Found!"               '
   PRINT "A mouse needs to be attached to"
   PRINT "the computer before Paint Pro can run."
   END                                    '
END IF                                    '

REDIM Pal(255) AS Hues             ' Dim Array Needed for Palette
DEF SEG = VARSEG(Pal(0))           ' Point To it
BLOAD "Default.Pal", 0                ' Bload it into the array

SCREEN 13                          ' 320x200x256 res
                                   ' Set Back Ground To Black
Pal(0).red = 0                     '
Pal(0).green = 0                   '
Pal(0).blue = 0                    '

SetColors                          ' Set system Colors

'If you have updated this version, put your name here.
Update$ = ""

PaintPro                           ' Start Paint Editor

FUNCTION ChangeColor (Size, CColor, Style)
     
      OldColor = CurrentColor
      CurrentColor = CColor
      CLS
      TypeFont "Sample Text", Size, CurrentColor, Style, 0, 50
      DO
         z = Mouse(Clicks)
         IF MouseRight THEN
              
               ColorPick
               CLS
               TypeFont "Sample Text", Size, CurrentColor, Style, 0, 50
         END IF
         IF GetKeyStroke AND 356 THEN EXIT DO
      LOOP
      ChangeColor = CurrentColor
      CurrentColor = OldColor

END FUNCTION

SUB ChangeIntensity

REDIM Temp(3041)                                     ' Save area we're going
                                                     ' to destroy
GET (0, 0)-(319, 18), Temp                           ' capture it

LINE (0, 0)-(319, 18), 0, BF                         ' clear the area

COLOR 1                                              ' Blue

LOCATE 1, 1
PRINT "Enter Intensity 0 - 63:"                      ' print the message

LOCATE 1, 25
INPUT Intensity                                      ' get it

IF Intensity >= 0 AND Intensity <= 63 THEN           ' legit?
   Pal(0).red = Intensity                            ' set it
   Pal(0).green = Intensity
   Pal(0).blue = Intensity
   SetColors
END IF

WaitLetGo (2)

PUT (0, 0), Temp, PSET
ERASE Temp

END SUB

SUB ChangeMouseColor

CColor = POINT(0, 0)            ' Save Spot

REDIM MouseIcon(2)              ' Get Mouse Color
PSET (0, 0), MouseColor         ' ditto
GET (0, 0)-(0, 0), MouseIcon    ' ditto

PSET (0, 0), CColor             ' Put it back

END SUB

FUNCTION ChangeSize (Size, CColor, Style)
    
      CLS
      TypeFont "Sample Text", Size, CColor, Style, 0, 50
      DO
         z = Mouse(Clicks)
         IF MouseLeft THEN
               Size = Size + 1
               CLS
               TypeFont "Sample Text", Size, CColor, Style, 0, 50
         ELSEIF MouseRight THEN
               CLS
               IF Size > 1 THEN Size = Size - 1
               TypeFont "Sample Text", Size, CColor, Style, 0, 50
         END IF
         IF GetKeyStroke AND 356 THEN EXIT DO
      LOOP
      ChangeSize = Size
END FUNCTION

FUNCTION ChangeStyle (Size, CColor, Style)

      CLS
      TypeFont "Sample Text", Size, CColor, Style, 0, 50
      DO
         z = Mouse(Clicks)
         IF MouseLeft THEN
               IF Style < 15 THEN Style = Style + 1
               CLS
               TypeFont "Sample Text", Size, CColor, Style, 0, 50
         ELSEIF MouseRight THEN
               CLS
               IF Style > 1 THEN Style = Style - 1
               TypeFont "Sample Text", Size, CColor, Style, 0, 50
         END IF
         IF GetKeyStroke AND 356 THEN EXIT DO
      LOOP
      ChangeStyle = Style
END FUNCTION

SUB ColorPick STATIC

IF OldMouseX = 0 OR OldMouseY = 0 THEN   '
   OldMouseX = 150                       ' Set initial values
   OldMouseY = 100                       '
END IF                                   '

MouseX = OldMouseX: MouseY = OldMouseY   ' Save Place

z = Mouse(Set)

REDIM ScreenSection(8132)                ' Save Section That will be Drawn On
GET (65, 40)-(225, 136), ScreenSection

LINE (65, 40)-(225, 136), 0, BF          ' Make Room

FOR Col = 65 TO 225 STEP 10              '
   LINE (Col, 40)-(Col, 136), 15         '
NEXT Col                                 '
                                         ' Draw Boxes
FOR Row = 40 TO 140 STEP 6               '
   LINE (65, Row)-(225, Row), 15         '
NEXT Row                                 '
                                       
FillColor = 0                            '
FOR Row = 43 TO 137 STEP 6               '
   FOR Col = 70 TO 220 STEP 10           ' Fill Boxes with Colors
   PAINT (Col, Row), FillColor, 15       '
   FillColor = FillColor + 1             '
   NEXT Col                              '
NEXT Row                                 '
                                         
z = Mouse(CurOn)                         ' Turn MouseOn

WaitLetGo (1)                            ' Wait till they Let go

DO
   z = Mouse(Clicks)                     ' Wait till they do Something
   z = Mouse(Position)                   '
   ThisKey = GetKeyStroke                '
LOOP UNTIL MouseLeft OR ThisKey AND 8

IF ThisKey AND 8 THEN                    ' If They Want Out
   z = Mouse(CurOff)                     ' MUST Turn Off Mouse Cursor
   PUT (65, 40), ScreenSection, PSET     ' Fill The Hole
   WaitLetGo (2)                         ' Wait till they Let Go
   EXIT SUB                              ' Exit Sub
ELSE
   WaitLetGo (1)                         ' Else Wait
END IF

z = Mouse(CurOff)                        ' MUST Turn Mouse Off

CurrentColor = POINT(MouseX, MouseY)     ' Get Color
OldMouseX = MouseX: OldMouseY = MouseY

IF CurrentColor <> 0 THEN                ' If they choose black
   MouseColor = CurrentColor             ' Change color so they
ELSE                                     ' See the Cursor
   MouseColor = 15
END IF

PUT (65, 40), ScreenSection, PSET        ' Put it Back

END SUB

SUB Cut (Mode)


Xmax = 220: Ymax = 160

CColor = 15
MouseColor = 15
CurrentColor = 15
ChangeMouseColor
ok = 0
t = -1
t2 = -1
Likeit = 0
Front = -1
Method = 0
Limits = -1
typ = 2
Doit = 0
REDIM Temp(32001)


Start:
DO
   PollMouse
   GET (0, 0)-(319, 199), Temp
   IF MouseLeft THEN
      IF Limits THEN
         FirstX = MouseX: FirstY = MouseY
         MinX = FirstX - Xmax: MinY = FirstY - Ymax
         MaxX = FirstX + Xmax: MaxY = FirstY + Ymax
         IF MinX < 0 THEN MinX = 0: IF MinY < 0 THEN MinY = 0
         IF MaxX > 319 THEN MaxX = 319: IF MaxY > 199 THEN MaxY = 199
         z = Mouse(LimitX): z = Mouse(LimitY)
      END IF
      IF Method = 0 THEN
         DO
            z = Mouse(Clicks)
            z = Mouse(Position)
            IF ok THEN LINE (FirstX, FirstY)-(LastX, LastY), 0, B
            LINE (FirstX, FirstY)-(MouseX, MouseY), 15, B
            LastX = MouseX: LastY = MouseY
            ok = -1
         LOOP WHILE MouseLeft
      ELSEIF Method = 1 THEN
         C = 1
         ok = 0
         FirstX = MouseX: FirstY = MouseY
         x = FirstX: y = FirstY
         WaitLetGo (1)
         DO
            z = Mouse(Clicks)
            z = Mouse(Position)
            IF ok THEN LINE (x, y)-(OldX, OldY), 0
            LINE (x, y)-(MouseX, MouseY), 15
            ok = -1
            OldX = MouseX: OldY = MouseY
            IF MouseLeft THEN
               C = C + 1
               WaitLetGo (1)
               a = -1
            END IF
            IF a THEN
               a = 0
               IF C = 2 THEN
                  x = MouseX: y = MouseY
                  ok = 0
               ELSEIF C = 3 THEN
                  LastX = MouseX: LastY = MouseY
                  EXIT DO
               END IF
            END IF
         LOOP
      END IF
      MinX = 0: MinY = 0
      MaxX = 319: MaxY = 199
      z = Mouse(LimitX): z = Mouse(LimitY)
      Line1X = FirstX: Line1Y = FirstY
      Line2X = LastX: Line2Y = LastY
      IF FirstY > LastY THEN
         SWAP FirstY, LastY
      END IF
      IF FirstX > LastX THEN
         SWAP FirstX, LastX
      END IF
      x& = ((ABS(FirstX - LastX) + 1))
      y& = ((ABS(FirstY - LastY) + 1))
      Idelm = (x& * y&) \ 2 + 2
      PUT (0, 0), Temp, PSET
      REDIM Mult(Idelm)
      GET (FirstX, FirstY)-(LastX, LastY), Mult
      LINE (Line1X, Line1Y)-(Line2X, Line2Y), 15, B
      t = -1
      z = Mouse(CurOn)
      DO
Slect:
         z = Mouse(CurOn)
         z = Mouse(Clicks)
         z = Mouse(Position)
         IF MouseLeft THEN
            SELECT CASE MouseX
               CASE FirstX TO LastX
                  IF MouseY >= FirstY AND MouseY <= LastY THEN
                     z = Mouse(CurOff)
                        Likeit = -1
                        ok = 0
                        PlaceX1 = ABS(FirstX - MouseX)
                        PlaceY1 = ABS(FirstY - MouseY)
                        IF Doit THEN
                           LINE (Line1X, Line1Y)-(Line2X, Line2Y), 15, B
                           WaitLetGo (1)
                           Doit = NOT Doit
                           GOTO Slect:
                        ELSE
                           z = Mouse(CurOff)
                           Doit = NOT Doit
                           PUT (0, 0), Temp, PSET
                        END IF
                        DO
                           z = Mouse(Clicks)
                           z = Mouse(Position)
                           PlaceX = MouseX - PlaceX1
                           PlaceY = MouseY - PlaceY1
                           IF PlaceX > 319 - Mult(0) \ 8 THEN
                              PlaceX = 319 - Mult(0) \ 8
                           END IF
                           IF PlaceX < 0 THEN PlaceX = 0
                           IF PlaceY > 199 - Mult(1) THEN
                              PlaceY = 199 - Mult(1)
                           END IF
                           IF PlaceY < 0 THEN PlaceY = 0
                           IF MouseX <> MouseXl OR MouseY <> MouseYl THEN
                              IF Mode AND t THEN
                                 LINE (FirstX, FirstY)-(LastX, LastY), 0, BF
                                 IF t2 THEN
                                    GET (0, 0)-(319, 199), Temp
                                    t2 = 0
                                 END IF
                                 PUT (0, 0), Temp, PSET
                                 t = 0
                              END IF
                              IF ok THEN PUT (OldX, OldY), Mult, XOR
                              PUT (PlaceX, PlaceY), Mult, XOR
                              OldX = PlaceX: OldY = PlaceY
                              ok = -1
                           END IF
                           MouseXl = MouseX: MouseYl = MouseY
                        LOOP WHILE MouseLeft
                           t = -1
                           Mode = -1
                           LastX = PlaceX + (Mult(0) \ 8): LastY = PlaceY + Mult(1)
                           FirstX = PlaceX: FirstY = PlaceY
                           Line1X = PlaceX - 1: Line1Y = PlaceY - 1
                           Line2X = LastX + 1: Line2Y = LastY
                           IF typ = 1 THEN
                              PUT (0, 0), Temp, PSET
                              Ofs& = 3
                              ImageWidth = Mult(0) \ 8
                              ImageHieght = Mult(1)
                              Col = FirstX
                              Row = FirstY
                              MaxCol = Col + ImageWidth
                              MaxRow = Row + ImageHieght
                              DEF SEG = VARSEG(Mult(0))
                              DO
                                 CColor = POINT(Col, Row)
                                 CColor2 = PEEK(Ofs&)
                                 IF Front THEN
                                    IF CColor2 THEN
                                       PSET (Col, Row), CColor2
                                    ELSE
                                       PSET (Col, Row), CColor
                                    END IF
                                 ELSE
                                    IF CColor THEN
                                       PSET (Col, Row), CColor
                                    ELSE
                                       PSET (Col, Row), CColor2
                                    END IF
                                 END IF
                                 IF Row = MaxRow THEN EXIT DO
                                 IF Col = MaxCol THEN
                                    Row = Row + 1
                                    Col = FirstX
                                 END IF
                                 Col = Col + 1
                                 Ofs& = Ofs& + 1
                              LOOP
                           ELSEIF typ = 2 THEN
                              PUT (0, 0), Temp, PSET
                              PUT (PlaceX, PlaceY), Mult, PSET
                           END IF
                       END IF
            END SELECT
         ELSEIF GetKeyStroke AND 4 THEN
            z = Mouse(CurOff)
            ERASE Mult
            LINE (Line1X, Line1Y)-(Line2X, Line2Y), 0, BF
            EXIT DO
         ELSEIF GetKeyStroke AND 16 THEN
            z = Mouse(CurOff)
            GET (0, 0)-(319, 199), Temp
            PUT (0, 0), Mult, XOR
            FirstX = 0: FirstY = 0
            LastX = Mult(0) \ 8: LastY = Mult(1)
            Line1X = FirstX: Line1Y = FirstY
            Line2X = LastX: Line2Y = LastY
            Mode = -1: t = -1: t2 = 0
         ELSEIF MouseRight THEN
            z = Mouse(CurOff)
            ERASE Mult
            REDIM menu$(1 TO 1)
            menu$(1) = "Done"
            Pick = PullDown(menu$())
            IF Pick = 0 THEN GOTO Start:
            t2 = -1
            IF NOT Likeit THEN PUT (0, 0), Temp, PSET
            IF Likeit THEN GET (0, 0)-(319, 199), Temp
            Likeit = 0
            EXIT DO
         END IF
      LOOP
   ELSEIF MouseRight THEN
      REDIM menu$(1 TO 5)
      menu$(1) = "Box"
      menu$(2) = "Line"
      menu$(3) = "Mode"
      IF Limits THEN
         menu$(4) = "Limits Off"
      ELSE
          menu$(4) = "Limits On"
      END IF
      menu$(5) = "Exit"
      Pick = PullDown(menu$())
      IF Pick = 1 THEN
         Method = 0
      ELSEIF Pick = 2 THEN
         Method = 1
      ELSEIF Pick = 3 THEN
         REDIM menu$(1 TO 3)
         menu$(1) = "Pset"
         menu$(2) = "Behind"
         menu$(3) = "In Front"
         Pick = PullDown(menu$())
         IF Pick = 1 THEN
            typ = 2
         ELSEIF Pick = 2 THEN
            typ = 1
            Front = 0
         ELSEIF Pick = 3 THEN
            typ = 1
            Front = -1
         END IF
      ELSEIF Pick = 4 THEN
         Limits = NOT Limits
      ELSEIF Pick = 5 THEN
         ERASE Temp
         ERASE Mult
         WaitLetGo (1)
         EXIT SUB
      END IF
   END IF
LOOP

END SUB

SUB DrawBoxes STATIC

IF CColor = 0 THEN              '
   CColor = 15                  '  Set Initial Color
END IF                          '

CurrentColor = CColor           '
MouseColor = CColor             '  Set Colors
LColor = CColor                 '
ChangeMouseColor                '  Get it
Fil = 0                        ' Don't Fill it

DO                              ' Main loop

   REDIM Scrn(32001)            ' Get the Screen
   GET (0, 0)-(319, 199), Scrn

   ok = 0                       ' Don't Mess it up

   PollMouse                    ' Poll Mouse

   IF GetKeyStroke AND 8 THEN   ' Esc?
      WaitLetGo (2)             ' Wait till they let go
      ERASE Scrn                ' free up the memory
      EXIT SUB                  ' exit
   END IF
                                                                             
   IF MouseRight THEN
      REDIM menu$(1 TO 3)             ' Menu
      menu$(1) = "Select Color"       ' ditto
      menu$(2) = "Settings"           ' ditto
      menu$(3) = "Exit"               ' ditto
      Pick = PullDown(menu$())        ' ask 'em
     
      IF Pick = 1 THEN                ' select color?
         ColorPick                    ' get it
         CColor = CurrentColor        ' set it
        
         IF MouseColor <> LColor THEN  ' Not the same
            ChangeMouseColor           ' Change it
            LColor = MouseColor        ' save for next
         END IF
        
         WaitLetGo (1)                 ' don't call it
     
      ELSEIF Pick = 2 THEN               ' Menu
         REDIM menu$(1 TO 2)             ' ditto
         menu$(1) = "Fill in Box"        ' ditto
         menu$(2) = "Don't Fill in Box"  ' ditto
         Pick = PullDown(menu$())        ' ask 'em
        
         IF Pick = 1 THEN                ' Fill box?
            Fil = -1                     ' set it
            WaitLetGo (1)                ' Wait
        
         ELSEIF Pick = 2 THEN            ' Don't fill?
            Fil = 0                      ' set it
            WaitLetGo (1)                ' Wait
        
         END IF
     
      ELSEIF Pick = 3 THEN               ' Exit?
        ERASE Scrn
        EXIT SUB                         ' let 'em go
      ELSE
          WaitLetGo (1)                     '
    
     END IF
   END IF

   IF MouseLeft THEN

      z = Mouse(Position)
      FirstX = MouseX: FirstY = MouseY

      DO

         z = Mouse(Position)
         z = Mouse(Clicks)

         IF ok THEN LINE (FirstX, FirstY)-(OldMouseX, OldMouseY), 0, B
         LINE (FirstX, FirstY)-(MouseX, MouseY), CurrentColor, B
         OldMouseX = MouseX: OldMouseY = MouseY
         ok = -1

      LOOP WHILE MouseLeft

      PUT (0, 0), Scrn, PSET

      LINE (FirstX, FirstY)-(MouseX, MouseY), CurrentColor, B

      IF Fil THEN
         LINE (FirstX + 1, FirstY + 1)-(MouseX - 1, MouseY - 1), 0, BF
      END IF

      MouseLeft = 0

   END IF

LOOP

END SUB

SUB DrawCircles STATIC

IF CColor = 0 THEN
   CColor = 15
END IF

IF (MagicColor = 0) THEN
        MagicColor = 15
END IF

MouseColor = CColor
CurrentColor = CColor
ChangeMouseColor
LColor = CColor

IF Radius = 0 THEN
   Radius = 50
END IF

DO

   REDIM Scrn(32001)
   GET (0, 0)-(319, 199), Scrn

   IF MouseColor <> LColor THEN
      ChangeMouseColor
      LColor = MouseColor
   END IF

   ok = 0

   PollMouse

   IF GetKeyStroke AND 8 THEN
      PUT (0, 0), Scrn, PSET
      ERASE Scrn
      WaitLetGo (2)
      EXIT SUB
   END IF
   IF MouseRight THEN
      COLOR 15
      REDIM menu$(1 TO 5)
      menu$(1) = "Select Magic Color"
      menu$(2) = "Select a Color"
      menu$(3) = "Set Radius"
      menu$(4) = "Settings"
      menu$(5) = "Exit"
      Pick = PullDown(menu$())
      IF Pick = 1 THEN
        SaveClr = CurrentColor
        ColorPick
        MagicColor = CurrentColor
        CurrentColor = SaveClr
        MouseColor = CurrentColor
        ChangeMouseColor
      ELSEIF Pick = 2 THEN
         ColorPick
         CColor = CurrentColor
         MouseLeft = 0
      ELSEIF Pick = 3 THEN
         REDIM Mem(3041)
         GET (0, 0)-(319, 18), Mem
         LINE (0, 0)-(319, 18), 0, BF
         LOCATE 1, 1: PRINT "Radius ="
         Lradius = Radius
         DO
            ThisKey = GetKeyStroke
            IF ThisKey AND 356 THEN
               WaitLetGo (2)
               EXIT DO
            END IF
            IF ThisKey AND 1 THEN
               IF Lradius < 200 THEN
                  Lradius = Lradius + 1
                  FOR y = 1 TO 8000: NEXT y
               END IF
            END IF
            IF ThisKey AND 2 THEN
               IF Lradius > 1 THEN
                  Lradius = Lradius - 1
                  FOR y = 1 TO 8000: NEXT y
               END IF
            END IF
            IF ThisKey AND 4 THEN
               WaitLetGo (2)
               EXIT DO
            END IF

            LOCATE 1, 10: PRINT Lradius
         LOOP
         Radius = Lradius
         PUT (0, 0), Mem, PSET
         ERASE Mem
      ELSEIF Pick = 4 THEN
         REDIM menu$(1 TO 2)
         menu$(1) = "Fill in Circle"
         menu$(2) = "Don't Fill in Circle"
         Pick = PullDown(menu$())
         IF Pick = 1 THEN
            F = -1
            WaitLetGo (1)
            WaitLetGo (2)
         ELSEIF Pick = 2 THEN
            F = 0
            WaitLetGo (1)
            WaitLetGo (2)
         ELSE
            WaitLetGo (1)
            WaitLetGo (2)
         END IF
      ELSEIF Pick = 5 THEN
        ERASE Scrn
        EXIT SUB
      END IF
END IF

IF MouseLeft THEN
   DO
      z = Mouse(Position)
      z = Mouse(Clicks)
      IF ok THEN CIRCLE (OldMouseX, OldMouseY), Radius, 0
      CIRCLE (MouseX, MouseY), Radius, CurrentColor
      OldMouseX = MouseX: OldMouseY = MouseY
      ok = -1
      ThisKey = GetKeyStroke
      IF ThisKey AND 8 THEN
         PUT (0, 0), Scrn, PSET
         WaitLetGo (2)
         EXIT SUB
      END IF
   LOOP WHILE MouseLeft
   PUT (0, 0), Scrn, PSET
   IF NOT F THEN
        CIRCLE (MouseX, MouseY), Radius, CurrentColor
   ELSE
        IF (POINT(MouseX, MouseY)) THEN
                Colr = POINT(MouseX, MouseY)
                CIRCLE (MouseX, MouseY), Radius, Colr
                PAINT (MouseX, MouseY), Colr, Colr
                Colr = MagicColor
                CIRCLE (MouseX, MouseY), Radius, Colr
                PAINT (MouseX, MouseY), Colr, Colr
        END IF

        CIRCLE (MouseX, MouseY), Radius, CurrentColor
        PAINT (MouseX, MouseY), CurrentColor, CurrentColor

   END IF
END IF
LOOP

END SUB

SUB DrawLines STATIC

ok = 0
Mode = -1

IF CColor = 0 THEN
   CColor = 15
END IF

MouseColor = CColor
CurrentColor = CColor
ChangeMouseColor
LColor = CColor


DO

   REDIM Scrn(32001)
   GET (0, 0)-(319, 199), Scrn


   PollMouse

      IF GetKeyStroke AND 8 THEN
         PUT (0, 0), Scrn, PSET
         ERASE Scrn
         WaitLetGo (2)
         EXIT SUB
      END IF

      IF MouseRight THEN
         REDIM menu$(1 TO 3)
         menu$(1) = "Select a Color"
         menu$(2) = "Select Mode"
         menu$(3) = "Exit"
         Pick = PullDown(menu$())
         IF Pick = 1 THEN
            ColorPick
            CColor = CurrentColor
            IF MouseColor <> LColor THEN
               ChangeMouseColor
               LColor = MouseColor
            END IF
            MouseLeft = 0
         ELSEIF Pick = 2 THEN
            REDIM menu$(1 TO 3)
            menu$(1) = "Normal"
            menu$(2) = "Pixel Click"
            menu$(3) = "Exit"
            Pick = PullDown(menu$())
            IF Pick = 1 THEN
               Mode = -1
            ELSEIF Pick = 2 THEN
               Mode = 0
            ELSEIF Pick = 3 THEN
                EXIT SUB
            END IF
         ELSEIF Pick = 3 THEN
            ERASE Scrn
            EXIT SUB
         END IF
      END IF

      IF Mode THEN
         PollMouse
         IF MouseLeft THEN
            z = Mouse(Position)
            FirstX = MouseX: FirstY = MouseY
           
            DO
               z = Mouse(Position)
               z = Mouse(Clicks)

               IF ok THEN LINE (FirstX, FirstY)-(OldMouseX, OldMouseY), 0
               LINE (FirstX, FirstY)-(MouseX, MouseY), CurrentColor
               ok = -1
               OldMouseX = MouseX: OldMouseY = MouseY
            LOOP WHILE MouseLeft
         PUT (0, 0), Scrn, PSET
         LINE (FirstX, FirstY)-(MouseX, MouseY), CurrentColor
         END IF
      ELSE
         PollMouse
         IF MouseLeft THEN
            z = Mouse(Position)
            FirstX = MouseX: FirstY = MouseY
            WaitLetGo (1)
            DO
               PollMouse
               IF GetKeyStroke AND 8 THEN
                  PUT (0, 0), Scrn, PSET
                  ERASE Scrn
                  EXIT SUB
               END IF
            LOOP UNTIL MouseLeft
            z = Mouse(Position)
            PUT (0, 0), Scrn, PSET
            LINE (FirstX, FirstY)-(MouseX, MouseY), CurrentColor
         END IF
      END IF
LOOP
END SUB

SUB Eraser

REDIM Icon(33)
REDIM Scrn(33)
GET (0, 0)-(7, 7), Scrn
LINE (0, 0)-(7, 7), 0, BF
LINE (0, 0)-(7, 7), 15, B
GET (0, 0)-(7, 7), Icon
PUT (0, 0), Scrn, PSET
ERASE Scrn

DO

   DO
      z = Mouse(Clicks)
      z = Mouse(Position)
     
      IF MouseX >= 312 THEN
         MouseX = 312
      END IF
      IF MouseY >= 192 THEN
         MouseY = 192
      END IF
      IF ok THEN PUT (OldMouseX, OldMouseY), Icon, XOR
      PUT (MouseX, MouseY), Icon, XOR
      OldMouseX = MouseX: OldMouseY = MouseY: ok = -1
   LOOP UNTIL MouseLeft OR MouseRight OR GetKeyStroke AND 8

   IF GetKeyStroke AND 8 THEN
      PUT (MouseX, MouseY), Icon, XOR
      WaitLetGo (2)
      EXIT SUB
   END IF

   IF MouseRight THEN
      PUT (MouseX, MouseY), Icon, XOR
      WaitLetGo (1)
      EXIT SUB
   END IF

   IF MouseLeft THEN
      DO
         z = Mouse(Clicks)
         z = Mouse(Position)
         IF MouseX >= 312 THEN
            MouseX = 312
         END IF
         IF MouseY >= 192 THEN
            MouseY = 192
         END IF
         PUT (MouseX, MouseY), Icon, XOR
         FOR y = 1 TO 2000: NEXT y
         PUT (MouseX, MouseY), Icon, XOR
         LINE (MouseX, MouseY)-(MouseX + 7, MouseY + 7), 0, BF
      LOOP WHILE MouseLeft
   END IF
ok = 0
LOOP

END SUB

FUNCTION File (Mode) STATIC

    DEF SEG = TSRseg

    SELECT CASE Mode

      CASE 9 ' File Exists return size
         CALL ABSOLUTE(Mode, FileName$, FileSize&, TSRofs)
   
      CASE 10 ' Get File Count
         CALL ABSOLUTE(Mode, FileSpec$, Blank, TSRofs)

      CASE 11 ' Get File List
         CALL ABSOLUTE(Mode, FileSpec$, FileList$(), TSRofs)
         
   END SELECT
   
    File = Mode

END FUNCTION

SUB Fill STATIC

OldColor = MouseColor

IF LFcolor = 0 THEN
   LFcolor = 15
END IF

Fcolor = LFcolor
Bcolor = LBcolor
MouseColor = LFcolor
LColor = LFcolor
ChangeMouseColor

REDIM menu$(1 TO 3)
menu$(1) = "Select Fill Color"
menu$(2) = "Select Border Color"
menu$(3) = "Exit"

DO

   PollMouse

   IF MouseLeft THEN
      PAINT (MouseX, MouseY), Fcolor, Bcolor
      WaitLetGo (1)
   END IF
   
   IF MouseRight THEN
  
      Pick = PullDown(menu$())
     
      IF Pick = 1 THEN
         ColorPick
         IF MouseColor <> LColor THEN
            ChangeMouseColor
            LColor = MouseColor
         END IF
         Fcolor = CurrentColor
         LFcolor = Fcolor
      ELSEIF Pick = 2 THEN
         ColorPick
         LBcolor = CurrentColor
         Bcolor = CurrentColor
         WaitLetGo (1)
      ELSEIF Pick = 3 THEN
        EXIT SUB
      END IF

   END IF

   IF GetKeyStroke AND 8 THEN
      WaitLetGo (2)
      MouseColor = OldColor
      ChangeMouseColor
      EXIT DO
   END IF

LOOP

END SUB

SUB GetFileList

elms = File(10)

IF elms THEN

   REDIM FileList$(1 TO elms)

   FOR t = 1 TO elms
      FileList$(t) = FileList$(t) + SPACE$(12)
   NEXT t
   z = File(11)
   FOR t = 1 TO elms
      FileList$(t) = RTRIM$(FileList$(t))
   NEXT t

   DO
      Flag = 0
      FOR t = 1 TO (elms - 1)
         IF FileList$(t) > FileList$(t + 1) THEN
            SWAP FileList$(t), FileList$(t + 1)
            Flag = t
         END IF
      NEXT t
      elm = flage
   LOOP WHILE Flag

ELSE
REDIM FileList$(0)
END IF


END SUB

FUNCTION GetFileName$ (St$)

REDIM Temp(3041)

GET (0, 0)-(319, 18), Temp

LINE (0, 0)-(319, 18), 0, BF

COLOR 15
LOCATE 1, 1
PRINT St$

LineX = (LEN(St$) + 2) * 8 - 9
StrLen = LEN(St$)

Delete$ = CHR$(8)
Escape$ = CHR$(27)
Enter$ = CHR$(13)

Valid$ = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_-^$!#%&{}()@'"

DO
   char$ = INKEY$
   char$ = UCASE$(char$)
   Length = LEN(Name$)

   IF LEN(char$) THEN

      IF INSTR(Valid$, char$) THEN
         IF Length < 8 THEN Name$ = Name$ + char$
      ELSEIF char$ = Delete$ THEN
         IF Length THEN
            Name$ = LEFT$(Name$, Length - 1)
            LINE (LineX, 0)-(319, 18), 0, BF
         END IF
      ELSEIF char$ = Escape$ THEN
         Name$ = ""
         PUT (0, 0), Temp, PSET
         WaitLetGo (2)
         GetFileName$ = Name$
         EXIT FUNCTION
      END IF

      LOCATE 1, StrLen + 2
      PRINT Name$

   END IF

LOOP UNTIL char$ = Enter$

PUT (0, 0), Temp, PSET

WaitLetGo (2)

Name$ = Name$ + ".PCT"

GetFileName$ = Name$

END FUNCTION

FUNCTION GetKeyStroke

DEF SEG = ExtKeySeg
  
   UpArrow = PEEK(ExtKeyOfs + 72) AND 1
   DownArrow = PEEK(ExtKeyOfs + 80) AND 2
   Enter = PEEK(ExtKeyOfs + 28) AND 4
   Esc = PEEK(ExtKeyOfs + 1) AND 8
   Alt = PEEK(ExtKeyOfs + 56) AND 16
   PgUp = PEEK(ExtKeyOfs + 73) AND 64
   PgDwn = PEEK(ExtKeyOfs + 81) AND 128
   Space = PEEK(ExtKeyOfs + 57) AND 356

DEF SEG = &H40
POKE &H1A, PEEK(&H1C)

GetKeyStroke = UpArrow OR DownArrow OR Enter OR Esc OR Alt OR F1 OR PgUp OR PgDwn OR Space

END FUNCTION

FUNCTION Mouse (Mode) STATIC

IF TSRseg THEN

   DEF SEG = TSRseg

      SELECT CASE Mode

         CASE 0 ' Check for Extender TSR And Get KeyTable Adress
            CALL ABSOLUTE(Mode, ExtKeyOfs, ExtKeySeg, TSRofs)
        
         CASE 1 'Mouse Presence
            CALL ABSOLUTE(Mode, Blank, Blank, TSRofs)

         CASE 2 ' Get Button Status
            CALL ABSOLUTE(Mode, MouseLeft, MouseRight, TSRofs)

         CASE 3 ' Get X/Y Cordinates
               MouseX = MouseX * 2
            CALL ABSOLUTE(Mode, MouseX, MouseY, TSRofs)
               MouseX = MouseX \ 2

         CASE 4 ' Set Mouse Position
               MouseX = MouseX * 2
            CALL ABSOLUTE(Mode, MouseX, MouseY, TSRofs)
               MouseX = MouseX \ 2

         CASE 5 ' Mouse Cursor On
            CALL ABSOLUTE(Mode, Blank, Blank, TSRofs)

         CASE 6 ' Mouse Cursor Off
            CALL ABSOLUTE(Mode, Blank, Blank, TSRofs)

         CASE 7 ' Set Mouse-X Limits
               MinX = MinX * 2
               MaxX = MaxX * 2
            CALL ABSOLUTE(Mode, MinX, MaxX, TSRofs)

         CASE 8 ' Set Mouse-Y Limits
            CALL ABSOLUTE(Mode, MinY, MaxY, TSRofs)

      END SELECT

      Mouse = Mode

ELSE

      REDIM Array(46)
      DEF SEG = VARSEG(Array(0))
      BLOAD "callmult.Fps", 0
      CALL ABSOLUTE(TSRofs, TSRseg, Blank)
      ERASE Array

         IF TSRseg THEN
            Mouse = Mouse(0)
         ELSE
            Mouse = 0
         END IF

END IF

END FUNCTION

SUB PaintPro

ShowCredits

CLS

MouseX = 150      'Set mouse position
MouseY = 100      'ditto
z = Mouse(Set)    'ditto

Pick = 0
LColor = 0
t = 0
Saved = -1
Comp = 0
AutoSave = -1
FileSpec$ = "*.PCT"

StartAgain:

DO

   DO

      IF MouseColor <> LColor THEN
         ChangeMouseColor
      END IF
  
      PollMouse

      IF MouseLeft THEN
        Saved = 0
        Sketch
      END IF
     
      IF GetKeyStroke AND 356 THEN
         WaitLetGo (2)
         ColorPick
      END IF

      IF MouseRight THEN
        Pick = PullDown(Fmenu$())
        IF Pick THEN EXIT DO
      END IF

      
LOOP

SELECT CASE Pick

   CASE 1 ' New
      FileName$ = ""
      IF NOT Saved THEN
         REDIM menu$(1 TO 2)
         menu$(1) = "Save File"
         menu$(2) = "Load New File"
         Pick = PullDown(menu$())
        
         IF Pick = 1 THEN
            Save
           
            IF Saved = 1 THEN
               Saved = -1
               GOTO StartAgain:
            END IF

         ELSEIF Pick = 0 THEN
            GOTO StartAgain:

         END IF
     
      END IF

      REDIM Scrn(32001)
      DEF SEG = VARSEG(Scrn(0))
      GET (0, 0)-(319, 199), Scrn
      IF AutoSave AND NOT Saved THEN
        BSAVE "Autosave.pct", 0, 64004
      END IF
      ERASE Scrn

      CLS
      CurrentColor = 15: MouseColor = 15

   CASE 2 ' Load
     
      IF NOT Saved THEN
         REDIM menu$(1 TO 2)
         menu$(1) = "Save Image"
         menu$(2) = "Load File"
         Pick = PullDown(menu$())
        
         IF Pick = 1 THEN
            Save
            
            IF Saved = 1 THEN
               Saved = -1
               GOTO StartAgain:
            END IF
        
         ELSEIF Pick = 0 THEN
            GOTO StartAgain:
         
         END IF
      END IF
           
      GetFileList
          
      IF UBOUND(FileList$) >= 1 THEN
         Pick = PullDown(FileList$())
              
         IF Pick = 0 THEN
            GOTO StartAgain:
         END IF
              
         FileName$ = FileList$(Pick)
           
      ELSE
         REDIM menu$(1 TO 1)
         menu$(1) = "File not Found"
         z = PullDown(menu$())
         GOTO StartAgain:
      END IF
           
      z = File(9)
      FileSize = (FileSize& - 7) \ 2 + 1
      REDIM Scrn(FileSize)
      DEF SEG = VARSEG(Scrn(0))
      GET (0, 0)-(319, 199), Scrn
      IF AutoSave AND (FileName$ <> "AUTOSAVE.PCT") AND NOT Saved THEN
        BSAVE "Autosave.pct", 0, 64004
      END IF
      Saved = -1
      BLOAD FileName$, 0
      CLS
      PUT (0, 0), Scrn, PSET
      ERASE Scrn
      CurrentColor = 15
      MouseColor = 15
     
   CASE 3 ' Save
      IF FileName$ <> "" THEN
         REDIM SaveScrn(32001)
         GET (0, 0)-(319, 199), SaveScrn
         DEF SEG = VARSEG(SaveScrn(0))
         BSAVE FileName$, 0, 64004
         ERASE SaveScrn
         Saved = -1
         GOTO StartAgain:
      ELSE
         Save
         IF Saved = 1 THEN
            Saved = -1
            GOTO StartAgain:
         END IF
      END IF


   CASE 4 ' Save As ...
      Save
      IF Saved = 1 THEN
         Saved = -1
         GOTO StartAgain:
      END IF
  
   CASE 5 'Colors
        ColorPick

   CASE 6 ' Options
      REDIM menu$(1 TO 12)
            menu$(1) = "Cut"
            menu$(2) = "Copy"
            menu$(3) = "Fill"
            menu$(4) = "Text"
            menu$(5) = "Boxes"
            menu$(6) = "Lines"
            menu$(7) = "Circles"
            menu$(8) = "Eraser"
            menu$(9) = "Instensity"
            menu$(10) = "Load Sprite"
            menu$(11) = "Load Pallete"
            IF AutoSave THEN menu$(12) = "Auto Save Off"
            IF NOT AutoSave THEN menu$(12) = "Auto Save On"
            Pick = PullDown(menu$())
           
            IF Pick = 1 THEN
                Saved = 0
                Cut (-1)
            ELSEIF Pick = 2 THEN
                Saved = 0
                Cut (0)
            ELSEIF Pick = 3 THEN
               Saved = 0
               Fill
            ELSEIF Pick = 4 THEN
               Saved = 0
               TextEditor
            ELSEIF Pick = 5 THEN
               Saved = 0
               DrawBoxes
            ELSEIF Pick = 6 THEN
               Saved = 0
               DrawLines
            ELSEIF Pick = 7 THEN
               Saved = 0
               DrawCircles
            ELSEIF Pick = 8 THEN
               Saved = 0
               Eraser
            ELSEIF Pick = 9 THEN
               ChangeIntensity
            ELSEIF Pick = 10 THEN
               Saved = 0
               PickSprite
            ELSEIF Pick = 11 THEN
               Saved = 0
               PickNewPalette
            ELSEIF Pick = 12 THEN
               AutoSave = NOT AutoSave
            ELSE
               GOTO StartAgain:
            END IF
     
      CASE 7 ' Exit
        
         IF NOT Saved THEN
            REDIM menu$(1 TO 3)
            menu$(1) = "Cancel"
            menu$(2) = "Save As..."
            menu$(3) = "Exit"
            Pick = PullDown(menu$())

            IF Pick = 1 THEN
               GOTO StartAgain:
           
            ELSEIF Pick = 2 THEN
               Save

               IF Saved = 1 THEN
                  GOTO StartAgain:
               END IF
           
            ELSEIF Pick = 3 THEN
               ShutDown

            ELSE
               GOTO StartAgain:
           
            END IF
        
         ELSE
            ShutDown

         END IF

END SELECT

LOOP

END SUB

SUB PickNewPalette

FileSpec$ = "*.Pal"
GetFileList

IF UBOUND(FileList$) >= 1 THEN
   Pick = PullDown(FileList$())
   IF Pick = 0 THEN
      EXIT SUB
   END IF
   FileName$ = FileList$(Pick)
   REDIM Pal(255) AS Hues
   DEF SEG = VARSEG(Pal(0))
   BLOAD FileName$, 0
   SetColors
ELSE
   REDIM menu$(1 TO 1)
   menu$(1) = "File not Found"
   z = PullDown(menu$())
END IF

FileSpec$ = "*.pct"
FileName$ = ""

END SUB

SUB PickSprite

FileSize& = 0
FileSpec$ = "*.SPR"
GetFileList

IF UBOUND(FileList$) >= 1 THEN
   Pick = PullDown(FileList$())
   IF Pick = 0 THEN
      FileName$ = ""
      FileSpec$ = "*.PCT"
      EXIT SUB
   END IF
   FileName$ = FileList$(Pick)
   z = File(9)
   Ary = (FileSize& - 7) \ 2 - 1
   REDIM Sprites(Ary)
   DEF SEG = VARSEG(Sprites(0))
   BLOAD FileName$, 0
   ElmsPerImage = ((Sprites(0) \ 8) * Sprites(1)) \ 2 + 2
   ImageNum = Ary \ ElmsPerImage
   ImageWidth = Sprites(0) \ 8
   ImageHieght = Sprites(1)
   Xstep = ImageWidth + 1
   Ystep = ImageHieght + 1
   FileName$ = ""
   FOR Row = 0 TO 199 - ImageHieght STEP Ystep
      FOR Col = 0 TO 319 - ImageWidth STEP Xstep
         Image = Count * ElmsPerImage
         Count = Count + 1
         PUT (Col, Row), Sprites(Image), PSET
         IF Count > ImageNum THEN
            FileSpec$ = "*.PCT"
            FileName$ = ""
            ERASE Sprites
            EXIT SUB
         END IF
      NEXT Col
   NEXT Row
ELSE
   REDIM menu$(1 TO 1)
   menu$(1) = "File not Found"
   z = PullDown(menu$())
END IF

END SUB

SUB PollMouse

ok = 0                    ' Don't Turn Pixel (0,0) On

DO                        ' Start Of Poll Loop

z = Mouse(Position)       ' Get Mouse Postion and Button Status
z = Mouse(Clicks)
ThisKey = GetKeyStroke

IF ok THEN PUT (OldMouseX, OldMouseY), MouseIcon, XOR

PUT (MouseX, MouseY), MouseIcon, XOR

OldMouseX = MouseX       ' Set old value so they can be removed
OldMouseY = MouseY

IF NOT ok THEN ok = -1   ' Toggle Ok flag only once

LOOP UNTIL MouseLeft OR MouseRight OR ThisKey AND 4 OR ThisKey AND 356

PUT (OldMouseX, OldMouseY), MouseIcon, XOR   ' Erase last

END SUB

FUNCTION PullDown (menu$())

x = 4: y = 4                        ' Starting Values
BarX = 8: BarY = 8
MinClicks = 1
Row = 1
LastRow = 0
MaxLines = UBOUND(menu$)
z = Mouse(Position)
OldMouseX = MouseX: OldMouseY = MouseY       ' Save Old Values

COLOR 7

Lstring = 0
RegPrint = -1
PagePrint = 0
IF UBOUND(menu$) = 1 THEN
   Row = 0
   LastRow = 0
END IF
MaxPicks = UBOUND(menu$)                   ' Find total choices
Mpages = MaxPicks
MMpages = Mpages

IF Mpages > 20 THEN
   FOR t = 1 TO Mpages
      Mpages = Mpages - 20
      IF Mpages <= 0 THEN
         MaxPages = MaxPages + 1
         EXIT FOR
      END IF
      IF Mpages > 0 THEN
         MaxPages = MaxPages + 1
      END IF
   NEXT t
   Page = 1
   Lpage = 0
   RegPrint = 0
   PagePrint = -1
   ThisText = 1
   NextText = 20
   MPicks = UBOUND(menu$)
   MaxPicks = 20
   Row = 1
   LRow = 0
   PgRow = 1
   MinClicks = 2
END IF


FOR Splace = 1 TO MMpages                     '
      Ssize = LEN(menu$(Splace))               ' Get longest string
      IF Ssize > Lstring THEN Lstring = Ssize  '
NEXT Splace                                    '
                                               '
MaxRows = MaxPicks                             '
MaxX = (Lstring + 2) * 8 - 5                   ' Calc Values
MaxY = (MaxRows + 2) * 8 - 5                   '
MaxBarX = MaxX - 4                             '

REDIM TmpScrnMem((MaxX - 3) * (MaxY - 3) \ 2 + 1)  ' Array For Screen
REDIM Bar((MaxBarX - 3) * 8 \ 2 + 1)                  ' Array For Bar

GET (x, y)-(MaxX, MaxY), TmpScrnMem      ' Save Screen Area
LINE (x, y)-(MaxX, MaxY), 0, BF          ' Clear it

LINE (BarX, BarY)-(MaxBarX, BarY + 7), 7, BF  'Draw Highlight Bar
GET (BarX, BarY)-(MaxBarX, BarY + 7), Bar       'Capture it

LINE (x, y)-(MaxX, MaxY), 0, BF          ' Clear area

LINE (4, 4)-(MaxX, MaxY), 99, B                   ' Draw Border
LINE (5, 5)-(MaxX - 1, MaxY - 1), 86, B           ' Ditto
LINE (6, 6)-(MaxX - 2, MaxY - 2), 99, B           ' Ditto

IF RegPrint THEN
   Col = 2
   FOR t = 1 TO MaxPicks                             '
      LOCATE Col, 2                                  '   Print String Text
      PRINT menu$(t)                                 '
      Col = Col + 1                                  '
   NEXT t                                            '
END IF

WaitLetGo (1)                                     ' Wait until They Let Go

ClearOld = 0

MouseX = MaxBarX \ 2                             ' Set Mouse Position
MouseY = (MaxRows \ 2 + 1) * 8                   ' Ditto
z = Mouse(Set)                                   ' Ditto

z = Mouse(CurOn)                                  ' Mouse on

DO                                                ' Start of Main Loop
   z = Mouse(Clicks)                              ' Check Mouse Clicks
   z = Mouse(Position)                            ' Check Mouse Position
   ThisKey = GetKeyStroke                         ' Check Key Board
   MouseRow = MouseY \ 8                          ' Set Mouse Y to Row
     
   IF MouseRight THEN                             ' If They Bail Let'em Go
      Row = 0                                     ' Ditto
      EXIT DO                                     ' Ditto
   END IF                                         ' Ditto
        
IF MouseLeft THEN                                ' If Left Button Was Clicked

   SELECT CASE MouseX
  
      CASE BarX TO MaxBarX                       ' Is Mouse In The X Limits
                                                 ' of Menu ?
         IF MouseRow <= MaxRows AND MouseRow >= 1 THEN
            Row = MouseRow                          'Is Mouse In Y Value of
            IF MouseLeft = MinClicks THEN EXIT DO    ' Menu ?
         END IF                                      ' If so, And They Clicked
                                                     ' Twice Set Row Let'em Go
         IF MouseRow > MaxRows THEN
               Row = 0                               ' If Mouse On Bottom of
               EXIT DO                               ' Don't Set Row
         END IF                                      ' Exit

      CASE IS > MaxBarX                              ' Mouse is Left of
            Row = 0                                  ' Menu
            EXIT DO                                  ' Don't Set Row
                                                     ' Let 'em Out
                                                     
   END SELECT

END IF

IF ThisKey THEN

   IF ThisKey AND 8 THEN
      Row = 0
      EXIT DO
   END IF

   IF ThisKey AND 4 THEN
      EXIT DO
   END IF

   IF ThisKey AND 1 THEN
      IF Row > 1 THEN
         Row = Row - 1
      END IF
   END IF

   IF ThisKey AND 2 THEN
      IF Row < MaxRows THEN
         Row = Row + 1
      END IF
   END IF

   IF ThisKey AND 64 THEN
      IF PagePrint THEN
         IF Page > 1 THEN
            Page = Page - 1
            Row = 1
            LastRow = 0
            ClearOld = 0
         END IF
      END IF
   END IF

   IF ThisKey AND 128 THEN
      IF PagePrint THEN
         IF Page < MaxPages THEN
            Page = Page + 1
            Row = 1
            LastRow = 0
            ClearOld = 0
         END IF
      END IF
   END IF

END IF

   Col = 2
   IF PagePrint THEN
      IF Lpage <> Page THEN
         ThisText = (Page * 10 - 10) + 1
         NextText = ThisText + 9
         IF NextText > MPicks THEN
            NextText = MPicks
         END IF
         z = Mouse(CurOff)
         LINE (7, 7)-(MaxX - 3, MaxY - 3), 0, BF
         FOR t = ThisText TO NextText
            LOCATE Col, 2
            PRINT menu$(t)
            Col = Col + 1
         NEXT t
         z = Mouse(CurOn)
      Lpage = Page
      END IF
      PgRow = Row + ((Page * 10) - 10)
      WaitLetGo (2)
      z = Mouse(CurOn)
   END IF

   IF Row <> LastRow THEN                         ' Bar needs To Move
                                                  '
      z = Mouse(CurOff)                           ' Turn Mouse Off
                                                  '
      IF ClearOld THEN                            ' If Theres One To Erase
         PUT (OldBarX, OldBarY), Bar, XOR         ' Erase it
      END IF                                      '
                                                  '
      BarY = Row * 8                              ' Calc New Bar Position
                                                  '
      PUT (BarX, BarY), Bar, XOR                  ' Display It
                                                  '
      OldBarX = BarX: OldBarY = BarY              '
      ClearOld = -1                               ' Set New Values
      LastRow = Row                               '
      MouseLeft = 0                               '
      z = Mouse(CurOn)                            ' Turn Mouse Back On
      WaitLetGo (1)                               ' Wait Till they Let go
      WaitLetGo (2)
   END IF

LOOP
                                                  ' Choice Made
z = Mouse(CurOff)                                 ' Turn Mouse off
PUT (x, y), TmpScrnMem, PSET                      ' Clean Up The Mess
WaitLetGo (1)                                     ' Wait Till They Let go
WaitLetGo (2)

MouseX = OldMouseX: MouseY = OldMouseY            ' Put Mouse Back
z = Mouse(Set)

IF PagePrint AND Row THEN
   Row = PgRow
END IF

PullDown = Row                                    ' Return Choice
                                                
END FUNCTION

SUB Save

FileSize& = 0

FileName$ = GetFileName$("Save File As:")

IF FileName$ = "" THEN
   Saved = 1
   EXIT SUB
END IF

z = File(9)

IF FileSize& THEN
   REDIM menu$(1 TO 2)
   menu$(1) = "Cancel"
   menu$(2) = "OverWrite ": menu$(2) = menu$(2) + FileName$
   Pick = PullDown(menu$())

   IF Pick <> 2 THEN
      Saved = 1
      EXIT SUB
   END IF

END IF


   REDIM SaveScrn(32001)
   GET (0, 0)-(319, 199), SaveScrn
   DEF SEG = VARSEG(SaveScrn(0))
   BSAVE FileName$, 0, 64004
   ERASE SaveScrn

Saved = -1

END SUB

SUB SetColors

OUT &H3C8, 0

FOR VideoHue = 0 TO 255
   OUT &H3C9, Pal(VideoHue).red
   OUT &H3C9, Pal(VideoHue).green
   OUT &H3C9, Pal(VideoHue).blue
NEXT


END SUB

SUB ShowCredits

REDIM Scrn(32001)
DEF SEG = VARSEG(Scrn(0))
BLOAD "CRD1B423.DAT", 0
PUT (0, 0), Scrn, PSET
ERASE Scrn

COLOR 15
IF Update$ <> "" THEN
   Length = LEN(Update$) + LEN("Updated By: ")
   IF (Length <= 36) THEN
      Center = 21 - Length \ 2
      LOCATE 23, Center
      PRINT "Updated By: "; Update$
   END IF
END IF

DO
   z = Mouse(Clicks)
LOOP UNTIL (MouseLeft OR MouseRight)

WaitLetGo (1)



END SUB

SUB ShutDown

CLS
SCREEN 0
END

END SUB

SUB Sketch

DO
z = Mouse(Position)
z = Mouse(Clicks)
PSET (MouseX, MouseY), CurrentColor
LOOP WHILE MouseLeft

END SUB

SUB TextEditor
   

REDIM Temp(32001)
GET (0, 0)-(319, 199), Temp

Size = 3
Style = 1
CColor = 4

DO

z = Mouse(CurOn)
DO
   z = Mouse(Clicks)
   z = Mouse(Position)
LOOP UNTIL MouseLeft OR MouseRight
z = Mouse(CurOff)

IF MouseRight THEN
   REDIM menu$(1 TO 5)
   menu$(1) = "Size"
   menu$(2) = "Style"
   menu$(3) = "Color"
   menu$(4) = "Undo"
   menu$(5) = "Exit"
   Pick = PullDown(menu$())
   IF Pick = 1 THEN
      GET (0, 0)-(319, 199), Temp
      Size = ChangeSize(Size, CColor, Style)
      PUT (0, 0), Temp, PSET
   ELSEIF Pick = 2 THEN
      GET (0, 0)-(319, 199), Temp
      Style = ChangeStyle(Size, CColor, Style)
      PUT (0, 0), Temp, PSET
   ELSEIF Pick = 3 THEN
      GET (0, 0)-(319, 199), Temp
      CColor = ChangeColor(Size, CColor, Style)
      PUT (0, 0), Temp, PSET
   ELSEIF Pick = 4 THEN
      PUT (0, 0), Temp, PSET
   ELSEIF Pick = 5 THEN
      ERASE Temp
      EXIT SUB
   END IF
END IF

IF MouseLeft THEN
   Valid$ = "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!.\-_+[]{}()*&^%$#@<>?:;',`~| "
   COLOR 15

REDIM Orig(3041)

GET (0, 0)-(319, 18), Orig

Enter$ = CHR$(13)

DO
   char$ = INKEY$
   Length = LEN(Name$)
   
   IF LEN(char$) THEN

      IF INSTR(Valid$, char$) THEN
         Name$ = Name$ + char$
      END IF
      IF LEN(Name$) THEN
         TypeFont Name$, Size, CColor, Style, MouseX, MouseY
         GET (0, 0)-(319, 18), Orig
      END IF
   END IF

LOOP UNTIL char$ = Enter$

PUT (0, 0), Orig, PSET

ERASE Orig

WaitLetGo (2)

Name$ = ""
END IF

LOOP

END SUB

SUB TypeFont (Word$, Size, Clr, Style, PlaceX, PlaceY)
COLOR 15
    DIM Box(-1 TO 7, -1 TO 15)
    WordLength = LEN(Word$) * Size * 8
    WordHeight = Size * 16
    REDIM Ary(100)
    FOR Letter = 1 TO LEN(Word$)
        GET (0, 0)-(8, 16), Ary
        LINE (0, 0)-(8, 16), 0, BF
        LOCATE 1, 1
        PRINT MID$(Word$, Letter, 1)
        IF MID$(Word$, Letter, 1) = " " THEN LINE (0, 0)-(8, 16), 0, BF
        FOR x = 0 TO 7
            FOR y = 0 TO 15
                Box(x, y) = POINT(x, y)
            NEXT y
        NEXT x
        PUT (0, 0), Ary, PSET
        FOR x = 0 TO 7
            Left = WordCenter + (x * Size)
            Right = Left + Size
            Right = Right + PlaceX: Left = Left + PlaceX
            LR = (Left + Right) \ 2
            FOR y = 0 TO 15
                UP = Position + (y * Size)
                Down = UP + Size
                UP = UP + PlaceY: Down = Down + PlaceY
                UD = (UP + Down) \ 2
                IF Box(x, y) THEN
                    SELECT CASE Style
                        CASE 1
                            'Solid
                            LINE (Left, UP)-(Right, Down), Clr, BF
                        CASE 2
                            'Squares
                            LINE (Left, UP)-(Right, Down), Clr, B
                        CASE 3
                            'Slant (\)
                            LINE (Left, UP)-(Right, Down), Clr
                        CASE 4
                            'Slant II (/)
                            LINE (Right, UP)-(Left, Down), Clr
                        CASE 5
                            'Vertical Lines
                            LINE (LR, UP)-(LR, Down), Clr
                        CASE 6
                            'Horizontal Lines
                            LINE (Left, UD)-(Right, UD), Clr
                        CASE 7
                            'Crosses
                            LINE (LR, UP)-(LR, Down), Clr
                            LINE (Left, UD)-(Right, UD), Clr
                        CASE 8
                            'X's
                            LINE (Left, UP)-(Right, Down), Clr
                            LINE (Right, UP)-(Left, Down), Clr
                        CASE 9
                            'Outline
                            IF Box(x - 1, y) = 0 THEN LINE (Left, UP)-(Left, Down), Clr
                            IF Box(x + 1, y) = 0 THEN LINE (Right, UP)-(Right, Down), Clr
                            IF Box(x, y - 1) = 0 THEN LINE (Left, UP)-(Right, UP), Clr
                            IF Box(x, y + 1) = 0 THEN LINE (Left, Down)-(Right, Down), Clr
                        CASE 10
                            'Spider Web
                            IF Box(x - 1, y) THEN LINE (LR, UD)-(Left, UD), Clr
                            IF Box(x + 1, y) THEN LINE (LR, UD)-(Right, UD), Clr
                            IF Box(x, y - 1) THEN LINE (LR, UD)-(LR, UP), Clr
                            IF Box(x, y + 1) THEN LINE (LR, UD)-(LR, Down), Clr
                            IF Box(x - 1, y - 1) THEN LINE (LR, UD)-(Left, UP), Clr
                            IF Box(x + 1, y - 1) THEN LINE (LR, UD)-(Right, UP), Clr
                            IF Box(x - 1, y + 1) THEN LINE (LR, UD)-(Left, Down), Clr
                            IF Box(x + 1, y + 1) THEN LINE (LR, UD)-(Right, Down), Clr
                        CASE 11
                            'Bubbles
                            CIRCLE (LR, UD), Size \ 2, Clr
                        CASE 12
                            'Circles
                            CIRCLE (LR, UD), Size \ 2, Clr
                            PAINT STEP(0, 0), Clr
                        CASE 13
                            'Shadow
                            IF Box(x + 1, y) = 0 THEN LINE (Right, UP)-(Right, Down), Clr
                            IF Box(x, y + 1) = 0 THEN LINE (Left, Down)-(Right, Down), Clr
                            IF Box(x + 1, y + 1) = 0 THEN PSET (Right, Down), Clr
                        CASE 14
                            'Separated Squares
                            LINE (Left + 1, UP + 1)-(Right - 1, Down - 1), Clr, BF
                        CASE 15
                            LINE (Left, Down)-(LR, UP), Clr
                            LINE STEP(0, 0)-(Right, Down), Clr
                            LINE STEP(0, 0)-(Left, Down), Clr
                            LINE (Left, UP)-(Right, UP), Clr
                        END SELECT
                    END IF
                NEXT y
            NEXT x
            WordCenter = WordCenter + (Size * 8)
        NEXT Letter
        ERASE Ary

END SUB

SUB WaitLetGo (Mode)

SELECT CASE Mode

   CASE 1 'Wait till they Let Go Of Mouse
      DO
      z = Mouse(Clicks)
      LOOP WHILE MouseLeft OR MouseRight

   CASE 2 'Wait till the stop touching the KeyBoard
      DO
      ThisKey = GetKeyStroke
      LOOP WHILE ThisKey

END SELECT

END SUB

