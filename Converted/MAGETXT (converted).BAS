DECLARE SUB help ()
DIM item$(12)
item$(1) = "Eye of Rat"
item$(2) = "Bottle of Blood"

COLOR 15
CLS
10PRINT "You are safely at home, you are special. Your not like other kids."
PRINT "Some call you a freak, your parents call you troubled. You teachers"
PRINT "call you missguided. Your friends just think your psycho, but you"
PRINT "are and will forever be a mage."
PRINT
PRINT "You sit in your room covered with various gothic bands. Your room"
PRINT "smells terrible from all the spells you proform, but you call it "
PRINT "home. It is where you are most comfortable. Suddenly your mother "
PRINT "rushes into you place of sactuary. "
PRINT "'Your room is a mess...I want you to clean it up immediatly"
PRINT "and get rid of all this devil shit, jessica. DO YOU HEAR ME!?!'"
PRINT "[TYPE HELP TO DISPLAY HELP SCREEN]"
15GOSUB command
IF replok = 1 THEN replok = 0: GOTO 10
IF com$ = "kill mom" THEN
    COLOR 4
    PRINT "I've had enough of you bitching at me. Fuck you! You rush toward"
    PRINT "her you then proceed to strangle her untill she is dead. Then you"
    PRINT "stuff her inside your closet."
    deadmom = 1
    COLOR 15
END IF
IF com$ = "yes" THEN
    PRINT "'Good I want it done before your father gets home.'"
    PRINT "She slowly leaves the room and you lock the door"
END IF
IF com$ = "no" THEN
    PRINT "'What did you say!?! You wait till your father gets home'"
    PRINT "She storms off and you lock the door"
END IF
END
command:
COLOR 3
PRINT
INPUT "command"; com$
com$ = LCASE$(com$)
IF com$ = "help" THEN CALL help
IF com$ = "repeat" OR com$ = "look" THEN replok = 1
IF com$ = "inventory" OR com$ = "item" THEN GOSUB inventory
PRINT
COLOR 15
RETURN
inventory:

PRINT item$(1), , item$(2), , item$(3)
PRINT item$(4), , item$(5), , item$(6)
PRINT item$(7), , item$(8), , item$(9)
PRINT item$(10), , item$(11), , item$(12)

RETURN


DEFSNG A-Z
SUB help
help:
CLS
COLOR 4
PRINT "After command type one of these statements in conjunction with another:"
PRINT " help    kill    fight   consume     eat     look    smell   taste   bit cast"
PRINT " spell   read    trash   repeat      no      yes"
PRINT
PRINT
PRINT
PRINT
PRINT "You may use any item or person's name with the conjunction..."
PRINT "Do not use pronouns. (ex. her, his, it, etc...)"


END SUB