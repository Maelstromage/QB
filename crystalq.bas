REM                                  Welcome
REM                         (hold shift and press F5)
'       this is just the beginning of this adventure
'       have been working on this off and on for 6 months

'       once it was compleatly erased because i had to format my hard drive
'       due to a nasty virus called natas(b).
'       it was so hard to fix
'       i ended up buying a new hard drive, but that is a different story

'       e-mail me at reverse013@aol.com and i will send you the most updated
'       version of this game
'       this is ver. 1.3

'       i know there is alot of bugs in this game so e-mail me and i definitly
'       put you in the credits as a game tester
















CLS
COLOR 4
PRINT
PRINT
PRINT
PRINT "           /#####\        ',,,                 ,,,'"
PRINT "          I########\         \',             ,'/     "
PRINT "          I##I:\#####\        )#'\         /'#(            /\"
PRINT "          I##I:::\####I\     /##/I         I\##\         /####\"
PRINT "          I##I:::::\##I::\ ,'##(:I         I:)###,     /###/:\##\  "
PRINT "          I##I::::/###I:::(#####\I         I/#####)  /(###\:::::/'"
PRINT "          I###\:/####/:\::I\######\       /######/I/::::\###\:/'"
PRINT "          I########/:::::\I::\######\   /######/::I:::::::\###\     "
PRINT "          I########\::::::I::::\######/######/:::;I:::::::::\###\"
PRINT "          I###I\#####\:::: '\::::\#########/::::/\::::::::::::\###)"
PRINT "          I###I::\#####\:/'  '\::::\#####/::::/'  /:\##\:::::/###/"
PRINT "          I###I::::\####I:\    '\::::\#/::::/'  /:::::\##\:/###/'"
PRINT "          I###I::::I####I:::\    '\:::I:::/'  /:::::::::\####/'     "
PRINT "          I###I::::I####I:::::\    '\:I:/'    '\::::::::::\/'        "
PRINT "          I##/:\:::'\####\::::I      'I'        '\:::::::/'         "
PRINT "          I/:::::\::I'\/:::\::I       I           '\:::/'            "
PRINT "          '\::::::'\I  \:::::\I                     '/' inc.              "
PRINT "            '\::::/'    '\::::/                                 "
PRINT "              '\/'        '\/'                   -------{presents..."
SLEEP 1
SLEEP 1
SLEEP 1
DO UNTIL INKEY$ <> "": LOOP

              
CLS
COLOR 15
LOCATE 12, 35: PRINT "CRYSTAL QUEST..."
DO UNTIL INKEY$ <> "": LOOP

PLAY "mbo3cbcbcde-d"
RANDOMIZE TIMER
GOSUB mainmenu
GOSUB passorgame

IF startover = 1 THEN starover = 0: RUN
start:
GOSUB duncom



GOTO start
mainmenu: CLS
mainmen = 6
tp = 1: bt = 23: lf = 1: ri = 80
GOSUB border
LOCATE 6, 37: PRINT "New Game"
LOCATE 8, 37: PRINT "Continue"
LOCATE 10, 37: PRINT "Instructions"
l: LOCATE mainmen, 35: PRINT ""
mm$ = INKEY$

'  chr$(0)+"H"=up
'  +"P"= down
'  +"K"=left
'  +"M"=right

IF mm$ = CHR$(0) + "H" OR mm$ = CHR$(0) + "K" THEN mainmen = mainmen - 2: GOSUB eras: IF mainmen < 6 THEN mainmen = 10
IF mm$ = CHR$(0) + "P" OR mm$ = CHR$(0) + "M" THEN mainmen = mainmen + 2: GOSUB eras: IF mainmen > 10 THEN mainmen = 6
IF mm$ = CHR$(13) THEN RETURN






GOTO l
eras:
LOCATE 6, 35: PRINT " "
LOCATE 8, 35: PRINT " "
LOCATE 10, 35: PRINT " "
RETURN





border:
LOCATE tp, lf: PRINT CHR$(201)
LOCATE bt, lf: PRINT CHR$(200)
LOCATE tp, ri: PRINT CHR$(187)
LOCATE bt, ri: PRINT CHR$(188)
FOR a = (lf + 1) TO (ri - 1)
LOCATE tp, a: PRINT CHR$(205)
LOCATE bt, a: PRINT CHR$(205)
NEXT a
FOR a = (tp + 1) TO (bt - 1)
LOCATE a, ri: PRINT CHR$(186)
LOCATE a, lf: PRINT CHR$(186)
NEXT a
RETURN
passorgame: IF mainmen = 6 THEN GOTO newgame
IF mainmen = 8 THEN GOSUB password
IF mainmen = 10 THEN GOTO options
RETURN


newgame: CLS
beginingstatus: thp = 10: hp = 10: lv = 1: str = 10: ine = 10: dex = 10: sta = 10: per = 10: wits = 5:
ia$ = "Fairyleaf": ia = 1: att = 10: dee = 10: rm$ = "prisoncell": mp = 12: tmp = 12: mv = 14: mh = 69
GOSUB stat
cell: LOCATE 1, 1: PRINT "You have just awakened from a terrible sleep."
PRINT "You are locked in a cell chamber."
PRINT "You are all alone save for the skeleton in shakles"
PRINT "across from you."
RETURN
options:
CLS
tp = 1: bt = 23: lf = 1: ri = 80
GOSUB border





LOCATE 2, 2: PRINT "                                   How to play"
LOCATE 3, 2: PRINT "    At the command prompt you can enter these commands"
LOCATE 4, 2: PRINT "    (All words should be lowercase)"
LOCATE 5, 2: PRINT "            *status (this will display your status)"
LOCATE 6, 2: PRINT "            *item   (lets you use an item)"
LOCATE 7, 2: PRINT "            *spell  (lets you cast a spell)"
LOCATE 8, 2: PRINT "            *talk   (lets you talk)"
LOCATE 9, 2: PRINT "        --->*move   (lets you use the direction keys)"
LOCATE 10, 2: PRINT "            *search (lets you search the square you are on)"
LOCATE 11, 2: PRINT "            *door   (opens a door)"
LOCATE 12, 2: PRINT "            *look   (reapeats desciption)"
LOCATE 13, 2: PRINT "            *take   (lets you take an object you have searched for or can see"
LOCATE 14, 2: PRINT "            *stairs (lets you go up or down stairs)"
LOCATE 15, 2: PRINT "            *help   (to display this help menu)"
LOCATE 16, 2: PRINT "    *-{In battle mode you have four options"
LOCATE 17, 2: PRINT "            *fight  (lets you fight the evil villian that posses against you)"
LOCATE 18, 2: PRINT "            *run    (lets you flee in terror escaping sertain doom)"
LOCATE 19, 2: PRINT "            *item   (lets you use an item during battle)"
LOCATE 20, 2: PRINT "            *spell  (lets you cast a spell during battle)"



DO WHILE INKEY$ = "": LOOP
CLS
startover = 1
RETURN



password: CLS
        Saver$ = "CRYSTAL.DAT"
        OPEN Saver$ FOR INPUT AS #1
        INPUT #1, thp, hp
        INPUT #1, mp, thp, lv
        INPUT #1, str, ine, dex, sta, per, wits
        INPUT #1, ia$, ia, ib, ib$, ic$, ic, id$, id, ie$, ie, ig, ig$, ih$, ih, ii$, ii, ij$, ij, ik, ik$, il$, il, im$, im, in$, in, io, io$
        INPUT #1, oia$, oia, oib, oib$, oic$, oic, oid$, oid, oie$, oie, oig, oig$, oih$, oih, oii$, oii, oij$, oij, oik, oik$, oil$, oil, oim$, oim, oin$, oin, oio, oio$
        INPUT #1, att, dee, rm$, mv, mh
        INPUT #1, sa$, sb$, sc$, sd$, se$, sg$, sh$, si$, sj$, sk$, sl$, sm$, sn$, so$
        CLOSE


RETURN
stat: tp = 1: lf = 65: bt = 7: ri = 80
IF (thp / 3) > hp THEN COLOR 4 ELSE COLOR 15
IF hp < 1 THEN hp = 0
GOSUB border
LOCATE 2, 66: PRINT "              "
LOCATE 2, 66: PRINT "Lv.  "; lv
LOCATE 3, 66: PRINT "              "
LOCATE 3, 66: PRINT "HP   "; hp; "/"; thp
LOCATE 4, 66: PRINT "              "
LOCATE 4, 66: PRINT "MP   "; mp; "/"; tmp
LOCATE 5, 66: PRINT "              "
LOCATE 5, 66: PRINT "Gold "; gd
LOCATE 6, 66: PRINT "              "
LOCATE 6, 66: PRINT "Exp  "; exr
RETURN
duncom:
GOSUB stat
IF hp < 1 THEN GOTO death
GOSUB stat
LOCATE 13, 1: INPUT "command"; cd$
cd$ = LCASE$(cd$)
CLS
GOSUB stat
IF cd$ = "stairs" THEN cd = 10: GOSUB rmcheck: RETURN
IF cd$ = "items" OR cd$ = "item" THEN cd = 2: GOSUB items: RETURN
IF cd$ = "status" THEN cd = 1: GOSUB status: RETURN
IF cd$ = "spell" THEN cd = 3: GOSUB spell: RETURN
IF cd$ = "talk" THEN cd = 4: GOSUB rmcheck: RETURN
IF cd$ = "search" THEN cd = 5: GOSUB rmcheck: RETURN
IF cd$ = "door" THEN cd = 6: GOSUB rmcheck: RETURN
IF cd$ = "look" THEN cd = 7: GOSUB rmcheck: RETURN
IF cd$ = "take" THEN cd = 8: GOSUB rmcheck: RETURN
IF cd$ = "move" THEN cd = 9: GOSUB rmcheck: RETURN
IF cd$ = "quit" THEN COLOR 7: CLS : INPUT "ARE YOU SURE"; ays$: IF ays$ = "yes" THEN COLOR 7: SYSTEM

IF cd$ = "save" THEN
        LOCATE 23, 1
        PRINT "saving..."
        Saver$ = "CRYSTAL.DAT"
        OPEN Saver$ FOR OUTPUT AS #1
        WRITE #1, thp, hp
        WRITE #1, mp, thp, lv
        WRITE #1, str, ine, dex, sta, per, wits
        WRITE #1, ia$, ia, ib, ib$, ic$, ic, id$, id, ie$, ie, ig, ig$, ih$, ih, ii$, ii, ij$, ij, ik, ik$, il$, il, im$, im, in$, in, io, io$
        WRITE #1, oia$, oia, oib, oib$, oic$, oic, oid$, oid, oie$, oie, oig, oig$, oih$, oih, oii$, oii, oij$, oij, oik, oik$, oil$, oil, oim$, oim, oin$, oin, oio, oio$
        WRITE #1, att, dee, rm$, mv, mh
        WRITE #1, sa$, sb$, sc$, sd$, se$, sg$, sh$, si$, sj$, sk$, sl$, sm$, sn$, so$
        CLOSE
        LOCATE 23, 1
        PRINT "saved    "
        RETURN
END IF


IF cd$ = "load" THEN
        PRINT "loading..."
        Saver$ = "CRYSTAL.DAT"
        OPEN Saver$ FOR INPUT AS #1
        INPUT #1, thp, hp
        INPUT #1, mp, thp, lv
        INPUT #1, str, ine, dex, sta, per, wits
        INPUT #1, ia$, ia, ib, ib$, ic$, ic, id$, id, ie$, ie, ig, ig$, ih$, ih, ii$, ii, ij$, ij, ik, ik$, il$, il, im$, im, in$, in, io, io$
        INPUT #1, oia$, oia, oib, oib$, oic$, oic, oid$, oid, oie$, oie, oig, oig$, oih$, oih, oii$, oii, oij$, oij, oik, oik$, oil$, oil, oim$, oim, oin$, oin, oio, oio$
        INPUT #1, att, dee, rm$, mv, mh
        INPUT #1, sa$, sb$, sc$, sd$, se$, sg$, sh$, si$, sj$, sk$, sl$, sm$, sn$, so$
        CLOSE
        PRINT "loaded     "
        RETURN
END IF
IF cd$ = "help" THEN GOSUB options: RETURN
GOSUB options
RETURN

items:
CLS
GOSUB stat
tp = 1: lf = 65: ri = 80: bt = 23
GOSUB border
LOCATE 7, 65: PRINT "Ь"
LOCATE 7, 80: PRINT "Й"
LOCATE 8, 67: PRINT ia$:  IF ia <> 0 THEN LOCATE 8, 77: PRINT ia
LOCATE 9, 67: PRINT ib$:  IF ib <> 0 THEN LOCATE 9, 77: PRINT ; ib
LOCATE 10, 67: PRINT ic$:  IF ic <> 0 THEN LOCATE 10, 77: PRINT ; ic
LOCATE 11, 67: PRINT id$:  IF id <> 0 THEN LOCATE 11, 77: PRINT ; id
LOCATE 12, 67: PRINT ie$:  IF ie <> 0 THEN LOCATE 12, 77: PRINT ; ie
LOCATE 13, 67: PRINT ig$:  IF ig <> 0 THEN LOCATE 13, 77: PRINT ; ig
LOCATE 14, 67: PRINT ih$:  IF ih <> 0 THEN LOCATE 14, 77: PRINT ; ih
LOCATE 15, 67: PRINT ii$:  IF ii <> 0 THEN LOCATE 15, 77: PRINT ; ii
LOCATE 16, 67: PRINT ij$:  IF ij <> 0 THEN LOCATE 16, 77: PRINT ; ij
LOCATE 17, 67: PRINT ik$:  IF ik <> 0 THEN LOCATE 17, 77: PRINT ; ik
LOCATE 18, 67: PRINT il$:  IF il <> 0 THEN LOCATE 18, 77: PRINT ; il
LOCATE 19, 67: PRINT im$:  IF im <> 0 THEN LOCATE 19, 77: PRINT ; im
LOCATE 20, 67: PRINT in$:  IF in <> 0 THEN LOCATE 20, 77: PRINT ; in
LOCATE 21, 67: PRINT io$:  IF io <> 0 THEN LOCATE 21, 77: PRINT ; io
LOCATE 22, 67: PRINT "NEXT>>>": LOCATE 22, 79
itev = 8


moveitem:
ite$ = INKEY$
IF ite$ = CHR$(27) THEN RETURN
IF ite$ = CHR$(0) + "H" THEN itev = itev - 1
IF ite$ = CHR$(0) + "P" THEN itev = itev + 1
IF ite$ = CHR$(0) + "M" OR ite$ = CHR$(0) + "K" THEN GOTO otheritems
IF itev < 8 THEN itev = 22
IF itev > 22 THEN itev = 8
IF itev <> 8 THEN LOCATE (itev - 1), 66: PRINT " ": LOCATE 8, 66: PRINT " "
LOCATE itev, 66: PRINT ""
IF itev <> 22 THEN LOCATE (itev + 1), 66: PRINT " ": LOCATE 22, 66: PRINT " "
IF ite$ = CHR$(13) THEN GOTO itemcheck
GOTO moveitem

status:
CLS
GOSUB stat
tp = 1: lf = 65: ri = 80: bt = 23
GOSUB border
LOCATE 7, 65: PRINT "Ь"
LOCATE 7, 80: PRINT "Й"
IF str > 9 THEN j = 76 ELSE j = 77
LOCATE 8, 66: PRINT "Str ":  LOCATE 8, j: PRINT str
IF dex > 9 THEN j = 76 ELSE j = 77
LOCATE 9, 66: PRINT "Dex ":  LOCATE 9, j: PRINT dex
IF sta > 9 THEN j = 76 ELSE j = 77
LOCATE 10, 66: PRINT "Sta ":  LOCATE 10, j: PRINT sta
IF ine > 9 THEN j = 76 ELSE j = 77
LOCATE 11, 66: PRINT "Int ":  LOCATE 11, j: PRINT ine
IF per > 9 THEN j = 76 ELSE j = 77
LOCATE 12, 66: PRINT "Per ":  LOCATE 12, j: PRINT per
IF wits > 9 THEN j = 76 ELSE j = 77
LOCATE 13, 66: PRINT "Wit ":  LOCATE 13, j: PRINT wits
IF att > 9 THEN j = 76 ELSE j = 77
LOCATE 14, 66: PRINT "Att":  LOCATE 14, j: PRINT att
IF dee > 9 THEN j = 76 ELSE j = 77
LOCATE 15, 66: PRINT "Def ":  LOCATE 15, j: PRINT dee
LOCATE 16, 66: PRINT "Weapon: ":  LOCATE 17, 67: PRINT wep$
LOCATE 18, 66: PRINT "Armor: ":  LOCATE 19, 67: PRINT arm$
LOCATE 20, 66: PRINT "Sheild:":  LOCATE 19, 67: PRINT she$



DO
LOOP UNTIL INKEY$ = CHR$(13)
CLS
RETURN

spell:
CLS
GOSUB stat
tp = 1: lf = 65: ri = 80: bt = 23
GOSUB border
LOCATE 7, 65: PRINT "Ь"
LOCATE 7, 80: PRINT "Й"
LOCATE 8, 67: PRINT sa$:  IF sa <> 0 THEN LOCATE 8, 77: PRINT sa
LOCATE 9, 67: PRINT sb$:  IF sb <> 0 THEN LOCATE 9, 77: PRINT sb
LOCATE 10, 67: PRINT sc$:  IF sc <> 0 THEN LOCATE 10, 77: PRINT sc
LOCATE 11, 67: PRINT sd$:  IF sd <> 0 THEN LOCATE 11, 77: PRINT sd
LOCATE 12, 67: PRINT se$:  IF se <> 0 THEN LOCATE 12, 77: PRINT se
LOCATE 13, 67: PRINT sg$:  IF sg <> 0 THEN LOCATE 13, 77: PRINT sg
LOCATE 14, 67: PRINT sh$:  IF sh <> 0 THEN LOCATE 14, 77: PRINT sh
LOCATE 15, 67: PRINT si$:  IF si <> 0 THEN LOCATE 15, 77: PRINT si
LOCATE 16, 67: PRINT sj$:  IF sj <> 0 THEN LOCATE 16, 77: PRINT sj
LOCATE 17, 67: PRINT sk$:  IF sk <> 0 THEN LOCATE 17, 77: PRINT sk
LOCATE 18, 67: PRINT sl$:  IF sl <> 0 THEN LOCATE 18, 77: PRINT sl
LOCATE 19, 67: PRINT sm$:  IF sm <> 0 THEN LOCATE 19, 77: PRINT sm
LOCATE 20, 67: PRINT sn$:  IF sn <> 0 THEN LOCATE 20, 77: PRINT sn
LOCATE 21, 67: PRINT so$:  IF so <> 0 THEN LOCATE 21, 77: PRINT so
LOCATE 22, 67: PRINT sp$:  IF sp <> 0 THEN LOCATE 22, 77: PRINT sp
spev = 8
movespell:
spe$ = INKEY$
IF spe$ = CHR$(27) THEN RETURN
IF spe$ = CHR$(0) + "H" THEN spev = spev - 1
IF spe$ = CHR$(0) + "P" THEN spev = spev + 1
IF spev < 8 THEN spev = 22
IF spev > 22 THEN spev = 8
IF spev <> 8 THEN LOCATE (spev - 1), 66: PRINT " ": LOCATE 8, 66: PRINT " "
LOCATE spev, 66: PRINT ""
IF spev <> 22 THEN LOCATE (spev + 1), 66: PRINT " ": LOCATE 22, 66: PRINT " "
IF spe$ = CHR$(13) THEN GOTO spellcheck
GOTO movespell
RETURN
spellcheck:
IF mp = 0 THEN PRINT "You have no MP.": CLS : GOSUB stat: RETURN
IF spev = 8 AND sb$ = "blaze" AND mp > 1 THEN GOSUB blaze: mp = mp - 5: GOSUB blazeeff
RETURN
blazeeff: IF fight = 1 THEN magdam = (INT(RND * ine) + (INT(ine / 2))) * 10 ELSE RETURN
CLS : PRINT enna$; " has lost "; magdam; " hitpoints"
enhp = enhp - magdam
RETURN




RETURN

blaze: SCREEN 8
COLOR 4
FOR cir = 1 TO 350
SOUND 20050 / cir, .1
CIRCLE (320, 100), cir
NEXT cir
SCREEN 0
COLOR 15
CLS : GOSUB stat
RETURN

rmcheck: IF rm$ = "prisoncell" THEN GOTO prisoncell
IF rm$ = "prisonroom" THEN GOTO prisonroom
IF rm$ = "prirmf1" THEN GOTO prirmf1
IF rm$ = "sewchn" THEN GOTO sewchn


prisoncell:
IF cd = 4 THEN CLS : PRINT "You politly say 'Hello' to the shakled skeleton, but their is": PRINT "no responce": GOSUB stat
IF cd = 5 THEN PRINT "You notice a key in the skeletons pelvis": founddungeonkey = 1
IF cd = 6 THEN PRINT "You rattle the door, but it will not open.": PRINT "A gard aprotches": GOSUB fight: rm$ = "prisonroom"
IF cd = 7 THEN GOSUB cell
IF cd = 8 THEN IF founddungeonkey = 1 THEN PRINT "You take the key": oia$ = "dungeon key":  founddungeonkey = 0 ELSE PRINT "their is nothing to take"
IF cd = 9 THEN PRINT "You're trapped in the cell"
IF cd = 10 THEN PRINT "Their are no stairs here"
RETURN

prisonroom:
IF cd = 4 THEN CLS : PRINT "No one their": GOSUB stat
IF cd = 5 THEN CLS : PRINT "You search about your feet"; : SLEEP 1: PRINT "but find nothing": GOSUB stat
IF cd = 6 THEN CLS : PRINT "There is no door here": GOSUB stat
IF cd = 7 THEN CLS : PRINT "You are in a prison room": GOSUB stat
IF cd = 8 THEN CLS : PRINT "There is nothing to take": GOSUB stat
IF cd = 9 THEN GOSUB move
IF cd = 10 AND mh = 75 AND mv = 13 THEN rm$ = "prirmf1": PRINT "you climb up the stairs...": SLEEP .5: PRINT "at the top there is a beautiful girl in battle armor blocking your way": RETURN
IF cd = 10 THEN CLS : PRINT "there are no stairs here"
RETURN
prirmf1:
IF cd = 5 THEN CLS : PRINT "You found nothing": GOSUB stat
IF cd = 6 THEN CLS : PRINT "There is no door here": GOSUB stat
IF cd = 7 THEN CLS : PRINT "Infront of you there is a woman tall and ": PRINT "beautiful dressed in battle armor.": GOSUB stat
IF cd = 8 THEN CLS : PRINT "There is nothing to take": GOSUB stat
IF cd = 9 THEN CLS : PRINT "There is a woman blocking your way": GOSUB stat
IF cd = 10 THEN CLS : PRINT "There are no stairs here"
IF cd = 4 THEN GOSUB meetsarah
RETURN
sewchn:
IF sewchnmove = 0 THEN sewchnmove = 1: mv = 14: mh = 14
IF cd = 9 THEN GOSUB move
PRINT "You can see nor feel anything"
RETURN











itemcheck: CLS
IF itev = 8 AND ia > 0 THEN GOSUB fairyleaf
IF itev = 22 THEN GOSUB otheritems
CLS
RETURN

fairyleaf:
lifeback = INT(RND * 30) + 1
IF lifeback < 20 THEN GOTO fairyleaf
ia = ia - 1
IF ia < 1 THEN ia$ = "": ia = 0
hp = hp + lifeback
IF hp > thp THEN hp = thp
CLS
RETURN
otheritems:
CLS
GOSUB stat
tp = 1: lf = 65: ri = 80: bt = 23
GOSUB border
LOCATE 7, 65: PRINT "Ь"
LOCATE 7, 80: PRINT "Й"
LOCATE 8, 67: PRINT oia$:  IF oia <> 0 THEN LOCATE 8, 77: PRINT oia
LOCATE 9, 67: PRINT oib$:  IF oib <> 0 THEN LOCATE 9, 77: PRINT ; oib
LOCATE 10, 67: PRINT oic$:  IF oic <> 0 THEN LOCATE 10, 77: PRINT ; oic
LOCATE 11, 67: PRINT oid$:  IF oid <> 0 THEN LOCATE 11, 77: PRINT ; oid
LOCATE 12, 67: PRINT oie$:  IF oie <> 0 THEN LOCATE 12, 77: PRINT ; oie
LOCATE 13, 67: PRINT oig$:  IF oig <> 0 THEN LOCATE 13, 77: PRINT ; oig
LOCATE 14, 67: PRINT oih$:  IF oih <> 0 THEN LOCATE 14, 77: PRINT ; oih
LOCATE 15, 67: PRINT oii$:  IF oii <> 0 THEN LOCATE 15, 77: PRINT ; oii
LOCATE 16, 67: PRINT oij$:  IF oij <> 0 THEN LOCATE 16, 77: PRINT ; oij
LOCATE 17, 67: PRINT oik$:  IF oik <> 0 THEN LOCATE 17, 77: PRINT ; oik
LOCATE 18, 67: PRINT oil$:  IF oil <> 0 THEN LOCATE 18, 77: PRINT ; oil
LOCATE 19, 67: PRINT oim$:  IF oim <> 0 THEN LOCATE 19, 77: PRINT ; oim
LOCATE 20, 67: PRINT oin$:  IF oin <> 0 THEN LOCATE 20, 77: PRINT ; oin
LOCATE 21, 67: PRINT oio$:  IF oio <> 0 THEN LOCATE 21, 77: PRINT ; oio
LOCATE 22, 67: PRINT "NEXT>>>": LOCATE 22, 79
itev = 8
moveoitem:
ite$ = INKEY$
IF ite$ = CHR$(27) THEN RETURN
IF ite$ = CHR$(0) + "H" THEN itev = itev - 1
IF ite$ = CHR$(0) + "P" THEN itev = itev + 1
IF ite$ = CHR$(0) + "M" OR ite$ = CHR$(0) + "K" THEN GOSUB items
IF itev < 8 THEN itev = 22
IF itev > 22 THEN itev = 8
IF itev <> 8 THEN LOCATE (itev - 1), 66: PRINT " ": LOCATE 8, 66: PRINT " "
LOCATE itev, 66: PRINT ""
IF itev <> 22 THEN LOCATE (itev + 1), 66: PRINT " ": LOCATE 22, 66: PRINT " "
IF ite$ = CHR$(13) THEN GOTO oitemcheck
GOTO moveoitem
RETURN


oitemcheck:
IF itev = 22 THEN GOTO items
IF itev = 8 AND oia$ = "dungeon key" THEN rm$ = "prisonroom": PRINT "The door quietly opens": PLAY "mbo3cbcbcde-d": SLEEP 1
RETURN
fight:


'---------------------------------FIGHT******

firmcheck:
IF rm$ = "prisoncell" THEN GOSUB prifig
IF rm$ = "prisonroom" THEN GOSUB priroofig
IF rm$ = "sewchn" THEN GOSUB sewerchnfig
IF rm$ = "dust" THEN GOSUB dustfig
RETURN


fiscroll:
IF lipl < 13 THEN GOTO fiscrollmain
l10$ = l11$
l11$ = l12$
l12$ = l13$
l13$ = l14$
l14$ = l15$
l15$ = l16$
l16$ = l17$
l17$ = l18$
l18$ = l19$
l19$ = l20$
l20$ = l21$
l21$ = l22$


fiscrollmain:
lipl = lipl + 1
IF lipl = 1 THEN l10$ = neli$
IF lipl = 2 THEN l11$ = neli$
IF lipl = 3 THEN l12$ = neli$
IF lipl = 4 THEN l13$ = neli$
IF lipl = 5 THEN l14$ = neli$
IF lipl = 6 THEN l15$ = neli$
IF lipl = 7 THEN l16$ = neli$
IF lipl = 8 THEN l17$ = neli$
IF lipl = 9 THEN l18$ = neli$
IF lipl = 10 THEN l19$ = neli$
IF lipl = 11 THEN l20$ = neli$
IF lipl = 12 THEN l21$ = neli$
IF lipl >= 13 THEN l22$ = neli$

cl$ = "                                                                             "
FOR cl = 10 TO 22
LOCATE cl, 2: PRINT cl$
NEXT cl
'IF l22$ <> "" THEN
LOCATE 10, 2: PRINT l10$
LOCATE 11, 2: PRINT l11$
LOCATE 12, 2: PRINT l12$
LOCATE 13, 2: PRINT l13$
LOCATE 14, 2: PRINT l14$
LOCATE 15, 2: PRINT l15$
LOCATE 16, 2: PRINT l16$
LOCATE 17, 2: PRINT l17$
LOCATE 18, 2: PRINT l18$
LOCATE 19, 2: PRINT l19$
LOCATE 20, 2: PRINT l20$
LOCATE 21, 2: PRINT l21$
LOCATE 22, 2: PRINT l22$

RETURN




prifig:
CLS
neli$ = "The gard sneers at you come on boy I'll wrap your intestine around you neck and hang you": GOSUB fiscroll:
DO WHILE INKEY$ = "": LOOP
CLS
GOSUB stat
GOSUB gard
GOSUB figpre
GOSUB figcom
RETURN

priroofig:
GOSUB stat
whimon = INT(RND * 3) + 1
IF whimon = 1 THEN GOSUB bat
IF whimon = 2 THEN GOSUB rat
IF whimon = 3 THEN GOSUB teranchala
GOSUB figpre
GOSUB figcom
RETURN

sewerchnfig:
GOSUB stat
whimon = INT(RND * 7) + 1
IF whimon = 1 THEN GOSUB bat
IF whimon = 2 THEN GOSUB rat
IF whimon = 3 THEN GOSUB teranchala
IF whimon = 4 THEN GOSUB blob
IF whimon = 5 THEN GOSUB drake
IF whimon = 6 THEN GOSUB blob
IF whimon = 7 THEN GOSUB drake
GOSUB figpre
GOSUB figcom
RETURN

dustfig:
GOSUB boss1
GOSUB figpre
GOSUB figcom
RETURN



gard: enstr = 5: endex = 1: ensta = 1: enper = 5: enine = 0: enwits = 0: enhp = 7: engd = 10: enexr = 1
enna$ = "Guard"
RETURN
bat: enna$ = "Bat": enstr = 2: endex = 4: ensta = 1: enper = 0: enine = 1: enwits = 1: enhp = 6: engd = 12: enexr = 1
RETURN
rat: enna$ = "Rat": enstr = 2: endex = 3: ensta = 1: enper = 2: enine = 1: enwits = 2: enhp = 5: engd = 5: enexr = 2
RETURN
teranchala: enna$ = "Teranchala": enstr = 5: endex = 4: ensta = 1: enper = 0: enine = 1: enwits = 1: enhp = 10: engd = 15: enexr = 1
RETURN
blob: enna$ = "Blob": enstr = 10: endex = 10: ensta = 10: enper = 5: enine = 0: enwits = 1: enhp = 7: engd = 20: enexr = 5
RETURN
drake: enna$ = "Drake": enstr = 20: endex = 1: ensta = 10: enper = 20: enine = 10: enwits = 12: enhp = 15: engd = 30: enexr = 20
RETURN
boss1: enna$ = "Bog": enstr = 100: endex = 10: endts = 10: enper = 10: enine = 100: enwits = 100: enhp = 50: engd = 200: enexr = 50
RETURN




figcom:
memfigcursor = memfigcursor + 6
IF memfigcursor > 23 THEN CLS : memfigcursor = 6
LOCATE memfigcursor, 1
GOSUB hrfigcom
GOSUB stat
IF hp < 1 THEN GOTO death
IF enhp < 1 THEN : PLAY "aaabbbccc": GOTO figwin
IF runa = 1 THEN runa = 0: RETURN
GOSUB enfigcom
GOSUB stat
IF hp < 1 THEN GOTO death
IF enhp < 1 THEN : PLAY "aaabbbccc": GOTO figwin
GOTO figcom



figpre: SOUND 2000, 10
neli$ = "Prepare to do battle with " + enna$: GOSUB fiscroll

fight = 1
figsetup:
figv = 2: figh = 7
LOCATE figv, figh: PRINT ""
tp = 1
bt = 7
lf = 1
ri = 63
GOSUB border
tp = 8
bt = 23
lf = 1
ri = 80
GOSUB border
GOSUB stat
LOCATE 2, 10: PRINT "FIGHT"
LOCATE 4, 10: PRINT "ITEM"
LOCATE 2, 45: PRINT "SPELL"
LOCATE 4, 45: PRINT "RUN"
LOCATE 9, 2: PRINT "{*}--------------------------------{COMMAND}-------------------------------{*}"



SLEEP 2

RETURN


hrfigcom:


movehrfig:
fig$ = INKEY$
IF fig$ = CHR$(0) + "H" THEN figv = figv - 2
IF fig$ = CHR$(0) + "P" THEN figv = figv + 2
IF fig$ = CHR$(0) + "M" THEN figh = 43
IF fig$ = CHR$(0) + "K" THEN figh = 7
IF figv < 2 THEN figv = 4
IF figv > 4 THEN figv = 2
LOCATE figv, figh: PRINT ""
IF figv = 2 AND figh = 7 THEN fignum = 1
IF figv = 4 AND figh = 7 THEN fignum = 2
IF figv = 2 AND figh = 43 THEN fignum = 3
IF figv = 4 AND figh = 43 THEN fignum = 4

IF fignum <> 1 THEN LOCATE 2, 7: PRINT " "
IF fignum <> 2 THEN LOCATE 4, 7: PRINT " "
IF fignum <> 3 THEN LOCATE 2, 43: PRINT " "
IF fignum <> 4 THEN LOCATE 4, 43: PRINT " "

IF fig$ = CHR$(13) THEN GOTO figcomcheck
GOTO movehrfig
RETURN
figcomcheck:
IF fignum = 1 THEN hitmis = INT(RND * dex): GOTO hrfigsys
IF fignum = 2 THEN GOSUB items: GOSUB figsetup: RETURN
IF fignum = 3 THEN GOSUB spell: GOSUB figsetup: RETURN
IF fignum = 4 THEN GOSUB runaway: RETURN

RETURN


hrfigsys:
neli$ = "You strike at your enemy": GOSUB fiscroll
neli$ = " ": GOSUB fiscroll
SLEEP 1
IF hitmis < (endex / 2) THEN neli$ = "You missed!!!": GOSUB fiscroll: RETURN
hiten = INT(RND * att)
neli$ = "You hit the vile creature": GOSUB fiscroll
hiten$ = MKI$(hiten)
neli$ = "It's HP is reduced by " + hiten$: GOSUB fiscroll: enhp = enhp - hiten





RETURN
runaway:
runaw = INT(RND * wits)
IF runaw > enwits THEN neli$ = "You are lucky you get away": GOSUB fiscroll: runa = 1 ELSE neli$ = "You are stoped by the enemy": GOSUB fiscroll: GOSUB figsetup


RETURN


enfigcom:
enhitmis = INT(RND * dex)
SLEEP 1
IF enhitmis < (dex / 2) THEN neli$ = "You skillfully dodge " + enna$: GOSUB fiscroll
hithr = INT(RND * enstr)
neli$ = "The " + enna$ + " attacks!!!": GOSUB fiscroll
SLEEP 1
PRINT "He hits you for "; hithr; " Hit Points"
hp = hp - hithr
SLEEP 1
RETURN





figwin:
neli$ = "You have successfully beaten " + enna$: GOSUB fiscroll
DO WHILE INKEY$ = "": LOOP
CLS

PRINT "Your bravery and wit have won you "; engd; " gold": gd = gd + engd
PRINT "Your exp increases by "; enexr: exr = exr + enexr
GOSUB stat
IF exr > 6 AND lv1gain = 0 THEN lv1gain = 1: GOSUB level1up


l10$ = ""
l11$ = ""
l12$ = ""
l13$ = ""
l14$ = ""
l15$ = ""
l16$ = ""
l17$ = ""
l18$ = ""
l19$ = ""
l20$ = ""
l21$ = ""
l22$ = ""
lipl = 0

RETURN
level1up: PLAY "aaabbcccbc"
PRINT "You have gained a level": lv = 2
DO WHILE INKEY$ = "": LOOP
PRINT "Your strength increases by 3": str = str + 3
DO WHILE INKEY$ = "": LOOP
PRINT "Your stamina increases by 4": sta = sta + 4
DO WHILE INKEY$ = "": LOOP
PRINT "Your total Magic Points increase by 3": tmp = 15
DO WHILE INKEY$ = "": LOOP
PRINT "Your total Hit Points increase by 5": thp = 15
DO WHILE INKEY$ = "": LOOP
PRINT "You have learned a new spell": sa$ = "Heal"

RETURN

'-------------------------------MOVE******

move:
CLS
GOSUB stat
IF rm$ = "prisonroom" THEN GOSUB priroomap

movest:
mov$ = INKEY$
IF mov$ = CHR$(0) + "H" THEN mv = mv - 1: GOSUB wallcheck: GOTO move
IF mov$ = CHR$(0) + "K" THEN mh = mh - 2: GOSUB wallcheck: GOTO move
IF mov$ = CHR$(0) + "M" THEN mh = mh + 2: GOSUB wallcheck: GOTO move
IF mov$ = CHR$(0) + "P" THEN mv = mv + 1: GOSUB wallcheck: GOTO move
IF mov$ = CHR$(13) THEN RETURN
IF escmove = 1 THEN escmove = 0: RETURN


GOTO movest
wallcheck:
IF rm$ = "prisonroom" THEN GOSUB priroowall
IF rm$ = "sewchn" THEN GOSUB sewchnwal
RETURN
priroowall:
IF mov$ = "8" AND mv < 11 THEN mv = 11: RETURN
IF mov$ = "4" AND mh < 67 THEN mh = 67: RETURN
IF mov$ = "6" AND mh = 73 AND mv = 12 THEN mh = 71: RETURN
IF mov$ = "6" AND mh = 73 AND mv = 13 THEN mh = 71: RETURN
IF mov$ = "6" AND mh > 75 THEN mh = 75: RETURN
IF mov$ = "8" AND mv < 11 THEN mv = 11: RETURN
IF mov$ = "4" AND mh = 73 AND mv = 12 THEN mh = 75: RETURN
IF mov$ = "4" AND mh = 73 AND mv = 13 THEN mh = 75: RETURN
IF mh = 69 AND mv = 14 THEN RETURN
IF mov$ = "4" AND mv = 14 AND mh = 67 THEN mh = 69: RETURN
IF mov$ = "6" AND mv = 14 AND mh = 71 THEN mh = 69: RETURN
IF mv > 13 THEN mv = mv - 1: RETURN
IF mov$ = "2" AND mv = 12 AND mh = 73 THEN mv = 11: RETURN
IF movatt = 0 THEN movslf = INT(RND * wits) + 1: movatt = 1
movslf = movslf - 1
IF movslf < 1 THEN GOSUB fight: movatt = 0


RETURN
sewchnwal:
IF mv > 27 OR mh > 27 OR mv < 1 OR mh < 1 THEN escmove = 1: PRINT "You slide down a hole and down into the ": PRINT "clutches of a gigantic monster": SLEEP .5: rm$ = "dust": GOSUB fight
RETURN


IF movatt = 0 THEN movslf = INT(RND * wits) + 1: movatt = 1
movslf = movslf - 1
IF movslf < 1 THEN GOSUB fight: movatt = 0



RETURN

priroomap: lf = 65: tp = 1: ri = 80: bt = 16
GOSUB border
LOCATE 7, 65: PRINT "Ь"
LOCATE 7, 80: PRINT "Й"
LOCATE 8, 66: PRINT "      MAP"
LOCATE 9, 66: PRINT "~~~~~~~~~~~~~~"
LOCATE 10, 66: PRINT "ллллллллллллл"
LOCATE 11, 66: PRINT "л          лл"
LOCATE 12, 66: PRINT "л      лл  лл"
LOCATE 13, 66: PRINT "л      лл№№лл"
LOCATE 14, 66: PRINT "ллл  лллллллл"
LOCATE 15, 66: PRINT "ллллллллллллл"
LOCATE mv, mh: PRINT "><"
RETURN

'--------------------------------STORYLINE********

meetsarah:
GOSUB mesbx
GOSUB mss1
RETURN
mesbx:
CLS
tp = 1: bt = 11: ri = 80: lf = 1
GOSUB border
tp = 12: bt = 23: ri = 80: lf = 1
GOSUB border
RETURN

mss1:
LOCATE 2, 2: PRINT "Hello. What in the hell happened to you?"
LOCATE 3, 2: PRINT "You look like hell."
SLEEP 2
LOCATE 13, 2: PRINT "{You try to remember but cant}...."
DO WHILE INKEY$ = "": LOOP
GOSUB mesbx
LOCATE 2, 2: PRINT "Nevermind..."
LOCATE 3, 2: PRINT "My name is Sarah, what's your's?"
LOCATE 13, 2: PRINT "I...I can't remember"
DO WHILE INKEY$ = "": LOOP
LOCATE 4, 2: PRINT "You can't remember your own name?"
LOCATE 5, 2: PRINT "God! What a moron."
LOCATE 6, 2: PRINT "Then what the hell do I call you? "
DO WHILE INKEY$ = "": LOOP
a: LOCATE 14, 2: INPUT ""; name$
LOCATE 7, 2: PRINT "What "; name$; ", thats what you want me to call you?"
LOCATE 15, 2: INPUT ""; a$
IF a$ = "yes" THEN LOCATE 7, 3: PRINT "What kind of name is that, "; name$; ". HaHaHa": GOTO fgas
LOCATE 8, 2: PRINT "Hey--"
DO WHILE INKEY$ = "": LOOP
CLS
GOSUB mesbx
GOTO a
fgas: CLS
GOSUB mesbx
LOCATE 2, 2: PRINT "Okay, "; name$; " I guess I'll see you later "; na$; "{she says sarcasiticly}"
DO WHILE INKEY$ = "": LOOP
LOCATE 13, 2: PRINT "What ,but ..."
DO WHILE INKEY$ = "": LOOP
LOCATE 3, 2: PRINT "There is a secret exit under you. I'll show you."
rm$ = "sewchn"
DO WHILE INKEY$ = "": LOOP
FOR a = 440 TO 1000 STEP 5
b = 1440 - a
SOUND b, b / 1000
NEXT a
CLS
SCREEN 8
FOR a = 1 TO 10
PAINT (1, 1), 4
PAINT (1, 1), 0
NEXT a
SCREEN 0
PRINT "You are alone in a dark stinking hole, you can see nothing."
GOSUB stat








RETURN


'------------------------------------DEATH******


death: PLAY "t255aaad-d-d-fff"



CLS
GOSUB stat
PRINT ""
PRINT "You fought with bravery and wit, ": PRINT "but to no avil you are stuck down for your heroism."
DO WHILE INKEY$ = "": LOOP
credits:
CLS
FOR cr = 1 TO 32
esc$ = INKEY$
IF esc$ = CHR$(27) THEN COLOR 7: SYSTEM
crow1 = 23 - cr: IF crow1 > 1 AND crow1 < 23 THEN LOCATE crow1, 1: PRINT "                                      Writen by"
crow2 = 24 - cr: IF crow2 > 1 AND crow2 < 23 THEN LOCATE crow2, 1: PRINT "                                      ~~~~~~~~~                              "
crow3 = 25 - cr: IF crow3 > 1 AND crow3 < 23 THEN LOCATE crow3, 1: PRINT "                                    Mike Schaeffer                          "
crow4 = 26 - cr: IF crow4 > 1 AND crow4 < 23 THEN LOCATE crow4, 1: PRINT "                                                                             "
crow5 = 27 - cr: IF crow5 > 1 AND crow5 < 23 THEN LOCATE crow5, 1: PRINT "                                                                             "
crow6 = 28 - cr: IF crow6 > 1 AND crow6 < 23 THEN LOCATE crow6, 1: PRINT "                                   Monster Creation                       "
crow7 = 29 - cr: IF crow7 > 1 AND crow7 < 23 THEN LOCATE crow7, 1: PRINT "                                   ~~~~~~~~~~~~~~~~                          "
crow8 = 30 - cr: IF crow8 > 1 AND crow8 < 23 THEN LOCATE crow8, 1: PRINT "                                   Ashley Schaeffer                          "
crow9 = 31 - cr: IF crow9 > 1 AND crow9 < 23 THEN LOCATE crow9, 1: PRINT "                                    Mike Schaeffer                           "
crow10 = 32 - cr: IF crow10 > 1 AND crow10 < 23 THEN LOCATE crow10, 1: PRINT "                                                                             "
crow11 = 33 - cr: IF crow11 > 1 AND crow11 < 23 THEN LOCATE crow11, 1: PRINT "                                                                             "
crow12 = 34 - cr: IF crow12 > 1 AND crow12 < 23 THEN LOCATE crow12, 1: PRINT
crow13 = 35 - cr: IF crow13 > 1 AND crow13 < 23 THEN LOCATE crow13, 1: PRINT
crow14 = 36 - cr: IF crow14 > 1 AND crow14 < 23 THEN LOCATE crow14, 1: PRINT "           /#####\        ',,,                 ,,,'                "
crow15 = 37 - cr: IF crow15 > 1 AND crow15 < 23 THEN LOCATE crow15, 1: PRINT "          I########\         \',             ,'/                   "
crow16 = 38 - cr: IF crow16 > 1 AND crow16 < 23 THEN LOCATE crow16, 1: PRINT "          I##I:\#####\        )#'\         /'#(            /\       "
crow17 = 39 - cr: IF crow17 > 1 AND crow17 < 23 THEN LOCATE crow17, 1: PRINT "          I##I:::\####I\     /##/I         I\##\         /####\      "
crow18 = 40 - cr: IF crow18 > 1 AND crow18 < 23 THEN LOCATE crow18, 1: PRINT "          I##I:::::\##I::\ ,'##(:I         I:)###,     /###/:\##\    "
crow19 = 41 - cr: IF crow19 > 1 AND crow19 < 23 THEN LOCATE crow19, 1: PRINT "          I##I::::/###I:::(#####\I         I/#####)  /(###\:::::/'   "
crow20 = 42 - cr: IF crow20 > 1 AND crow20 < 23 THEN LOCATE crow20, 1: PRINT "          I###\:/####/:\::I\######\       /######/I/::::\###\:/'     "
crow21 = 43 - cr: IF crow21 > 1 AND crow21 < 23 THEN LOCATE crow21, 1: PRINT "          I########/:::::\I::\######\   /######/::I:::::::\###\     "
crow22 = 44 - cr: IF crow22 > 1 AND crow22 < 23 THEN LOCATE crow22, 1: PRINT "          I###I\#####\:::: '\::::\#########/::::/\::::::::::\###)  "
crow23 = 45 - cr: IF crow23 > 1 AND crow23 < 23 THEN LOCATE crow23, 1: PRINT "          I###I::\#####\:/'  '\::::\#####/::::/ ' /\##\:::::/###/   "
crow24 = 46 - cr: IF crow24 > 1 AND crow24 < 23 THEN LOCATE crow24, 1: PRINT "          I###I::::\####I:\    '\::::\#/::::/'  /::::\##\:/###/'    "
crow25 = 47 - cr: IF crow25 > 1 AND crow25 < 23 THEN LOCATE crow25, 1: PRINT "          I###I::::I####I:::\    '\:::I:::/'  /::::::::\####/'     "
crow26 = 48 - cr: IF crow26 > 1 AND crow26 < 23 THEN LOCATE crow26, 1: PRINT "          I###I::::I####I:::::\    '\:I:/'    '\:::::::::\/'        "
crow27 = 49 - cr: IF crow27 > 1 AND crow27 < 23 THEN LOCATE crow27, 1: PRINT "          I##/:\:::'\####\::::I      'I'        '\::::::/'         "
crow28 = 50 - cr: IF crow28 > 1 AND crow28 < 23 THEN LOCATE crow28, 1: PRINT "          I/:::::\::I'\/:::\::I       I           '\::/'            "
crow29 = 51 - cr: IF crow29 > 1 AND crow29 < 23 THEN LOCATE crow29, 1: PRINT "          '\::::::'\I  \:::::\I                     `'                "
crow30 = 52 - cr: IF crow30 > 1 AND crow30 < 23 THEN LOCATE crow30, 1: PRINT "            '\::::/'    '\::::/                                            "
crow31 = 53 - cr: IF crow31 > 1 AND crow31 < 23 THEN LOCATE crow31, 1: PRINT "              '\/'        '\/'                                          "
crow32 = 54 - cr: IF crow32 > 1 AND crow32 < 23 THEN LOCATE crow32, 1: PRINT "                                                                          "









FOR pa = 1 TO 1000: NEXT pa
NEXT cr






COLOR 7: SYSTEM

