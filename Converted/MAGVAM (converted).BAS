DIM gname$(10)
DIM gsex(10)
DIM gctype(10)
DIM gjob(10)
DIM ghp(10)
DIM gmp(10)
DIM gatt(10)
DIM gdff(10)
DIM gmagw(10)
DIM gmagb(10)
DIM gluck(10)

DIM name$(4)
DIM sex(4)
DIM ctype(4)
DIM job(4)
DIM hp(4)
DIM mp(4)
DIM att(4)
DIM dff(4)
DIM magw(4)
DIM magb(4)
DIM luck(4)


CLS
main:
GOSUB guild


GOTO main

guild:
PRINT
PRINT "You are in a guild"
PRINT "1. Create Caracter      ["; gwo; "members in guild] "
PRINT "2. Delete Caracter    "
PRINT "3. Recruit              ["; wo; "members on team]"
PRINT "4. Veiw Guild Charaters"
PRINT "5. Veiw Team          "
PRINT "6. Exit"
GOSUB command
IF VAL(com$) > 6 OR VAL(com$) < 1 THEN GOTO guild
IF com$ = "1" THEN GOSUB createcharacter
IF com$ = "4" THEN GOSUB charaterveiw
RETURN

command:
com$ = INKEY$
IF com$ = "" THEN GOTO command
RETURN

createcharacter:

IF gwo = 10 THEN gwo = 10: PRINT: PRINT "Guild Full, delete a charter": RETURN
gwo = gwo + 1
GOSUB charatername
GOSUB charatersex
GOSUB charatertype
GOSUB charaterjob
GOSUB charatercurrentveiw
RETURN

charatername:
INPUT "charater name"; gname$(gwo)
gname$(gwo) = MID$(gname$(gwo), 1, 8)
PRINT gname$(gwo); "?"
PRINT "Is this ok?"
PRINT "1. Yes"
PRINT "2. No"
GOSUB command
IF VAL(com$) > 2 OR VAL(com$) < 1 THEN GOTO charatername
IF com$ = "2" GOTO charatername

RETURN

charatersex:
PRINT
PRINT "Sex"
PRINT "1. Male"
PRINT "2. Female"
GOSUB command
IF VAL(com$) > 2 OR VAL(com$) < 1 THEN GOTO charatersex
IF com$ = "2" THEN gsex(gwo) = 2 ELSE gsex(gwo) = 1
RETURN

charatertype:
PRINT
PRINT "Which Type"
PRINT "1. Human"
PRINT "2. Elf"
PRINT "3. Dwarf"
PRINT "4. Half Vampire"
PRINT "5. Sprite"
GOSUB command
IF VAL(com$) > 5 OR VAL(com$) < 1 THEN GOTO charatertype
gctype(gwo) = VAL(com$)

RETURN

charaterjob:
PRINT
PRINT "What is "; gname$(gwo)
PRINT "1. Knight"
PRINT "2. Thief"
PRINT "3. Mage"
PRINT "4. Cleric"
PRINT "5. Wizard"
GOSUB command
IF VAL(com$) > 5 OR VAL(com$) < 1 THEN GOTO charaterjob
gjob(gwo) = VAL(com$)
RETURN

charatercurrentveiw:
gatt(gwo) = 1
gdff(gwo) = 1
gmagw(gwo) = 1
gmagb(gwo) = 1
gluck(gwo) = 1

IF gctype(gwo) = 1 THEN gatt(gwo) = gatt(gwo) + 1: gdff(gwo) = gdff(gwo) + 1
IF gctype(gwo) = 2 THEN gluck(gwo) = gluck(gwo) + 1: gmagw(gwo) = gmagw(gwo) + 1
IF gctype(gwo) = 3 THEN gdff(gwo) = gdff(gwo) + 1: gluck(gwo) = gluck(gwo) + 1
IF gctype(gwo) = 4 THEN gatt(gwo) = gatt(gwo) + 1: gmagb(gwo) = gmagb(gwo) + 1
IF gctype(gwo) = 5 THEN gmagb(gwo) = gmagb(gwo) + 1: gmagw(gwo) = gmagw(gwo) + 1

IF gjob(gwo) = 1 THEN gatt(gwo) = gatt(gwo) + 1: gdff(gwo) = gdff(gwo) + 1
IF gjob(gwo) = 2 THEN gluck(gwo) = gluck(gwo) + 1: gatt(gwo) = gatt(gwo) + 1
IF gjob(gwo) = 3 THEN gdff(gwo) = gdff(gwo) + 1: gmagb(gwo) = gmagb(gwo) + 1
IF gjob(gwo) = 4 THEN gluck(gwo) = gluck(gwo) + 1: gmagw(gwo) = gmagw(gwo) + 1
IF gjob(gwo) = 5 THEN gmagb(gwo) = gmagb(gwo) + 1: gmagw(gwo) = gmagw(gwo) + 1




ghp(gwo) = (gatt(gwo) + gdff(gwo)) * gluck(gwo) * 10
gmp(gwo) = (gmagw(gwo) + gmagb(gwo)) * gluck(gwo) * 10

PRINT
PRINT "Name:    "; gname$(gwo)
PRINT "Sex:     "; gsex(gwo)
PRINT "Type:    "; gctype(gwo)
PRINT "Job:     "; gjob(gwo)
PRINT "HP:      "; ghp(gwo)
PRINT "Mp:      "; gmp(gwo)
PRINT "Attack:  "; gatt(gwo)
PRINT "Defence: "; gdff(gwo)
PRINT "B.Magic: "; gmagb(gwo)
PRINT "W.Magic: "; gmagw(gwo)
PRINT "Luck:    "; gluck(gwo)
RETURN

charaterveiw:
PRINT "which one?"
FOR a = 1 TO gwo
PRINT gwo; ". "; gname$(a)
NEXT a

PRINT
PRINT "Name:    "; gname$(gwo)
PRINT "Sex:     "; gsex(gwo)
PRINT "Type:    "; gctype(gwo)
PRINT "Job:     "; gjob(gwo)
PRINT "HP:      "; ghp(gwo)
PRINT "Mp:      "; gmp(gwo)
PRINT "Attack:  "; gatt(gwo)
PRINT "Defence: "; gdff(gwo)
PRINT "B.Magic: "; gmagb(gwo)
PRINT "W.Magic: "; gmagw(gwo)
PRINT "Luck:    "; gluck(gwo)
RETURN
