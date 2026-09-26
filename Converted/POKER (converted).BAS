RANDOMIZE TIMER
DIM card$(54)
DIM card(54)

LOCATE 25, 1: PRINT "Initializing...";

FOR setsuit = 0 TO 3
cin = setsuit * 13
FOR setnum = 1 TO 13
card(setnum + cin) = setnum

IF setnum = 1 THEN card$(setnum + cin) = " A"
IF setnum > 1 AND setnum < 10 THEN card$(setnum + cin) = STR$(setnum)
IF setnum = 10 THEN card$(setnum + cin) = "10"
IF setnum = 11 THEN card$(setnum + cin) = " J"
IF setnum = 12 THEN card$(setnum + cin) = " Q"
IF setnum = 13 THEN card$(setnum + cin) = " K"
IF setsuit = 0 THEN card$(setnum + cin) = card$(setnum + cin) + " " + CHR$(3)
IF setsuit = 1 THEN card$(setnum + cin) = card$(setnum + cin) + " " + CHR$(4)
IF setsuit = 2 THEN card$(setnum + cin) = card$(setnum + cin) + " " + CHR$(5)
IF setsuit = 3 THEN card$(setnum + cin) = card$(setnum + cin) + " " + CHR$(6)

NEXT setnum
NEXT setsuit

card$(53) = "Joker"
card$(54) = "Joker"




CLS
GOSUB shuffle
GOSUB deal








'CLS
'FOR a = 1 TO 52
'PRINT card$(a); "  ";
'NEXT a


END
shuffle:
FOR shuf = 1 TO 52
shufpl = INT(RND * 52) + 1
SWAP card$(shuf), card$(shufpl)
SWAP card(shuf), card(shufpl)
NEXT shuf
RETURN



deal:
CLS

'6 = 4 OF A KIND 4 = FULL HOUSE 3 = 3 OF A KIND 2 = 2 PAIR 1 = 1 PAIR
 






PRINT card$(1); "  "; card$(2); "  "; card$(3); "  "; card$(4); "  "; card$(5); "  ";

FOR chkpair = 1 TO 4
IF LEFT$(card$(chkpair), 3) = LEFT$(card$(2), 3) AND chkpair < 2 THEN pair = pair + 1
IF LEFT$(card$(chkpair), 3) = LEFT$(card$(3), 3) AND chkpair < 3 THEN pair = pair + 1
IF LEFT$(card$(chkpair), 3) = LEFT$(card$(4), 3) AND chkpair < 4 THEN pair = pair + 1
IF LEFT$(card$(chkpair), 3) = LEFT$(card$(5), 3) AND chkpair < 5 THEN pair = pair + 1
'DO WHILE INKEY$ = "": LOOP
'LOCATE 5, 1: PRINT pair
NEXT chkpair

IF MID$(card$(1), 4, 1) = MID$(card$(2), 4, 1) THEN
    IF MID$(card$(2), 4, 1) = MID$(card$(3), 4, 1) THEN
        IF MID$(card$(3), 4, 1) = MID$(card$(4), 4, 1) THEN
            IF MID$(card$(4), 4, 1) = MID$(card$(5), 4, 1) THEN
                flush = 1
            END IF
        END IF
    END IF
END IF


FOR chkstrait = 1 TO 5
IF card(chkstrait) = card(1) + 1 THEN strait = strait + 1
IF card(chkstrait) = card(2) + 1 THEN strait = strait + 1
IF card(chkstrait) = card(3) + 1 THEN strait = strait + 1
IF card(chkstrait) = card(4) + 1 THEN strait = strait + 1
IF card(chkstrait) = card(5) + 1 THEN strait = strait + 1

IF card(chkstrait) = 1 THEN royal(1) = royal(1) + 1
IF card(chkstrait) = 13 THEN royal(2) = royal(2) + 1
IF card(chkstrait) = 12 THEN royal(3) = royal(3) + 1
IF card(chkstrait) = 11 THEN royal(4) = royal(4) + 1
IF card(chkstrait) = 10 THEN royal(5) = royal(5) + 1

'DO WHILE INKEY$ = "": LOOP
LOCATE 5, 1: PRINT strait
NEXT chkstrait


FOR chkroyal = 1 TO 5
IF royal(chkroyal) = 1 THEN royalstrait = royalstrait + 1
NEXT chkroyal
IF royalstrait = 5 THEN PRINT "~~ROYAL~STRAIT~~"
IF strait = 4 AND pair = 0 THEN PRINT "---Strait---"
IF flush = 1 THEN PRINT "***FLUSH***"
IF pair = 6 THEN PRINT "4 of a kind"
IF pair = 4 THEN PRINT "Full house"
IF pair = 3 THEN PRINT "3 of a kind"
IF pair = 2 THEN PRINT "2 pair"
IF pair = 1 THEN PRINT "2 of a kind"
IF pair = 0 AND flush < 1 THEN PRINT "nothing"
RETURN