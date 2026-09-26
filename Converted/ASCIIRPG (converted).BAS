'FOR a = 0 TO 15
'COLOR a
'PRINT a
'NEXT a
'END




delayer:
CLS
        LOCATE 25, 1: PRINT "calculating speed of computer...If this takes more than 1 sec, control-break";
        hmsec = 1
s1:s1timesec = VAL(MID$(TIME$, 7, 2))
        LOCATE 1, 1: PRINT s1timesec; "s1"
        IF s1timesec > 55 - hmsec THEN GOTO s1

s2:s2timesec = VAL(MID$(TIME$, 7, 2))
        LOCATE 1, 1: PRINT s2timesec; "s2"
        IF s2timesec > 55 - hmsec THEN GOTO s2
        IF s2timesec <> s1timesec + 1 THEN GOTO s2
ss:stimesec = VAL(MID$(TIME$, 7, 2))
        LOCATE 1, 1
        PRINT stimesec; "stime"

        IF stimesec > 55 - hmsec THEN GOTO ss

FOR delayt = 1 TO 500000
        ctimesec = VAL(MID$(TIME$, 7, 2))
        LOCATE 1, 1: PRINT ctimesec; "ctime"
        IF ctimesec = stimesec + hmsec THEN delay = delayt: delayt = 500000
NEXT delayt

 LOCATE 2, 1
 PRINT delay; "-delay"

'/\ delayer

'RPG THE ASCII QUEST
'initilize
hmstory = 1

SCREEN 8, , 1, 0
CLS

'10 ascii shapes for each map
 DIM cm$(0 TO 9) 'current map
 DIM cc$(0 TO 9) 'current color
 DIM om$(0 TO 9) 'outside map
 DIM oc$(0 TO 9) 'outside color
 DIM im$(0 TO 9) 'inside map
 DIM ic$(0 TO 9) 'inside color
 DIM bm$(0 TO 9) 'battle map
 DIM bc$(0 TO 9) 'battle color
 DIM sm$(0 TO 9) 'special map
 DIM sc$(0 TO 9) 'special color

 DIM introc(1 TO 25)
 DIM ro$(1 TO 100)
 openingmenuplace = 15


'0 place will be used for special characters like certian items
 om$(1) = "2"    'happy face = you
 om$(2) = "38"   'castle
 om$(3) = "127"  'villiage
 om$(4) = "5"    'trees
 om$(5) = "36"   'mountains
 om$(6) = "247"  'water
 om$(7) = ""
 om$(8) = ""
 om$(9) = "32"   'space

 oc$(1) = "1"
 oc$(2) = "14"
 oc$(3) = "2"
 oc$(4) = "10"
 oc$(5) = "6"
 oc$(6) = "9"
 oc$(7) = ""
 oc$(8) = ""
 oc$(9) = "2"
 

 im$(1) = "2"    'happy face=you
 im$(2) = "1"    'happy face = everyone else
 im$(3) = "219"  'wall
 im$(4) = "5"    'trees
 im$(5) = "234"  'door
 im$(6) = "247"  'water
 im$(7) = "209"  'sign
 im$(8) = ""
 im$(9) = "32"   'space
 
 ic$(1) = "1"
 ic$(2) = "15"
 ic$(3) = "7"
 ic$(4) = "10"
 ic$(5) = "6"
 ic$(6) = "9"
 ic$(7) = "6"
 ic$(8) = ""
 ic$(9) = ""


'variable=1 means that, that section is open
 newgameopen = 1
 introductionopen = 1
'for gold other number
 goldpl$ = "##########"
 numpl$ = "####"

cs = 1
bcs = 6
llcs = 4
ccs = cs
GOSUB colorschemes




main:
 GOSUB introduction
 GOSUB openingmenu
'GOTO main
END

colorschemes:
IF ccs = 1 THEN ca = 9: cb = 1: cc = 8
IF ccs = 2 THEN ca = 10: cb = 2: cc = 7
IF ccs = 3 THEN ca = 11: cb = 3: cc = 7
IF ccs = 4 THEN ca = 12: cb = 4: cc = 8
IF ccs = 5 THEN ca = 13: cb = 5: cc = 8
IF ccs = 6 THEN ca = 14: cb = 6: cc = 8
IF ccs = 7 THEN ca = 15: cb = 7: cc = 8

RETURN


introduction:
 CLS
 COLOR ca, 0
 b = 1: c = 2: d = 3
        FOR a = 1 TO 25
                introc(a) = 0
        NEXT a
DO WHILE b <> 15
 IF INKEY$ = CHR$(13) THEN RETURN

introc(b) = ca
introc(c) = cb
introc(d) = cc


b = b + 1
c = c + 1
d = d + 1





introductionscript:
COLOR introc(3)
LOCATE 3, 29: PRINT "A boy divided by fate,"
COLOR introc(4)
LOCATE 5, 28: PRINT "Posed against the world,"
COLOR introc(5)
LOCATE 7, 27: PRINT "And worlds within himself,"
COLOR introc(6)
LOCATE 9, 25: PRINT "Stands now in the place where,"
COLOR introc(7)
LOCATE 11, 30: PRINT "Once he was a child."
COLOR introc(8)
LOCATE 13, 29: PRINT "Taunted by an illness,"
COLOR introc(9)
LOCATE 15, 25: PRINT "That is not yet known to him,"
COLOR introc(10)
LOCATE 17, 24: PRINT "He fights for unriquitted love,"
COLOR introc(11)
LOCATE 19, 23: PRINT "And the chance to finally be seen,"
COLOR introc(12)
LOCATE 21, 24: PRINT "With favor in the eyes of those,"
COLOR introc(13)
LOCATE 23, 31: PRINT "Who engulf him..."


FOR a = 1 TO delay / 2: IF INKEY$ = CHR$(13) THEN b = 15: a = delay / 2
NEXT a

PCOPY 1, 0
LOOP
DO WHILE INKEY$ = "": LOOP
COLOR ca
RETURN

openingmenu:
CLS
openingmenux = 0
openingmenuy = 0

'  for...next makes boarder openingmenu(x) and (y) are the coordences for the
'  menu.
 COLOR ca
 FOR openingmenuboarder = 1 TO 80
        openingmenux = openingmenux + 1
        openingmenuy = openingmenuy + 1
        LOCATE 1, openingmenux: PRINT CHR$(21)
        LOCATE 25, openingmenux: PRINT CHR$(21);
        IF openingmenuboarder < 25 THEN LOCATE openingmenuy, 1: PRINT CHR$(21);
        IF openingmenuboarder < 25 THEN LOCATE openingmenuy, 80: PRINT CHR$(21);
 NEXT openingmenuboarder
LOCATE 5, 38: PRINT "RPG:"
LOCATE 6, 32: PRINT "The Ascii Quests"

'start, continue, introduction, instructions

LOCATE 20, 32: PRINT CHR$(17); "   New Game   "; CHR$(16)
PCOPY 1, 0
IF newgameopen = 0 THEN COLOR cb: LOCATE 20, 33: PRINT "   New Game   ": COLOR ca
openingmenuoptions$ = " Instructions    New Game      Continue    Introduction  Instructions  "
PCOPY 1, 0
openingmenuoptions:
openingmenucursor$ = INKEY$
IF openingmenucursor$ = "" THEN GOTO openingmenuoptions
IF openingmenucursor$ = CHR$(0) + "M" THEN
        openingmenuscroll = 0
        IF openingmenuplace = 57 THEN openingmenuplace = 1
        DO WHILE openingmenuscroll <> 14
        openingmenuscroll = openingmenuscroll + 1
        IF newgameopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 1 THEN COLOR cb
        IF continueopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 15 THEN COLOR cb
        IF introductionopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 29 THEN COLOR cb
        IF instructionsopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 43 THEN COLOR cb
       
        LOCATE 20, 33: PRINT MID$(openingmenuoptions$, openingmenuplace + openingmenuscroll, 14)
        PCOPY 1, 0
        LOOP
        COLOR ca
        openingmenuplace = openingmenuplace + 14
        IF openingmenuplace = 57 THEN openingmenuplace = 1
END IF

IF openingmenucursor$ = CHR$(0) + "K" THEN
        IF openingmenuplace = 1 THEN openingmenuplace = 57
        openingmenuscroll = 0
        DO WHILE openingmenuscroll <> 14
        openingmenuscroll = openingmenuscroll + 1
       IF newgameopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 29 THEN COLOR cb
        IF continueopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 43 THEN COLOR cb
        IF introductionopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 57 THEN COLOR cb
        IF instructionsopen = 0 AND openingmenuscroll = 14 AND openingmenuplace = 15 THEN COLOR cb
       
        LOCATE 20, 33: PRINT MID$(openingmenuoptions$, openingmenuplace - openingmenuscroll, 14)
        PCOPY 1, 0
        LOOP
        COLOR ca
        openingmenuplace = openingmenuplace - 14
        IF openingmenuplace = 1 THEN openingmenuplace = 57
END IF

IF openingmenucursor$ <> CHR$(13) THEN GOTO openingmenuoptions

IF openingmenuplace = 15 THEN
        IF newgameopen = 1 THEN GOSUB newgame
        IF newgameopen = 0 THEN BEEP
END IF
IF openingmenuplace = 29 THEN
        IF continueopen = 1 THEN a = a
        IF continueopen = 0 THEN BEEP
END IF

IF openingmenuplace = 43 THEN
        IF introductionopen = 1 THEN
                GOSUB introduction
                openingmenucursor$ = ""
                openingmenuplace = 15
        END IF
        IF introductionopen = 0 THEN BEEP
END IF

IF openingmenuplace = 57 OR openingmenuplace = 1 THEN
        IF instructionsopen = 1 THEN a = a
        IF instructionsopen = 0 THEN BEEP
END IF

GOTO openingmenu


RETURN



newgame:
 'newgame init
  place$ = "Shiva"
  gold = 400
  x = 38
  y = 9
  pname$(1) = "Terance"
  job$(1) = "none"
  pc(1) = 9
  hp(1) = 10
  thp(1) = 10
  mp(1) = 3
  tmp(1) = 3
  ep(1) = 0
  nep(1) = 10
  lv(1) = 1
 GOSUB story 'story 1
 bfade = 1
 GOSUB boarder
'map
 GOSUB chkplace
 GOSUB putgraph
 GOSUB story         'story 2
 GOSUB move
 GOSUB story                 'story 3
 
game:
 IF INT(thp(1) / 4) >= hp(1) THEN ccs = llcs
 GOSUB colorschemes
 GOSUB boarder
 GOSUB chkplace
 GOSUB putgraph
 GOSUB move
GOTO game

putgraph:
'across
 FOR downgraph = 1 TO 11
 FOR acrossgraph = 1 TO 38
  LOCATE downgraph + 1, acrossgraph + 1
  COLOR (VAL((cc$(VAL(MID$(ro$(downgraph), acrossgraph, 1))))))
  PRINT CHR$(VAL((cm$(VAL(MID$(ro$(downgraph), acrossgraph, 1))))))
  'PCOPY 1, 0
 NEXT acrossgraph
 NEXT downgraph
   LOCATE y, x: COLOR pc(1): PRINT CHR$(2): COLOR ca
   PCOPY 1, 0

 PCOPY 1, 0
RETURN

chkplace:
IF place$ = "Shiva" THEN GOSUB shiva

RETURN

boarder:
CLS
boarder2:
GOSUB clearboxes
IF bfade = 1 THEN COLOR 0, 0: GOSUB bfadestart
IF bfade = 1 THEN COLOR cc, 0: GOSUB bfadestart
IF bfade = 1 THEN COLOR cb, 0: GOSUB bfadestart
IF bfade = 1 THEN COLOR ca, 0: GOSUB bfadestart
bfade = 0


COLOR ca, 0
bfadestart:
COLOR ca, 0
'            Extended ASCII Chart (character codes 128 - 255)
'176 °    192 À    208 Ð    177 ±    193 Á    209 Ñ
'178 ²    194 Â    210 Ò    179 ³    195 Ã    211 Ó
'180 ´    196 Ä    212 Ô    181 µ    197 Å    213 Õ
'182 ¶    198 Æ    214 Ö    183 ·    199 Ç    215 ×
'184 ¸    200 È    216 Ø    185 ¹    201 É    217 Ù
'186 º    202 Ê    218 Ú    187 »    203 Ë    219 Û
'188 ¼    204 Ì    220 Ü    189 ½    205 Í    221 Ý
'190 ¾    206 Î    222 Þ    191 ¿    207 Ï    223 ß
'sides
FOR a = 1 TO 80
 LOCATE 1, a: PRINT CHR$(205)
 LOCATE 25, a: PRINT CHR$(205);
 LOCATE 23, a: PRINT CHR$(205)
 LOCATE 1, a: PRINT CHR$(205)
 IF a < 40 THEN LOCATE 13, a: PRINT CHR$(196)
NEXT a
FOR b = 1 TO 25
 LOCATE b, 1: PRINT CHR$(186);
 IF b < 23 THEN LOCATE b, 40: PRINT CHR$(179);
 LOCATE b, 80: PRINT CHR$(186);
NEXT b
'side intersections
 LOCATE 23, 1: PRINT CHR$(204)
 LOCATE 23, 80: PRINT CHR$(185)
 LOCATE 1, 40: PRINT CHR$(209)
 LOCATE 13, 1: PRINT CHR$(199)
 LOCATE 13, 40: PRINT CHR$(180)
 LOCATE 23, 40: PRINT CHR$(207)
 'LOCATE 25, 40: PRINT CHR$(207);
'CORNERS
LOCATE 1, 1: PRINT CHR$(201)
LOCATE 1, 80: PRINT CHR$(187)
LOCATE 25, 1: PRINT CHR$(200);
LOCATE 25, 80: PRINT CHR$(188);
'menu
LOCATE 14, 14: PRINT "~Main Menu~"
LOCATE 16, 21: PRINT "F1 - Help"
LOCATE 16, 3: PRINT "1 - Items"
LOCATE 17, 3: PRINT "2 - Magic"
LOCATE 18, 3: PRINT "3 - Status"
LOCATE 19, 3: PRINT "4 - Equip"
LOCATE 20, 3: PRINT "5 - Config"
LOCATE 21, 3: PRINT "6 - Save"

'right box
LOCATE 22, 41: PRINT "Gold"
LOCATE 22, 70: USING goldpl$;PRINT gold
LOCATE 2, 41: PRINT pname$(1)
LOCATE 4, 43: PRINT "Hp"
LOCATE 4, 46: USING numpl$;PRINT hp(1)
LOCATE 4, 50: PRINT "/"
LOCATE 4, 51: USING numpl$;PRINT thp(1)
LOCATE 5, 43: PRINT "Mp"
LOCATE 5, 46: USING numpl$;PRINT mp(1)
LOCATE 5, 50: PRINT "/"
LOCATE 5, 51: USING numpl$;PRINT tmp(1)
LOCATE 6, 43: PRINT "Exp"
LOCATE 6, 47: PRINT USING goldpl$; ep;



'bottom box
GOSUB chkmessage




'if for fading in on intro
IF bfade = 1 THEN FOR d = 1 TO delay / 2: NEXT d
IF bfade = 1 THEN PCOPY 1, 0
IF bfade = 1 THEN RETURN

LOCATE 3, 42: COLOR pc(1): PRINT CHR$(2); " ";
COLOR ca: PRINT job$(1)


PCOPY 1, 0




RETURN

move:
  GOSUB chkmessage
move$ = INKEY$
IF move$ = "" THEN GOTO move
IF move$ = CHR$(27) THEN END
LOCATE y, x: COLOR pc(1): PRINT " "
py = y
px = x
IF move$ = CHR$(0) + "H" THEN y = y - 1
IF move$ = CHR$(0) + "P" THEN y = y + 1
IF move$ = CHR$(0) + "K" THEN x = x - 1
IF move$ = CHR$(0) + "M" THEN x = x + 1

IF move$ = "1" THEN GOSUB item
IF move$ = "2" THEN GOSUB magic
IF move$ = "3" THEN GOSUB status
IF move$ = "4" THEN GOSUB equip
IF move$ = "5" THEN GOSUB config
IF move$ = "6" THEN GOSUB save

 IF " " <> CHR$(VAL((cm$(VAL(MID$(ro$(y - 1), x - 1, 1)))))) THEN
        y = py
        x = px
 END IF
 


LOCATE y, x: COLOR pc(1): PRINT CHR$(2): COLOR ca

'V Remove
 'LOCATE 13, 50: PRINT "x "; x; " y "; y
'^
PCOPY 1, 0




GOTO move
RETURN

item:
RETURN
magic:
RETURN
status:
RETURN
equip:
RETURN

config:
GOSUB clearboxes
'setup for config
'left box
COLOR ca
LOCATE 14, 14: PRINT "~Config Menu~"
LOCATE 16, 2: PRINT "Esc - Exit"
LOCATE 16, 30: PRINT CHR$(24)
LOCATE 17, 28: PRINT "Change"
LOCATE 18, 30: PRINT CHR$(25)
LOCATE 20, 2: PRINT CHR$(27); CHR$(26); " Change attributes"
'right box
LOCATE 2, 56: PRINT "~General~"
LOCATE 4, 42: PRINT "Speed"
LOCATE 4, 69: COLOR cb: USING goldpl$;PRINT delay: COLOR ca
LOCATE 6, 56: PRINT "~Battle~"
LOCATE 8, 42: PRINT "Battle Menu"
LOCATE 9, 47: COLOR cb: IF battlemenu = 0 THEN PRINT "Short" ELSE PRINT "Long "
LOCATE 10, 42: COLOR ca: PRINT "Battle Color"
LOCATE 11, 47: COLOR cb
IF bcs = 1 THEN PRINT "Ocean  "
IF bcs = 2 THEN PRINT "Seaweed"
IF bcs = 3 THEN PRINT "Sky    "
IF bcs = 4 THEN PRINT "Blood  "
IF bcs = 5 THEN PRINT "Royal  "
IF bcs = 6 THEN PRINT "Flame  "
IF bcs = 7 THEN PRINT "Heaven "
COLOR ca

LOCATE 13, 57: PRINT "~Color~"
LOCATE 15, 42: PRINT "Color Scheme"
LOCATE 16, 47: COLOR cb
IF cs = 1 THEN PRINT "Ocean  "
IF cs = 2 THEN PRINT "Seaweed"
IF cs = 3 THEN PRINT "Sky    "
IF cs = 4 THEN PRINT "Blood  "
IF cs = 5 THEN PRINT "Royal  "
IF cs = 6 THEN PRINT "Flame  "
IF cs = 7 THEN PRINT "Heaven "
COLOR ca
LOCATE 17, 42: PRINT "Low Life Color Scheme"
LOCATE 18, 47: COLOR cb
IF llcs = 1 THEN PRINT "Ocean  "
IF llcs = 2 THEN PRINT "Seaweed"
IF llcs = 3 THEN PRINT "Sky    "
IF llcs = 4 THEN PRINT "Blood  "
IF llcs = 5 THEN PRINT "Royal  "
IF llcs = 6 THEN PRINT "Flame  "
IF llcs = 7 THEN PRINT "Heaven "
COLOR ca

LOCATE 20, 58: PRINT "~Save~"
COLOR cb
LOCATE 22, 48: PRINT "Save to Initilization File"
COLOR ca






LOCATE 4, 68: PRINT CHR$(17)
LOCATE 4, 79: PRINT CHR$(16)
LOCATE 4, 69: USING goldpl$;PRINT delay

PCOPY 1, 0
configy = 1
configmove:
configmove$ = INKEY$
IF configmove$ = "" THEN GOTO configmove
IF configmove$ = CHR$(27) THEN GOSUB boarder2: RETURN

IF configmove$ = CHR$(0) + "H" THEN configy = configy - 1
IF configmove$ = CHR$(0) + "P" THEN configy = configy + 1
        IF configy = 7 THEN configy = 1
        IF configy = 0 THEN configy = 6
        



IF configmove$ = CHR$(0) + "K" THEN
        IF configy = 1 THEN delay = delay - 1
        IF configy = 2 AND battlemenu = 0 THEN battlemenu = 1: GOTO 2
        IF configy = 2 AND battlemenu = 1 THEN battlemenu = 0
'2 and 3 are bugfixes because of the 2 above statments
'I really hate these kind of bug fixes i think that
'the reflect bad programing
'
'but i have been working hard on this game for the past 3 days
'and it is 20 till midnight so kiss my ass :)
2
        IF configy = 3 THEN bcs = bcs - 1
                IF bcs = 0 THEN bcs = 7
        IF configy = 4 THEN cs = cs - 1
                IF cs = 0 THEN cs = 7
        IF configy = 5 THEN llcs = llcs - 1
                IF llcs = 0 THEN llcs = 7

END IF
IF configmove$ = CHR$(0) + "M" THEN
        IF configy = 1 THEN delay = delay + 1
        IF configy = 2 AND battlemenu = 0 THEN battlemenu = 1: GOTO 3
        IF configy = 2 AND battlemenu = 1 THEN battlemenu = 0
3
        IF configy = 3 THEN bcs = bcs + 1
                IF bcs = 8 THEN bcs = 1
        IF configy = 4 THEN cs = cs + 1
                IF cs = 8 THEN cs = 1
        IF configy = 5 THEN llcs = llcs + 1
                IF llcs = 8 THEN llcs = 1
END IF




'This is the second part of config makes cursor
COLOR ca
IF configy = 1 THEN
        LOCATE 4, 68: PRINT CHR$(17)
        LOCATE 4, 69: USING goldpl$;PRINT delay
        LOCATE 4, 79: PRINT CHR$(16)
                LOCATE 9, 46: PRINT " "
                LOCATE 9, 47: COLOR cb: IF battlemenu = 0 THEN PRINT "Short" ELSE PRINT "Long "
                LOCATE 9, 52: PRINT " "
                COLOR cb
                LOCATE 22, 48: PRINT "Save to Initilization File"

       
        LOCATE 22, 47: PRINT " "
        LOCATE 22, 48: PRINT "Save to Initilization File"
        LOCATE 22, 74: PRINT " "

COLOR ca
END IF

IF configy = 2 THEN
        LOCATE 9, 46: PRINT CHR$(17)
        LOCATE 9, 47: IF battlemenu = 0 THEN PRINT "Short" ELSE PRINT "Long "
        LOCATE 9, 52: PRINT CHR$(16)
                COLOR cb
                LOCATE 4, 68: PRINT " "
                LOCATE 4, 69: USING goldpl$;PRINT delay
                LOCATE 4, 79: PRINT " "
                LOCATE 11, 46: PRINT " "
                LOCATE 11, 47: COLOR cb
                IF bcs = 1 THEN PRINT "Ocean  "
                IF bcs = 2 THEN PRINT "Seaweed"
                IF bcs = 3 THEN PRINT "Sky    "
                IF bcs = 4 THEN PRINT "Blood  "
                IF bcs = 5 THEN PRINT "Royal  "
                IF bcs = 6 THEN PRINT "Flame  "
                IF bcs = 7 THEN PRINT "Heaven "
                LOCATE 11, 54: PRINT " "
        COLOR ca

END IF

IF configy = 3 THEN
        LOCATE 11, 46: PRINT CHR$(17)
        LOCATE 11, 47
        IF bcs = 1 THEN PRINT "Ocean  "
        IF bcs = 2 THEN PRINT "Seaweed"
        IF bcs = 3 THEN PRINT "Sky    "
        IF bcs = 4 THEN PRINT "Blood  "
        IF bcs = 5 THEN PRINT "Royal  "
        IF bcs = 6 THEN PRINT "Flame  "
        IF bcs = 7 THEN PRINT "Heaven "
        LOCATE 11, 54: PRINT CHR$(16)
                COLOR cb
                LOCATE 9, 46: PRINT " "
                LOCATE 9, 47: IF battlemenu = 0 THEN PRINT "Short" ELSE PRINT "Long "
                LOCATE 9, 52: PRINT " "
                
                LOCATE 16, 46: PRINT " "
                LOCATE 16, 47:
                IF cs = 1 THEN PRINT "Ocean  "
                IF cs = 2 THEN PRINT "Seaweed"
                IF cs = 3 THEN PRINT "Sky    "
                IF cs = 4 THEN PRINT "Blood  "
                IF cs = 5 THEN PRINT "Royal  "
                IF cs = 6 THEN PRINT "Flame  "
                IF cs = 7 THEN PRINT "Heaven "
                LOCATE 16, 54: PRINT " "
                COLOR ca
END IF
IF configy = 4 THEN
        COLOR ca
        LOCATE 16, 46: PRINT CHR$(17)
        LOCATE 16, 47:
        IF cs = 1 THEN PRINT "Ocean  "
        IF cs = 2 THEN PRINT "Seaweed"
        IF cs = 3 THEN PRINT "Sky    "
        IF cs = 4 THEN PRINT "Blood  "
        IF cs = 5 THEN PRINT "Royal  "
        IF cs = 6 THEN PRINT "Flame  "
        IF cs = 7 THEN PRINT "Heaven "
        LOCATE 16, 54: PRINT CHR$(16)
                COLOR cb
                LOCATE 9, 46: PRINT " "
                LOCATE 9, 47: IF battlemenu = 0 THEN PRINT "Short" ELSE PRINT "Long "
                LOCATE 9, 52: PRINT " "
                COLOR ca
                LOCATE 11, 46: PRINT " "
                LOCATE 11, 54: PRINT " "
                       
                        'V bug
                         IF INT(thp(1) / 4) < hp(1) THEN ccs = cs
                        '^
                        GOSUB colorschemes

                        'setup for config
                        'left box
                        COLOR ca
                        LOCATE 14, 14: PRINT "~Config Menu~"
                        LOCATE 16, 2: PRINT "Esc - Exit"
                        LOCATE 16, 30: PRINT CHR$(24)
                        LOCATE 17, 28: PRINT "Change"
                        LOCATE 18, 30: PRINT CHR$(25)
                        LOCATE 20, 2: PRINT CHR$(27); CHR$(26); " Change attributes"
                        'right box
                        LOCATE 2, 56: PRINT "~General~"
                        LOCATE 4, 42: PRINT "Speed"
                        LOCATE 4, 69: COLOR cb: USING goldpl$;PRINT delay: COLOR ca
                        LOCATE 6, 56: PRINT "~Battle~"
                        LOCATE 8, 42: PRINT "Battle Menu"
                        LOCATE 9, 47: COLOR cb: IF battlemenu = 0 THEN PRINT "Short" ELSE PRINT "Long "
                        LOCATE 10, 42: COLOR ca: PRINT "Battle Color"
                        LOCATE 11, 47: COLOR cb
                        IF bcs = 1 THEN PRINT "Ocean  "
                        IF bcs = 2 THEN PRINT "Seaweed"
                        IF bcs = 3 THEN PRINT "Sky    "
                        IF bcs = 4 THEN PRINT "Blood  "
                        IF bcs = 5 THEN PRINT "Royal  "
                        IF bcs = 6 THEN PRINT "Flame  "
                        IF bcs = 7 THEN PRINT "Heaven "
                        COLOR ca

                        LOCATE 13, 57: PRINT "~Color~"
                        LOCATE 15, 42: PRINT "Color Scheme"
                        LOCATE 16, 47: COLOR ca
                        IF cs = 1 THEN PRINT "Ocean  "
                        IF cs = 2 THEN PRINT "Seaweed"
                        IF cs = 3 THEN PRINT "Sky    "
                        IF cs = 4 THEN PRINT "Blood  "
                        IF cs = 5 THEN PRINT "Royal  "
                        IF cs = 6 THEN PRINT "Flame  "
                        IF cs = 7 THEN PRINT "Heaven "
                        LOCATE 17, 42: PRINT "Low Life Color Scheme"
                        LOCATE 18, 47: COLOR cb
                        IF llcs = 1 THEN PRINT "Ocean  "
                        IF llcs = 2 THEN PRINT "Seaweed"
                        IF llcs = 3 THEN PRINT "Sky    "
                        IF llcs = 4 THEN PRINT "Blood  "
                        IF llcs = 5 THEN PRINT "Royal  "
                        IF llcs = 6 THEN PRINT "Flame  "
                        IF llcs = 7 THEN PRINT "Heaven "
                        COLOR ca

                        LOCATE 20, 58: PRINT "~Save~"
                        COLOR cb
                        LOCATE 22, 48: PRINT "Save to Initilization File"
                        COLOR ca
                        LOCATE 16, 46: PRINT CHR$(17)
                        LOCATE 16, 54: PRINT CHR$(16)

                        FOR a = 1 TO 80
                        LOCATE 1, a: PRINT CHR$(205)
                        LOCATE 25, a: PRINT CHR$(205);
                        LOCATE 23, a: PRINT CHR$(205)
                        LOCATE 1, a: PRINT CHR$(205)
                        IF a < 40 THEN LOCATE 13, a: PRINT CHR$(196)
                        NEXT a
                        FOR b = 1 TO 25
                        LOCATE b, 1: PRINT CHR$(186);
                        IF b < 23 THEN LOCATE b, 40: PRINT CHR$(179);
                        LOCATE b, 80: PRINT CHR$(186);
                        NEXT b
                        'side intersections
                        LOCATE 23, 1: PRINT CHR$(204)
                        LOCATE 23, 80: PRINT CHR$(185)
                        LOCATE 1, 40: PRINT CHR$(209)
                        LOCATE 13, 1: PRINT CHR$(199)
                        LOCATE 13, 40: PRINT CHR$(180)
                        LOCATE 23, 40: PRINT CHR$(207)
                        'LOCATE 25, 40: PRINT CHR$(207);
                        'CORNERS
                        LOCATE 1, 1: PRINT CHR$(201)
                        LOCATE 1, 80: PRINT CHR$(187)
                        LOCATE 25, 1: PRINT CHR$(200);
                        LOCATE 25, 80: PRINT CHR$(188);
                        LOCATE 18, 46: PRINT " "
                        LOCATE 18, 54: PRINT " "
END IF

IF configy = 5 THEN
        LOCATE 18, 46: PRINT CHR$(17)
        LOCATE 18, 47:
        IF llcs = 1 THEN PRINT "Ocean  "
        IF llcs = 2 THEN PRINT "Seaweed"
        IF llcs = 3 THEN PRINT "Sky    "
        IF llcs = 4 THEN PRINT "Blood  "
        IF llcs = 5 THEN PRINT "Royal  "
        IF llcs = 6 THEN PRINT "Flame  "
        IF llcs = 7 THEN PRINT "Heaven "
        LOCATE 18, 54: PRINT CHR$(16)
                COLOR cb
                LOCATE 16, 46: PRINT " "
                LOCATE 16, 47:
                IF cs = 1 THEN PRINT "Ocean  "
                IF cs = 2 THEN PRINT "Seaweed"
                IF cs = 3 THEN PRINT "Sky    "
                IF cs = 4 THEN PRINT "Blood  "
                IF cs = 5 THEN PRINT "Royal  "
                IF cs = 6 THEN PRINT "Flame  "
                IF cs = 7 THEN PRINT "Heaven "
                LOCATE 16, 54: PRINT " "
                LOCATE 22, 47: PRINT " "
                LOCATE 22, 48: PRINT "Save to Initilization File"
                LOCATE 22, 74: PRINT " "
               
                COLOR ca

END IF

IF configy = 6 THEN
        LOCATE 22, 47: PRINT CHR$(17)
        LOCATE 22, 48: PRINT "Save to Initilization File"
        LOCATE 22, 74: PRINT CHR$(16)
               
                COLOR cb
                LOCATE 18, 46: PRINT " "
                LOCATE 18, 47:
                IF llcs = 1 THEN PRINT "Ocean  "
                IF llcs = 2 THEN PRINT "Seaweed"
                IF llcs = 3 THEN PRINT "Sky    "
                IF llcs = 4 THEN PRINT "Blood  "
                IF llcs = 5 THEN PRINT "Royal  "
                IF llcs = 6 THEN PRINT "Flame  "
                IF llcs = 7 THEN PRINT "Heaven "
                LOCATE 18, 54: PRINT " "
                LOCATE 4, 68: PRINT " "
                LOCATE 4, 69: USING goldpl$;PRINT delay
                LOCATE 4, 79: PRINT " "


END IF
PCOPY 1, 0
GOTO configmove

GOSUB boarder2
RETURN
save:
RETURN

clearboxes:
'clears right box
FOR cy = 2 TO 22
 LOCATE cy, 41
 PRINT SPC(39);
NEXT cy
FOR cy = 14 TO 22
 LOCATE cy, 2
 PRINT SPC(38);
NEXT cy
LOCATE 24, 2: PRINT "                                                                              ";
PCOPY 1, 0

RETURN

chkmessage:

LOCATE 24, 2: PRINT "                                                                              ";
 
'bottom box
 LOCATE 24, 2: PRINT "I am in - "; place$;

SELECT CASE place$
 CASE IS = "Shiva"
  'item shop merchant
  IF x = 5 AND y = 5 THEN
        LOCATE 24, 2: PRINT "                                                                              ";
        LOCATE 24, 2: PRINT "Welcome to the Item Shop.";
  END IF
  IF x = 9 AND y = 7 THEN
        LOCATE 24, 2: PRINT "                                                                              ";
        LOCATE 24, 2: PRINT "The sign says - Item Shop";
  END IF
  IF x = 10 AND y = 10 THEN
        LOCATE 24, 2: PRINT "                                                                              ";
        LOCATE 24, 2: PRINT "The sign says - Inn.";
  END IF
  IF x = 5 AND y = 10 THEN
        LOCATE 24, 2: PRINT "                                                                              ";
        LOCATE 24, 2: PRINT "Welcome to the Inn.";
  END IF
  IF x = 18 AND y = 8 THEN
        LOCATE 24, 2: PRINT "                                                                              ";
        LOCATE 24, 2: PRINT "Good morning "; pname$(1);
  END IF
  IF x = 21 AND y = 9 THEN
        LOCATE 24, 2: PRINT "                                                                              ";
        LOCATE 24, 2: PRINT "The north east house has been locked up for 200 years";
  END IF
  IF x = 32 AND y = 6 THEN
        LOCATE 24, 2: PRINT "                                                                              ";
        LOCATE 24, 2: PRINT "The door seems to be locked.";
  END IF


PCOPY 1, 0
END SELECT



RETURN

story:
SELECT CASE storysect
 CASE IS = 0
 CLS
 PCOPY 1, 0
  FOR a = 1 TO 5
        IF a = 1 THEN COLOR ca
        IF a = 2 THEN COLOR cb
        IF a = 3 THEN COLOR cc
        IF a = 4 THEN COLOR 0
        LOCATE 1, 1: PRINT "Help me..."
        FOR b = 1 TO delay * 5: NEXT b
        PCOPY 1, 0
  NEXT a
 CASE ELSE
  RETURN
END SELECT
storysect = storysect + 1
RETURN

'towns
shiva:
 FOR a = 1 TO 9
        cm$(a) = im$(a)
        cc$(a) = ic$(a)
 NEXT a
  shopitem$(1) = "Cure"
  shopitem$(2) = "Antidote"
  shopitem$(3) = "Tent"
  shopitem$(4) = ""
  shopitem$(5) = ""
  shopitem$(6) = ""
  shopitem$(7) = ""
  shopitem$(8) = ""
  shopitem$(9) = ""
  shopitem$(0) = ""
  

  '         1   5    10   15   20   25   30   35 38
  '         |   |    |    |    |    |    |    |  |
  ro$(1) = "33333333333333333333333333333333333333"
  ro$(2) = "39929939999999999999969993333333333333"
  ro$(3) = "33333339999499999999969993333333333333"
  ro$(4) = "39999939999999999994969493333353333333"
  ro$(5) = "33393337994999933333369999999999999993"
  ro$(6) = "39999999999999932999366666666696666663"
  ro$(7) = "33333333999499939992349999999999333333"
  ro$(8) = "39399993799999939999399999999994399993"
  ro$(9) = "32399999999999933993399999499999999993"
 ro$(10) = "39399993999999999999999999999994399993"
 ro$(11) = "33333333333333333339933333333333333333"
  '         |   |    |    |    |    |    |    |  |
  '         1   5    10   15   20   25   30   35 38

RETURN
 im$(1) = "2"    'happy face = you
 im$(2) = "1"    'happy face = everyone else
 im$(3) = "219"  'wall
 im$(4) = "5"    'trees
 im$(5) = "234"  'door
 im$(6) = "247"  'water
 im$(7) = "209"  'sign
 im$(8) = ""
 im$(9) = ""     'blank