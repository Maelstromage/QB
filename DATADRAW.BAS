DECLARE SUB seal ()
seal
'Variables...
Col = 1: Row = 1
nCol = 1: nRow = 1
tool = 1: colr = 0
'Tool 1 = brush, 2 = fill, 3 = line
numberOfPlots = 0
'Begin NOW!
menu:
CLOSE #1
SCREEN 0
WIDTH 80, 25
    DEF SEG = 0
    Status% = PEEK(&H417)              'Read keyboard status.
    POKE &H417, (Status% XOR &H40)     'Change Caps Lock state, bit 6.
CLS
 COLOR 14, 1
 PRINT "(O)pen File    (Q)uit    (A)bout DATADRAW                                       "
getMenu:
 menu$ = INKEY$: IF menu$ = "" THEN GOTO getMenu
 IF menu$ = UCASE$("Q") THEN GOTO ender
 IF menu$ = UCASE$("A") THEN GOTO about
 IF menu$ = UCASE$("O") THEN GOTO file
GOTO getMenu
file:

'Get the filename
INPUT "What is your filename"; file$

'Open the file the user specified; or create it
OPEN file$ FOR RANDOM AS #1

'Check and see if the file can be cleared
IF LOF(1) > 0 THEN GOTO clearYN

'Get the type of writing-to-file (DATA or just alphanumerics)
INPUT "Press Y if you want DATA statements in the file and not just numbers.   "; dataType$

 SCREEN 13
 GOTO program2
clearYN:
 INPUT "Clear file (Press Y to clear)"; cYN$
 IF cYN$ = UCASE$("Y") THEN CLS : GOTO program2
 CLS : SCREEN 13
CLOSE #1: OPEN file$ FOR INPUT AS #1
DO
 'Paint all the stuff on the screen that was in the file
 INPUT #1, a
 IF a = 1 THEN INPUT #1, b, c, d: PSET (b, c), d
 IF a = 2 THEN INPUT #1, b, c, d: PAINT (b, c), d
 IF a = 3 THEN INPUT #1, b, c, d, e, f: LINE (b, c)-(d, e), f
LOOP UNTIL (EOF(1))
CLOSE #1: OPEN file$ FOR APPEND AS #1
GOTO program

program2:
CLOSE #1: OPEN file$ FOR OUTPUT AS #1
IF dataType$ = UCASE$("Y") THEN PRINT #1, "DATA ";
CLS

program:
 'Erase markers so new ones can be shown
 PSET (Col, 0!), 0
 PSET (0!, Row), 0

 'Get the keyPress code
 what$ = INKEY$
 IF what$ = CHR$(27) THEN SCREEN 0: COLOR 14, 1: PRINT "This is the total number of plots you made:"; numberOfPlots: GOTO menu                'Exit current picture
 IF what$ = CHR$(0) + "H" THEN Row = Row - 1       'Move up
 IF what$ = CHR$(0) + "P" THEN Row = Row + 1       'Move down
 IF what$ = CHR$(0) + "K" THEN Col = Col - 1       'Move left
 IF what$ = CHR$(0) + "M" THEN Col = Col + 1       'Move right
 IF what$ = UCASE$("B") THEN tool = 1
 IF what$ = UCASE$("F") THEN tool = 2
 IF what$ = UCASE$("L") THEN tool = 3
 IF what$ = "+" OR what$ = "=" THEN colr = colr + 1   'Increase color number
 IF what$ = "_" OR what$ = "-" THEN colr = colr - 1   'Decrease color number

 'Figure about some stuff...
 IF Col = 320 THEN Col = 1
 IF Col = 0 THEN Col = 319
 IF Row = 0 THEN Row = 199
 IF Row = 200 THEN Row = 1
 IF colr = 256 THEN colr = 0
 IF colr = -1 THEN colr = 255

 'Place lines of the current color along the top and sides
 LINE (0!, 0!)-(319!, 0!), colr
 LINE (0!, 0!)-(0!, 199!), colr

 'Mark the two setting points so the user knows where his cursor should be
 PSET (Col, 0!), 15
 PSET (0!, Row), 15

 'Do they want to put something there?
 IF what$ = CHR$(32) THEN GOSUB plot

 GOTO program

plot:
 numberOfPlots = numberOfPlots + 1
 IF tool = 1 AND dataType$ <> UCASE$("Y") THEN PSET (Col, Row), colr: PRINT #1, "1"; Col; Row; colr; : RETURN
 IF tool = 2 AND dataType$ <> UCASE$("Y") THEN PAINT (Col, Row), colr: PRINT #1, "2"; Col; Row; colr; : RETURN
 IF tool = 3 THEN GOTO liner2
 IF tool = 1 THEN PSET (Col, Row), colr: PRINT #1, "1,"; Col; ","; Row; ","; colr; ","; : RETURN
 IF tool = 2 THEN PAINT (Col, Row), colr: PRINT #1, "2,"; Col; ","; Row; ","; colr; ","; : RETURN

liner2:

 nCol = Col: nRow = Row
 PSET (Col, Row), colr

liner:

'Erase markers so new ones can be shown
 PSET (Col, 0!), 0
 PSET (0!, Row), 0

 'Get the keyPress code
 what2$ = INKEY$
 IF what2$ = CHR$(27) THEN GOTO program                'Exit current picture
 IF what2$ = CHR$(0) + "H" THEN Row = Row - 1       'Move up
 IF what2$ = CHR$(0) + "P" THEN Row = Row + 1       'Move down
 IF what2$ = CHR$(0) + "K" THEN Col = Col - 1       'Move left
 IF what2$ = CHR$(0) + "M" THEN Col = Col + 1       'Move right

 'Figure about some stuff...
 IF Col = 320 THEN Col = 1
 IF Col = 0 THEN Col = 319
 IF Row = 0 THEN Row = 199
 IF Row = 200 THEN Row = 1

 'Mark the two setting points so the user knows where his cursor should be
 PSET (Col, 0!), 15
 PSET (0!, Row), 15

 'See if they want to put down the line
 IF what2$ = CHR$(32) THEN GOSUB lPlot
 GOTO liner

lPlot:
 LINE (nCol, nRow)-(Col, Row), colr
 IF dataType$ <> UCASE$("Y") THEN PRINT #1, "3"; nCol; nRow; Col; Row; colr;
 IF dataType$ = UCASE$("Y") THEN PRINT #1, "3,"; nCol; ","; nRow; ","; Col; ","; Row; ","; colr; ",";
GOTO program


ender:
CLS
SYSTEM
about:
SCREEN 8
doneData = 35
DO
 leaveYet$ = INKEY$: IF leaveYet$ <> "" THEN RUN
 READ about$
  LOCATE 12, 40 - (LEN(about$) / 2 + .5)
  COLOR 15
  PRINT about$: SLEEP 3
  LOCATE 25, 1: FOR scrollup = 1 TO 12: PRINT : NEXT scrollup
  dataWhere = dataWhere + 1
  IF dataWhere = 35 THEN RUN
 LOOP
DATA Majesty Software Corporation,We copyrighted this in 1994.,It was written by Mike Smith.
DATA It only took him an hour to make.,Honest.,Why would we kid you?,Okay.
DATA It took him 4 days.,This time we're not kidding!,He tested it at least 50 times.
DATA It was a lot of hard work.,Encouragement came from numerous people.
DATA (about 3),Everybody else just pretended to listen.,The three encouragers were (in no specific order):
DATA Mary 'Not Quite Contrary' Jo,James 'Lemme Play' Leffler,And Geoff 'Not Quite Deaf' Hultgrew.
DATA We can't believe you lasted this long!,We thought you'd...,Stop fooling around Geoff!
DATA I'll be back,akihfidl#hiore$%wa,Sorry about the typo.,Geoff didn't mean whatever he said.
DATA Oh - he said good things about this?,Thank you Geoff.,Good bye.,I can't wait until the next program!
DATA Bye.
DATA I mean it.
DATA Press a key.
DATA I'm waiting.
DATA PRESS A KEY NOW!!!
DATA Yuck! I sneezed on the keyboard...

SUB seal
SCREEN 13
    CLS
    FOR majesty = 4 TO 12 STEP 8
       LOCATE 22, 13
       COLOR majesty
       PRINT "A MAJESTY PRODUCT"
       FOR del1 = 1 TO 500: NEXT del1
    NEXT majesty
    P1% = 140
    P2% = 165
210     FOR DELAY% = 1 TO 2000
        NEXT DELAY%
    P1% = P1% - 1
    P2% = P2% - 1
    PSET (P1%, P2%), (14)
    IF P1% = 120 THEN GOTO 280
    GOTO 210
280 PIXEL3% = 120
    PIXEL4% = 145: P4D% = 0
300     FOR DELAY2% = 1 TO 3000
        NEXT DELAY2%
    PIXEL3% = PIXEL3% + 1
    P4D% = P4D% + 1
    IF P4D% = 2 THEN P4D% = 0: PIXEL4% = PIXEL4% + 1
    PSET (PIXEL3%, PIXEL4%), (14)
    IF PIXEL3% = 140 THEN GOTO 380
    GOTO 300
380 P5% = 140
    P6% = 155: P5D% = 0
400     FOR DELAY3% = 1 TO 3000
        NEXT DELAY3%
    P6% = P6% - 1
    P5D% = P5D% + 1
    IF P5D% = 5 THEN P5D% = 0: P5% = P5% + 1
    PSET (P5%, P6%), (14)
    IF P6% = 140 THEN GOTO 480
    GOTO 400
480 P7% = 143
    P8% = 140: P7D% = 0
500     FOR DELAY4% = 1 TO 3000
        NEXT DELAY4%
    P8% = P8% + 1
    P7D% = P7D% + 1
    IF P7D% = 5 THEN P7D% = 0: P7% = P7% + 1
    PSET (P7%, P8%), (14)
    IF P8% = 155 THEN GOTO 580
    GOTO 500
580 PIXEL9% = 146
    PIXEL10% = 155: P10D% = 0
600     FOR DELAY5% = 1 TO 3000
        NEXT DELAY5%
    PIXEL9% = PIXEL9% + 1
    P10D% = P10D% + 1
    IF P10D% = 2 THEN P10D% = 0: PIXEL10% = PIXEL10% - 1
    PSET (PIXEL9%, PIXEL10%), (14)
    IF PIXEL9% = 166 THEN GOTO 680
    GOTO 600
680 PIXEL11% = 166
    PIXEL12% = 145
710     FOR DELAY% = 1 TO 2000
        NEXT DELAY%
    PIXEL11% = PIXEL11% - 1
    PIXEL12% = PIXEL12% + 1
    PSET (PIXEL11%, PIXEL12%), (14)
    IF PIXEL11% = 147 THEN GOTO 780
    GOTO 710
780 COLOR 10
    CIRCLE (143!, 160!), (2)
    PAINT (143!, 160!): BEEP
790
    continue$ = INKEY$: IF continue$ = "" THEN GOTO 790

END SUB

