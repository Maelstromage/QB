tnoe = 2000
tnoa = 2000
COLOR 15
RANDOMIZE TIMER
noe = 2000
noa = 2000

GOSUB win
END
CLS
main:
GOSUB menubar
GOSUB compic
GOSUB options
GOSUB opcheck
GOSUB deathcheck
GOTO main
END


menubar:
LOCATE 1, 1: PRINT noe; "/"; tnoe
LOCATE 1, 68: PRINT noa; "/"; tnoa
RETURN
options:
LOCATE 3, 1: PRINT "                                                                                "

LOCATE 3, 1: INPUT "(1.) magic, (2.) bow, or (3.) charge"; op
IF op$ = "q" THEN END
rs:
LOCATE 4, 1: PRINT "                                                                                "
LOCATE 4, 1: INPUT "how many solders (between 200 & 500)"; hms
IF hms > 500 THEN GOTO rs
IF hms < 200 THEN GOTO rs
op$ = LCASE$(op$)

RETURN
compic:
compop = INT(RND * 3) + 1
IF compop = 1 THEN compop$ = "magic"
IF compop = 2 THEN compop$ = "bow"
IF compop = 3 THEN compop$ = "charge"
r:hme = INT(RND * 500) + 1: IF hme < 200 THEN GOTO r
RETURN

opcheck:

IF op$ = "magic" THEN op = 1
IF op$ = "bow" THEN op = 2
IF op$ = "charge" THEN op = 3



IF op = 1 AND compop = 1 THEN
    LOCATE 5, 1: PRINT "                                                                                "
    COLOR 14
    LOCATE 5, 1: PRINT "The enemy charges, with "; hme; " enemies!"
    IF hme > hms THEN
        noa = noa - (hme - hms)': noe = noe - hms
        COLOR 4
        LOCATE 7, 1: PRINT "                                                                                "
        LOCATE 7, 1: PRINT "You have suffered"; hme - hms; "solders!"
    END IF
   
    IF hme < hms THEN
        noe = noe - (hms - hme)': noa = noa - hme
        COLOR 1
        LOCATE 7, 1: PRINT "                                                                                "
        LOCATE 7, 1: PRINT "The enemy has suffered"; hms - hme; "solders!"
    END IF
    COLOR 15
    GOSUB menubar
END IF
IF op = 1 AND compop = 2 THEN
    COLOR 1
    LOCATE 5, 1: PRINT "                                                                                "
    LOCATE 5, 1: PRINT "The enemy raises it bows toward the sky, with "; hme; " enemy archers!"
    LOCATE 6, 1: PRINT "                                                                                "
    LOCATE 6, 1: PRINT "to be crushed by your solders"
    noe = noe - hme
    LOCATE 7, 1: PRINT "                                                                                "
    LOCATE 7, 1: PRINT "The enemy has suffered"; hme; "archers!"
    COLOR 15
    GOSUB menubar
END IF
IF op = 1 AND compop = 3 THEN
    COLOR 4
    LOCATE 5, 1: PRINT "                                                                                "
    LOCATE 5, 1: PRINT "The enemy prepares it's best "; hme; ""
    LOCATE 6, 1: PRINT "magicans, that send a terrible spell!"
    noa = noa - hms
    LOCATE 7, 1: PRINT "                                                                                "
    LOCATE 7, 1: PRINT "Destroying"; hms; "of your solders!"
    COLOR 15
    GOSUB menubar
END IF
IF op = 2 AND compop = 1 THEN
    COLOR 4
    LOCATE 5, 1: PRINT "                                                                                "
    LOCATE 5, 1: PRINT "The enemy charges with "; hme; "solders!"
    LOCATE 6, 1: PRINT "That demolish your archers!"
    noa = noa - hms
    LOCATE 7, 1: PRINT "                                                                                "
    LOCATE 7, 1: PRINT "You have suffered"; hms; "archers!"
    COLOR 15
    GOSUB menubar
END IF
IF op = 2 AND compop = 2 THEN
    LOCATE 5, 1: PRINT "                                                                                "
    COLOR 14
    LOCATE 5, 1: PRINT "The enemy raises it arrows toward the sky, with its best "; hme; " archers!"
    IF hme > hms THEN
        noa = noa - (hme - hms)': noe = noe - hms
        COLOR 4
        LOCATE 7, 1: PRINT "                                                                                "
        LOCATE 7, 1: PRINT "You have suffered"; hme - hms; "archers!"
    END IF
  
    IF hme < hms THEN
        noe = noe - (hms - hme)': noa = noa - hme
        COLOR 1
        LOCATE 7, 1: PRINT "                                                                                "
        LOCATE 7, 1: PRINT "The enemy has suffered"; hms - hme; "archers!"
    END IF
    COLOR 15
    GOSUB menubar
END IF
IF op = 2 AND compop = 3 THEN
    COLOR 1
    LOCATE 5, 1: PRINT "                                                                                "
    LOCATE 5, 1: PRINT "The enemys prepares its best "; hme; "magicians!"
    noe = noe - hme
    LOCATE 6, 1: PRINT "                                                                                "
    LOCATE 6, 1: PRINT "To be slaughtered by your archers"
    LOCATE 7, 1: PRINT "                                                                                "
    LOCATE 7, 1: PRINT "The enemys have suffered"; hme; "solders!"
    COLOR 15
    GOSUB menubar
END IF
  
IF op = 3 AND compop = 1 THEN
    COLOR 1
    LOCATE 5, 1: PRINT "                                                                                "
    LOCATE 5, 1: PRINT "The enemy charges with "; hme; "solders!"
    LOCATE 6, 1: PRINT "That are crushed by you omnious mages power!"
    noe = noe - hme
    LOCATE 7, 1: PRINT "                                                                                "
    LOCATE 7, 1: PRINT "The enemy has suffered "; hme; "solders!"
    COLOR 15
    GOSUB menubar
END IF
IF op = 3 AND compop = 2 THEN
    COLOR 4
    LOCATE 5, 1: PRINT "                                                                                "
    LOCATE 5, 1: PRINT "The enemy raises it's arrows to the sky, with "; hme; "archers!"
    LOCATE 6, 1: PRINT "That demolish your mages!"
    noa = noa - hms
    LOCATE 7, 1: PRINT "                                                                                "
    LOCATE 7, 1: PRINT "You have suffered"; hms; "magicans!"
    COLOR 15
    GOSUB menubar
END IF
IF op = 3 AND compop = 3 THEN
    LOCATE 5, 1: PRINT "                                                                                "
    COLOR 14
    LOCATE 5, 1: PRINT "The enemy simultaniously casts a spell as you do with"; hme; "mages!"
    IF hme > hms THEN
        noa = noa - (hme - hms)': noe = noe - hms
        COLOR 4
        LOCATE 7, 1: PRINT "                                                                                "
        LOCATE 7, 1: PRINT "You have suffered"; hme - hms; "mages!"
    END IF
 
    IF hme < hms THEN
        noe = noe - (hms - hme)': noa = noa - hme
        COLOR 1
        LOCATE 7, 1: PRINT "                                                                                "
        LOCATE 7, 1: PRINT "The enemy has suffered"; hms - hme; "mages!"
    END IF
    COLOR 15
    GOSUB menubar
END IF

RETURN

deathcheck:
IF noa < 1 THEN : PRINT "You lose, game over": END

IF noe < 1 THEN : PRINT "You win": GOSUB win


RETURN
win:
pgp = gp
gp = gp + tnoe
'IF gp > 9999999 THEN
CLS
ba$ = "$#######"
FOR nu = 1 TO 1000
IF INKEY$ <> "" THEN nu = 1000
nui = nui + INT(tnoe / 1000)

LOCATE 5, 1: COLOR 14: PRINT "You have obtained"

LOCATE 5, 60: USING ba$;PRINT nui
LOCATE
IF nu = 1000 THEN LOCATE 5, 60: USING ba$;PRINT tnoe: BEEP

NEXT nu
COLOR 15
RETURN