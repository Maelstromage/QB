DECLARE SUB FourBit ()
DECLARE SUB EightBit ()
'=============================================================================
'                                    BMP VIEWER
'                                        by
'                                   Sam Westbrook
'                            Display RGB Encoded Bitmaps
'                                16 Color: 640 X 480
'                               256 Color: 320 X 200
'-----------------------------------------------------------------------------
'                                   Beta Version
'                            Released September 30, 1995
'=============================================================================
DIM ZBaseSize AS STRING * 1
DIM YBaseSize AS STRING * 1
DIM ZExSize AS STRING * 1
DIM YExSize AS STRING * 1
DIM PicType AS STRING * 1
DIM PalArray&(16)
DIM Title(1 TO 10000)
DIM SHARED ZSize AS INTEGER
DIM SHARED YSize AS INTEGER
CLS
  SCREEN 12
  PalArray&(0) = 65536 * 0 + 256 * 0 + 0
  PalArray&(1) = 65536 * 0 + 256 * 0 + 16
  PalArray&(2) = 65536 * 0 + 256 * 16 + 0
  PalArray&(3) = 65536 * 0 + 256 * 16 + 16
  PalArray&(4) = 65536 * 16 + 256 * 0 + 0
  PalArray&(5) = 65536 * 16 + 256 * 0 + 16
  PalArray&(6) = 65536 * 16 + 256 * 16 + 0
  PalArray&(7) = 65536 * 24 + 256 * 24 + 24
  PalArray&(8) = 65536 * 16 + 256 * 16 + 16
  PalArray&(9) = 65536 * 0 + 256 * 0 + 32
  PalArray&(10) = 65536 * 0 + 256 * 32 + 0
  PalArray&(11) = 65536 * 0 + 256 * 32 + 32
  PalArray&(12) = 65536 * 32 + 256 * 0 + 0
  PalArray&(13) = 65536 * 32 + 256 * 0 + 32
  PalArray&(14) = 65536 * 32 + 256 * 32 + 0
  PalArray&(15) = 65536 * 32 + 256 * 32 + 32
  PALETTE USING PalArray&(0)
  DEF SEG = VARSEG(Title(1))

'** Enter the correct path here:
 
  BLOAD "C:\VBDOS\TITLE.PIC", VARPTR(Title(1))
  DEF SEG
  PUT (165, 125), Title
  DO: LOOP UNTIL INKEY$ <> ""
 
  PALETTE
  SCREEN 0

'** For Visual Basic users, you might want to put the ON ERROR RESUME NEXT
'** statement here.
 
  'LINE INPUT "Enter directory to search for BMP files: "; Dcry$
  Dcry$ = "c:\skrltdgn"
  CLS
  CHDIR Dcry$
  FILES "*.BMP"
  PRINT
  LINE INPUT "Enter a file to view: "; File$
  Extntn$ = RIGHT$(File$, 4)
  Extntn$ = UCASE$(Extntn$)
  IF Extntn$ <> ".BMP" THEN File$ = File$ + ".BMP"
  File$ = UCASE$(File$)

  OPEN File$ FOR BINARY ACCESS READ AS #1
  GET #1, 19, ZBaseSize
  GET #1, 20, ZExSize
  GET #1, 23, YBaseSize
  GET #1, 24, YExSize
  GET #1, 29, PicType
  ZSize = ASC(ZBaseSize) + (256 * ASC(ZExSize))
  YSize = ASC(YBaseSize) + (256 * ASC(YExSize))
  BitType = ASC(PicType)
  IF BitType = 4 THEN PicColors% = 16
  IF BitType = 8 THEN PicColors% = 256

  CLS
  PRINT "XDimension:    "; ZSize
  PRINT "YDimension:    "; YSize
  PRINT "Resolution:    "; ZSize; "X"; YSize
  PRINT "Graphic Bits:  "; BitType
  PRINT "Max. Colors:   "; PicColors%
  PRINT
  PRINT "Press any key to view " + File$

  DO: LOOP UNTIL INKEY$ <> ""

  IF BitType = 4 THEN CALL FourBit
  IF BitType = 8 THEN CALL EightBit:  ELSE LOCATE 9, 1: PRINT "Invalid Bitmap"
  END

SUB EightBit
DIM HexCode AS STRING * 1
DIM PalArray&(256)
DIM Red AS STRING * 1
DIM Green AS STRING * 1
DIM Blue AS STRING * 1

CLS
  SCREEN 13

  FOR i% = 1 TO 256
  GET #1, 55 + (i% * 4), Red
  GET #1, 55 + (i% * 4) + 1, Green
  GET #1, 55 + (i% * 4) + 2, Blue
  CCHex1% = INT(ASC(Red)) / 8
  CCHex2% = INT(ASC(Green)) / 8
  CCHex3% = INT(ASC(Blue)) / 8
  PalArray&(i%) = 65536 * CCHex1% + 256 * CCHex2% + CCHex3%
  NEXT i%
 
  PALETTE USING PalArray&(0)

'** I haven't yet developed a routine to detect where to start plotting
'** pixels for 256 color bitmaps.  If the picture isn't alligned right,
'** adjust the X variable to straighten it.  The value 1079 is the
'** correct alignment for DMDEMO.BMP.

  X = 1079
  Z = ZSize
  Y = YSize

  DO
  IF Z >= ZSize THEN Y = Y - 1
  IF Z >= ZSize THEN Z = 0
  X = X + 1
  Z = Z + 1
  GET #1, X, HexCode
  CC1% = ASC(HexCode)
  PSET (Z, Y), CC1%
  LOOP UNTIL Y = 0 AND Z = ZSize
  CLOSE #1

  DO: LOOP UNTIL INKEY$ <> ""


DIM pic(1 TO 675)
' Save the drawing in the array Cube.
GET (0, 0)-(50, 50), pic
' Set segment to the array Cube's segment and store the drawing
' in the file MAGCUBE.GRH. Note: 2700 is the number of bytes
' in Cube (4 bytes per array element * 675).
DEF SEG = VARSEG(pic(1))
BSAVE "test.GRH", VARPTR(pic(1)), 2700
DEF SEG                 ' Restore default BASIC segment.
 
 
 
 
  END
END SUB

SUB FourBit
DIM HexCode AS STRING * 1
DIM Hex1 AS STRING * 1
DIM Hex2 AS STRING * 1
DIM PalArray&(16)
DIM Red AS STRING * 1
DIM Green AS STRING * 1
DIM Blue AS STRING * 1

CLS
  SCREEN 12

  FOR i% = 1 TO 16
  GET #1, 55 + (i% * 4), Red
  GET #1, 55 + (i% * 4) + 1, Green
  GET #1, 55 + (i% * 4) + 2, Blue
  CCHex1% = INT(ASC(Red)) / 8
  CCHex2% = INT(ASC(Green)) / 8
  CCHex3% = INT(ASC(Blue)) / 8
  PalArray&(i%) = 65536 * CCHex1% + 256 * CCHex2% + CCHex3%
  NEXT i%
 
  PALETTE USING PalArray&(0)

  X = 118
  Z = ZSize
  Y = YSize

  DO
  IF Z >= ZSize THEN Y = Y - 1
  IF Z >= ZSize THEN Z = 0
  X = X + 1
  Z = Z + 1
  GET #1, X, HexCode
  Hex1 = LEFT$(HEX$(ASC(HexCode)), 1)
  Hex2 = RIGHT$(HEX$(ASC(HexCode)), 1)
  CC1% = VAL(Hex1)
  CC2% = VAL(Hex2)
  IF Hex1 = "A" THEN CC1% = 10
  IF Hex1 = "B" THEN CC1% = 11
  IF Hex1 = "C" THEN CC1% = 12
  IF Hex1 = "D" THEN CC1% = 13
  IF Hex1 = "E" THEN CC1% = 14
  IF Hex1 = "F" THEN CC1% = 15
  IF Hex2 = "A" THEN CC2% = 10
  IF Hex2 = "B" THEN CC2% = 11
  IF Hex2 = "C" THEN CC2% = 12
  IF Hex2 = "D" THEN CC2% = 13
  IF Hex2 = "E" THEN CC2% = 14
  IF Hex2 = "F" THEN CC2% = 15
  PSET (Z, Y), CC1%: Z = Z + 1
  PSET (Z, Y), CC2%
  LOOP UNTIL Y = 0 AND Z = ZSize
  CLOSE #1

  DO: LOOP UNTIL INKEY$ <> ""

DIM Cube(1 TO 675)
'Save the drawing in the array Cube.
GET (0, 0)-(50, 50), Cube
' Set segment to the array Cube's segment and store the drawing
' in the file MAGCUBE.GRH. Note: 2700 is the number of bytes
' in Cube (4 bytes per array element * 675).
DEF SEG = VARSEG(Cube(1))
BSAVE "castle.GRH", VARPTR(Cube(1)), 2700
DEF SEG                 ' Restore default BASIC segment.
 
 
 
 
 
 
 
  END
END SUB

