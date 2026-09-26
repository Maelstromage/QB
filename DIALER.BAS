'Example code to dial initalize and dile a phone number on the modem

'*** Place your modem speed here 300 - 9600 ***
baud$ = "2400"
'*** Place a "T" here for tone or a "P" here for pulse
pulse$ = "T"
'*** Place your com prot here usualy COM1: or COM2: ***
port$ = "COM1:"
'*** Place the phone number here. Make SURE you change it or you ***
'*** might be billed for long distance. This is not my number ***
phone$ = "555-9484"
'*** set up and open communications port ***
communication$ = port$ + baud$ + ",N,8,1"
OPEN communication$ FOR RANDOM AS #1 LEN = 256
PRINT #1, "ATZX3"
'*** wait 3 seconds and then dial number ***
g = TIMER
DO UNTIL ABS(TIMER - g) > 3: LOOP
PRINT #1, "ATD" + pulse$ + phone$
'*** pick up the phone at this time ***
'*** wait till a key is pressed then hang up and close modem ***
DO UNTIL INKEY$ <> "": LOOP
PRINT #1, "ATH"
CLOSE #1
PRINT "Please Visit my new QBasic And QB 4.x web page at:
PRINT "       http://www.cris.com/~jklrm001/regol/"
PRINT "                                or "
PRINT "      http://www.cris.com/%7Ejklrm001/regol/"
END



