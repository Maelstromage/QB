delayer:
CLS
hmsec = 1
s1: s1timesec = VAL(MID$(TIME$, 7, 2))
LOCATE 1, 1: PRINT s1timesec; "s1"
IF s1timesec > 55 - hmsec THEN GOTO s1

s2: s2timesec = VAL(MID$(TIME$, 7, 2))
LOCATE 1, 1: PRINT s2timesec; "s2"
IF s2timesec > 55 - hmsec THEN GOTO s2
IF s2timesec <> s1timesec + 1 THEN GOTO s2
ss: stimesec = VAL(MID$(TIME$, 7, 2))
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

fightcury = 2 'fight cursor y axis
Fightherospeeddelaymax = 10
howmanyheros = 4   'total amount of heros
DIM heroturn
DIM fightherofight$(4)
DIM fightheromagic$(4)
DIM fightherospecial$(4)
DIM fightheroitem$(4)
DIM gauge(4)
DIM herospeed(4)

herospeed(1) = 10
herospeed(2) = 3
herospeed(3) = 2
herospeed(4) = 5


'V change for game...
FOR a = 1 TO 4
fightherofight$(a) = "Fight"
fightheromagic$(a) = "Magic"
fightherospecial$(a) = "Hero " + STR$(a)
fightheroitem$(a) = "Item"
NEXT a

'GOSUB fight

mode$ = "map"

SCREEN 7

COLOR 12, 4
LOCATE 12, 13: PRINT "Scarlet Dragon"

'PLAY "mbo3 l8bp5ageap4gabp5b>c<"

DO WHILE INKEY$ = "": LOOP
COLOR 15, 0



'DECLARE SUB chr ()

'CALL colors
'CALL chr
cc = 15       'color
xx = 19
yy = 19
x = 6
y = 9
px = 6
py = 9
pxx = 19
pyy = 19
xxx = 13
yyy = 10

where$ = "Gaia"
DIM it$(255)
DIM r$(500)
SCREEN 7
'GOSUB samplea
GOSUB Gaia
'GOSUB Eartharea
'GOSUB test
GOSUB pictures
s: GOSUB move
GOTO s

END


drawterance:
dx = x: dy = y
IF dy = 0 THEN DRAW "bm0,0"
IF dy = 1 THEN DRAW "bm0,20"
IF dy = 2 THEN DRAW "bm0,40"
IF dy = 3 THEN DRAW "bm0,60"
IF dy = 4 THEN DRAW "bm0,80"
IF dy = 5 THEN DRAW "bm0,100"
IF dy = 6 THEN DRAW "bm0,120"
IF dy = 7 THEN DRAW "bm0,140"
IF dy = 8 THEN DRAW "bm0,160"
IF dy = 9 THEN DRAW "bm0,180"

IF dx = 0 THEN DRAW "br1"
IF dx = 1 THEN DRAW "br25"
IF dx = 2 THEN DRAW "br49"
IF dx = 3 THEN DRAW "br73"
IF dx = 4 THEN DRAW "br97"
IF dx = 5 THEN DRAW "br121"
IF dx = 6 THEN DRAW "br145"
IF dx = 7 THEN DRAW "br169"
IF dx = 8 THEN DRAW "br193"
IF dx = 9 THEN DRAW "br217"
IF dx = 10 THEN DRAW "br241"
IF dx = 11 THEN DRAW "br265"
IF dx = 12 THEN DRAW "br289"
GOSUB Terance
RETURN

move:
GOSUB drawterance




snrd = 0
IF px = 12 AND x = 13 THEN xxx = xxx + 13: x = 0: snrd = 1: GOSUB pictures
IF px = 0 AND x = -1 THEN xxx = xxx - 13: x = 12: snrd = 1: GOSUB pictures
IF py = 9 AND y = 10 THEN yyy = yyy + 10: y = 0: snrd = 1: GOSUB pictures
IF py = 0 AND y = -1 THEN yyy = yyy - 10: y = 9: snrd = 1: GOSUB pictures


FOR dyax = 1 TO 2
IF dyax = 1 THEN dy = py: dx = px
IF dyax = 2 THEN dx = x: dy = y
IF dy = 0 THEN DRAW "bm0,0"
IF dy = 1 THEN DRAW "bm0,20"
IF dy = 2 THEN DRAW "bm0,40"
IF dy = 3 THEN DRAW "bm0,60"
IF dy = 4 THEN DRAW "bm0,80"
IF dy = 5 THEN DRAW "bm0,100"
IF dy = 6 THEN DRAW "bm0,120"
IF dy = 7 THEN DRAW "bm0,140"
IF dy = 8 THEN DRAW "bm0,160"
IF dy = 9 THEN DRAW "bm0,180"

IF dx = 0 THEN DRAW "br1"
IF dx = 1 THEN DRAW "br25"
IF dx = 2 THEN DRAW "br49"
IF dx = 3 THEN DRAW "br73"
IF dx = 4 THEN DRAW "br97"
IF dx = 5 THEN DRAW "br121"
IF dx = 6 THEN DRAW "br145"
IF dx = 7 THEN DRAW "br169"
IF dx = 8 THEN DRAW "br193"
IF dx = 9 THEN DRAW "br217"
IF dx = 10 THEN DRAW "br241"
IF dx = 11 THEN DRAW "br265"
IF dx = 12 THEN DRAW "br289"
IF snrd = 1 THEN GOTO snrds
IF dyax = 1 THEN
    GOSUB blackout
    pict$ = MID$(r$(pyy + 1), ((pxx + 1) * 2), 2): GOSUB drawing
END IF
snrds:
IF dyax = 2 THEN GOSUB Terance
NEXT dyax



LOCATE 7, 1: PRINT x; "x"
LOCATE 8, 1: PRINT y; "y"
LOCATE 1, 1: PRINT xx; "xx"
LOCATE 2, 1: PRINT yy; "yy"
LOCATE 3, 1: PRINT pxx; "pxx"
LOCATE 4, 1: PRINT pyy; "pyy"
LOCATE 5, 1: PRINT yyy; "yyy"
LOCATE 6, 1: PRINT xxx; "xxx"

GOSUB interacback


move2:
timeaa = timeaa + 1
LOCATE 1, 30: PRINT timeaa
mv$ = INKEY$
IF mv$ = CHR$(27) THEN END
mv = VAL(mv$)
6 IF mv$ = "" THEN GOTO move2

pxx = xx
pyy = yy
px = x
py = y



IF mv$ = CHR$(0) + "K" THEN xx = xx - 1: x = x - 1
IF mv$ = CHR$(0) + "M" THEN xx = xx + 1: x = x + 1
IF mv$ = CHR$(0) + "H" THEN yy = yy - 1: y = y - 1
IF mv$ = CHR$(0) + "P" THEN yy = yy + 1: y = y + 1
IF mv$ = " " THEN GOSUB menu


GOSUB movecheck
RETURN


Gaiaweapon:
REM       1 2 3 4 5 6 7 8 9 0 1 2 3
r$(1) = "q                          "
r$(2) = "q                          "
r$(3) = "q    g8g3g3g3g3g3g3g3g7"
r$(4) = "q    g1bnd1bnbnbnd2bng2"
r$(5) = "q    g1bnd1bnbnbnd2bng2"
r$(6) = "q    g1bnd6d4d4d4d5bng2"
r$(7) = "q    g1bnbnbnbnbnbnbng2"
r$(8) = "q    g1bnbnbnbnbnbnbng2"
r$(9) = "q    g6g4g4g4bng4g4g4g5"
r$(10) = "q"
r$(11) = ""
r$(12) = ""
r$(13) = ""
r$(14) = ""
r$(15) = ""
r$(16) = ""
r$(17) = ""
r$(18) = ""
r$(19) = ""
r$(20) = ""


RETURN
World:
REM       1 2 3 4 5 6 7 8
Eartharea:
r$(1) = ""
r$(2) = ""
r$(3) = ""
r$(4) = ""
r$(5) = ""
r$(6) = ""
r$(7) = ""
r$(8) = ""
r$(9) = ""
r$(10) = ""
r$(11) = ""
r$(12) = ""
r$(13) = ""
r$(14) = ""
r$(15) = ""
r$(16) = ""
r$(17) = ""
r$(18) = ""
r$(19) = ""
r$(20) = ""
r$(21) = ""
r$(22) = ""
r$(23) = ""
r$(24) = ""
r$(25) = ""
r$(26) = ""
r$(27) = ""
r$(28) = ""
r$(29) = ""
r$(30) = ""
r$(31) = ""
r$(32) = ""
r$(33) = ""
r$(34) = ""
r$(35) = ""
r$(36) = ""
r$(37) = ""
r$(38) = ""
r$(39) = ""
r$(40) = ""
r$(41) = ""
r$(42) = ""
r$(43) = ""
r$(44) = ""
r$(45) = ""
r$(46) = ""
r$(47) = ""
r$(48) = ""
r$(49) = ""
r$(50) = ""
r$(51) = ""
r$(52) = ""
r$(53) = ""
r$(54) = ""
r$(55) = ""
r$(56) = ""
r$(57) = ""
r$(58) = ""
r$(59) = ""
r$(60) = "qgrgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(61) = ""
r$(62) = ""
r$(63) = ""
r$(64) = ""
r$(65) = ""
r$(66) = ""
r$(67) = ""
r$(68) = ""
r$(69) = ""
r$(70) = ""
r$(71) = ""
r$(72) = ""
r$(73) = ""
r$(74) = ""
r$(75) = ""
r$(76) = ""
r$(77) = ""
r$(78) = ""
r$(79) = ""
r$(80) = ""
RETURN
Firearea:
r$(1) = ""
r$(2) = ""
r$(3) = ""
r$(4) = ""
r$(5) = ""
r$(6) = ""
r$(7) = ""
r$(8) = ""
r$(9) = ""
r$(10) = ""
r$(11) = ""
r$(12) = ""
r$(13) = ""
r$(14) = ""
r$(15) = ""
r$(16) = ""
r$(17) = ""
r$(18) = ""
r$(19) = ""
r$(20) = ""
r$(21) = ""
r$(22) = ""
r$(23) = ""
r$(24) = ""
r$(25) = ""
r$(26) = ""
r$(27) = ""
r$(28) = ""
r$(29) = ""
r$(30) = ""
r$(31) = ""
r$(32) = ""
r$(33) = ""
r$(34) = ""
r$(35) = ""
r$(36) = ""
r$(37) = ""
r$(38) = ""
r$(39) = ""
r$(40) = ""
r$(41) = ""
r$(42) = ""
r$(43) = ""
r$(44) = ""
r$(45) = ""
r$(46) = ""
r$(47) = ""
r$(48) = ""
r$(49) = ""
r$(50) = ""
r$(51) = ""
r$(52) = ""
r$(53) = ""
r$(54) = ""
r$(55) = ""
r$(56) = ""
r$(57) = ""
r$(58) = ""
r$(59) = ""
r$(60) = ""
r$(61) = ""
r$(62) = ""
r$(63) = ""
r$(64) = ""
r$(65) = ""
r$(66) = ""
r$(67) = ""
r$(68) = ""
r$(69) = ""
r$(70) = ""
r$(71) = ""
r$(72) = ""
r$(73) = ""
r$(74) = ""
r$(75) = ""
r$(76) = ""
r$(77) = ""
r$(78) = ""
r$(79) = ""
r$(80) = ""
RETURN


RETURN
Gaia:
REM                                |                         |
REM       1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9
r$(1) = "qw8w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w7"
r$(2) = "qw1grgrgrgrgrgrgrgrgrgrttgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrw2"
r$(3) = "qw1grgrgrrfrfrfgrgrgrgrgrgrgrgrgrrfrfrfrfrfrfrfgrgrgrgrgrgrgrrfrfrfrfrfrfgrgrw2"
r$(4) = "qw1grgrgrrfrfrfgrgrgrttgrgrgrttgrrfrfrfrfrfrfrfgrttgrgrttgrgrrfrfrfrfrfrfgrgrw2"
r$(5) = "qw1grgrgrwdgbwdgrgrgrgrgrgrgrgrgrgbwdgbgbgbitgbgrgrgrgrgrttgrgbgbgbrfrfrfgrgrw2"
r$(6) = "qw1grgrgrgbdrgbgrgrgrgrgrgrgrgrgrgbgbgbdrgbgbgbgrgrgrgrgrgrgrgbdrgbrfrfrfgrgrw2"
r$(7) = "qw1grgrgrgrbngrgrgrgrgrgrgrgrgrgrgrgrgrbngrgrgrgrgrgrgrgrgrgrgrbngrgbwdgbgrgrw2"
r$(8) = "qw1grttgrgrbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbngrgbgbgbttgrw2"
r$(9) = "qw1grgrgrgrgrgrgrgrgrbngrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrgrbngrgrgrgrgrgrgrttgrw2"
r$(10) = "qw1grgrgrgrgrgrgrgrgrbngrttttttttttttttgrttttttttttttttgrbngrgrgrgrgrgrgrgrgrw2"
r$(11) = "qw1grgrgrgrgrgrgrgrgrbngrttttttttttgrgrgrgrgrttttttttttgrbngrgrgrgrgrgrgrgrgrw2"
r$(12) = "qw1grgrrfrfrfrfrfgrgrbngrgrgrgrgrrfrfrfrfrfrfrfgrgrgrgrgrbngrgrrfrfrfrfrfgrgrw2"
r$(13) = "qw1grgrrfrfrfrfrfgrgrbngrgrgrgrttrfrfrfrfrfrfrfgrgrgrgrgrbngrgrrfrfrfrfrfgrgrw2"
r$(14) = "qw1grgrgbgbgbgbgbttgrbngrgrgrgrgrgbwdgbgbgbingbgrttgrgrgrbngrgrgbgbgbgbgbttgrw2"
r$(15) = "qw1grgrgbwdgbargbgrgrbngrgrgrgrgrgbgbgbdrgbgbgbgrgrgrgrgrbngrgrgbwpgbwdgbgrgrw2"
r$(16) = "qw1grgrgbgbdrgbgbgrgrbngrgrgrgrgrgrgrgrbngrgrgrgrgrgrgrgrbngrgrgbgbdrgbgbgrgrw2"
r$(17) = "qw1grgrgrgrbngrgrgrgrbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbngrgrgrgrbngrgrgrgrw2"
r$(18) = "qw1grttgrgrbnbnbnbnbnbngrgrgrgrgrgrgrgrbngrgrgrgrgrgrgrgrbnbnbnbnbnbngrgrgrgrw2"
r$(19) = "qw1grgrgrgrgrgrgrgrgrgrgrgrgrgrgrttgrw2bnw1grgrttgrgrgrgrgrgrgrgrgrgrgrgrgrgrw2"
r$(20) = "qw6w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w5bnw6w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w5"
REM        1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9
REM                                 |                         |
RETURN
Gaiainn:
xx = 19
yy = 18
x = 6
y = 8
px = 6
py = 8
pxx = 19
pyy = 18
xxx = 13
yyy = 10
REM       1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9
REM                                |                         |
r$(1) = "qg8g3g3g3g3g3g3g3g3g3g3g3g7g8g3g3g3g3g3g3g3g3g3g3g3g7"
r$(2) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(3) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(4) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(5) = "qg1bnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbng2"
r$(6) = "qg1bnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbng2"
r$(7) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(8) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(9) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(10) = "qg6g4g4g4g4g4g4g4g4g4g4g4g5g6g4g4g4g4g4sdg4g4g4g4g4g2"
r$(11) = "qg8g3g3g3g3g3g3g3g3g3g3g3g7g8g3g3g3g3g3sug3g3g3g3g3g7"
r$(12) = "qg1bnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnd1bnbnbnbng2"
r$(13) = "qg1bnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnd1bnbnbnbng2"
r$(14) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnd1bnbnbnbng2"
r$(15) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnd6d4d4d4d4g2"
r$(16) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(17) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(18) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(19) = "qg1bnbnbnbnbnbnbnbnbnbnbng2g1bnbnbnbnbnbnbnbnbnbnbng2"
r$(20) = "qg6g4g4g4g4g4g4g4g4g4g4g4g5g6g4g4g4g4g4bng4g4g4g4g4g5"
REM        1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6
REM                                 |

RETURN
test:
REM       1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6
r$(1) = "qw8w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w3w7bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(2) = "qbbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbbbbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(3) = "qw1bbg1g2g3bnbnbbwdgbarbbbbbbbbbbbbbbbbbbbbwdgbinttbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(4) = "qw1ttg4g5g6wbbbbnbbgbdrgbbbbbbbbnbnbnbnbnbbbbgbdrgbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(5) = "qw1bbg7g8g9bbbbbnbbttbnbnbnbnbnbnbbttbbbnbnbnbnbnbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(6) = "qw1bbbbttbnbnbnbnbbbbbbbbttbbbbbbbbttbbbbbbbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(7) = "qw1bbttbbbbbbbbttbbbbbbttbbbbbbbbbbttbbbbbbttbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(8) = "qw1bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbttbbbbbbbbbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(9) = "qw1bbbbbbttbbbbbbbbbbbbttbbbbbbbbbbbbbbbbttbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(10) = "qw1bbbbbbbbbbbbttbbbbbbbbbbbbbbttbbbbbbbbbbbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(11) = "qw1ttttbbbbttbbbbbbbbbbttbbbbbbbbbbbbbbttbbbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(12) = "qw1bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbttbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(13) = "qw1bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbttbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(14) = "qw1ttbbbbbbttbbbbbbbbbbbbbbbbbbbbbbbbbbttbbbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(15) = "qw1bbbbbbbbbbttbbbbbbbbbbbbbbttbbbbbbbbbbbbbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(16) = "qw1bbbbttbbbbbbbbbbbbbbbbttbbbbbbbbttbbbbbbbbbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(17) = "qw1bbttbbbbbbbbttbbbbbbttbbbbbbbbbbttbbbbbbttbbbbbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(18) = "qw1bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbttbbbbbbbbbbbbttbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(19) = "qw1bbbbbbbbbbttbbbbbbbbbbbbbbttbbbbbbbbbbbbbbbbttbbw2bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
r$(20) = "qw6w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w4w5bbbnbnbnbbbbrfrfrfbbbbbbbbbbbbbbbbbbbbrfrfrfttbbbbbb"
RETURN
                                                                                                                   
                                                                                                                   













pictures:
IF yy > 10 THEN yyy = 10
IF yy < 10 THEN yyy = 0


CLS
DRAW "bm0,0"

FOR rowdw = 1 TO 10
yyy = yyy + 1
FOR rowac = 1 TO 13
GOSUB where
'IF rowdw = 4 AND rowac = 6 THEN abovhr$ = MID$(r$(yyy), ((xxx + rowac) * 2), 2)



pict$ = MID$(r$(yyy), ((xxx + rowac) * 2), 2): GOSUB drawing

NEXT rowac

NEXT rowdw
yyy = yyy - 10

IF mode$ = "map" THEN GOSUB drawterance
RETURN

drawing:
IF pict$ = "bx" THEN GOSUB box
IF pict$ = "gr" THEN GOSUB grass
IF pict$ = "bb" THEN GOSUB bricks
IF pict$ = "tt" THEN GOSUB tree
IF pict$ = "dr" THEN GOSUB door
IF pict$ = "in" THEN GOSUB innsign
IF pict$ = "gb" THEN GOSUB greybricks
IF pict$ = "rf" THEN GOSUB roof
IF pict$ = "br" THEN GOSUB bricks
IF pict$ = "wd" THEN GOSUB windows
IF pict$ = "bn" THEN GOSUB brownbricks
IF pict$ = "w1" THEN GOSUB wall1
IF pict$ = "w2" THEN GOSUB wall2
IF pict$ = "w3" THEN GOSUB wall3
IF pict$ = "w4" THEN GOSUB wall4
IF pict$ = "w5" THEN GOSUB wall5
IF pict$ = "w6" THEN GOSUB wall6
IF pict$ = "w7" THEN GOSUB wall7
IF pict$ = "w8" THEN GOSUB wall8
IF pict$ = "ar" THEN GOSUB armorsign
IF pict$ = "it" THEN GOSUB itemsign
IF pict$ = "wp" THEN GOSUB weaponsign
IF pict$ = "g1" THEN GOSUB greywall1
IF pict$ = "g2" THEN GOSUB greywall2
IF pict$ = "g3" THEN GOSUB greywall3
IF pict$ = "g4" THEN GOSUB greywall4
IF pict$ = "g5" THEN GOSUB greywall5
IF pict$ = "g6" THEN GOSUB greywall6
IF pict$ = "g7" THEN GOSUB greywall7
IF pict$ = "g8" THEN GOSUB greywall8
IF pict$ = "bu" THEN GOSUB bedup
IF pict$ = "bd" THEN GOSUB beddown
IF pict$ = "d1" THEN GOSUB desk1
IF pict$ = "d2" THEN GOSUB desk2
IF pict$ = "d3" THEN GOSUB desk3
IF pict$ = "d4" THEN GOSUB desk4
IF pict$ = "d5" THEN GOSUB desk5
IF pict$ = "d6" THEN GOSUB desk6
IF pict$ = "d7" THEN GOSUB desk7
IF pict$ = "d8" THEN GOSUB desk8

RETURN
where:

IF rowdw = 1 THEN DRAW "bm0,0"
IF rowdw = 2 THEN DRAW "bm0,20"
IF rowdw = 3 THEN DRAW "bm0,40"
IF rowdw = 4 THEN DRAW "bm0,60"
IF rowdw = 5 THEN DRAW "bm0,80"
IF rowdw = 6 THEN DRAW "bm0,100"
IF rowdw = 7 THEN DRAW "bm0,120"
IF rowdw = 8 THEN DRAW "bm0,140"
IF rowdw = 9 THEN DRAW "bm0,160"
IF rowdw = 10 THEN DRAW "bm0,180"

IF rowac = 1 THEN DRAW "br1"
IF rowac = 2 THEN DRAW "br25"
IF rowac = 3 THEN DRAW "br49"
IF rowac = 4 THEN DRAW "br73"
IF rowac = 5 THEN DRAW "br97"
IF rowac = 6 THEN DRAW "br121"
IF rowac = 7 THEN DRAW "br145"
IF rowac = 8 THEN DRAW "br169"
IF rowac = 9 THEN DRAW "br193"
IF rowac = 10 THEN DRAW "br217"
IF rowac = 11 THEN DRAW "br241"
IF rowac = 12 THEN DRAW "br265"
IF rowac = 13 THEN DRAW "br289"



RETURN

movecheck:

IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "tt" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "gb" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "in" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "rf" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w1" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w2" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w3" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w4" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w5" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w6" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w7" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "w8" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "ar" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "wd" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "it" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "wp" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g1" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g2" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g3" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g4" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g5" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g6" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g7" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "g8" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "bu" THEN yy = pyy: xx = pxx: x = px: y = py: GOSUB bedredraw: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "bd" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s1" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s2" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s3" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s4" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s5" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s6" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s7" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "s8" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d1" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d2" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d3" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d4" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d5" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d6" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d7" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2
IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "d8" THEN yy = pyy: xx = pxx: x = px: y = py: GOTO move2


RETURN
bedredraw:
RETURN
interacback:
IF where$ = "Gaia" THEN GOSUB Gaiainter
IF where$ = "Gaiainn" THEN GOSUB Gaiainnter
IF where$ = "Eartharea" THEN GOSUB Eartharea

IF where$ = "Gaiaweapon" THEN GOSUB Gaiaweaponinter

RETURN
menungraph:
'GET (mnglf, mngtp)-(mngrt, mngbt), gbm
'LINE (mnglf, mngtp)-(mngrt, mngbt), 0, BF
RETURN
Gaiaweaponinter:
IF xx = 6 AND yy = 6 AND mv$ = CHR$(13) THEN
    mngtp = 49
    mnglf = 99
    mngrt = 219
    mngbt = 99
    GOSUB menungraph
END IF



IF xx = 6 AND yy = 8 THEN
    where$ = "Gaia"
    xx = 33
    yy = 16
    x = 7
    y = 6
    px = 7
    py = 6
    pxx = 33
    pyy = 16
    xxx = 26
    yyy = 10
    GOSUB Gaia
    GOSUB pictures
END IF




RETURN
Gaiainter:
IF xx = 19 AND yy = 20 THEN
    where$ = "Eartharea"
        yy = 65
        xx = 6
        x = 6
        y = 5
        px = 6
        py = 5
        pxx = 6
        pyy = 65
        xxx = 13
        yyy = 60
        GOSUB Eartharea
        GOSUB pictures
END IF

IF MID$(r$(yy + 1), ((xx + 1) * 2), 2) = "dr" THEN
    IF xx = 19 AND yy = 14 THEN
        where$ = "Gaiainn"
        xx = 19
        yy = 18
        x = 6
        y = 8
        px = 6
        py = 8
        pxx = 19
        pyy = 18
        xxx = 13
        yyy = 10
        GOSUB Gaiainn
        GOSUB pictures
    END IF
    IF xx = 33 AND yy = 15 THEN
        where$ = "Gaiaweapon"
        xx = 6
        yy = 7
        x = 6
        y = 7
        px = 6
        py = 7
        pxx = 6
        pyy = 7
        xxx = 0
        yyy = 0
       
        GOSUB Gaiaweapon
        GOSUB pictures
   
    END IF
END IF
RETURN
Gaiainnter:
IF xx = 19 AND yy = 19 THEN
    where$ = "Gaia"
    cc = 15
    xx = 19
    yy = 15
    x = 6
    y = 5
    px = 6
    py = 5
    pxx = 19
    pyy = 15
    xxx = 13
    yyy = 10
    GOSUB Gaia
    GOSUB pictures
END IF
RETURN
menu:
COLOR cc, cb
menuwhere$ = "menu"
menuhms = 2
menulntp = 3
menulnbt = 15
menuleft = 31
GOSUB menuopen
GOSUB menuline
GOSUB menumove
RETURN

menuopen:
menux = 159
menuy = 99
menux2 = 160
menuy2 = 100


FOR mnop = 0 TO 160




LINE (menux, menuy)-(menux2, menuy2), cc, B
IF mnop <> 160 THEN LINE (menux, menuy)-(menux2, menuy2), cb, B
menux = menux - 1
menuy = menuy - 1
menux2 = menux2 + 1
menuy2 = menuy2 + 1

IF menux < 0 THEN menux = 0
IF menuy < 0 THEN menuy = 0
IF menux2 > 319 THEN menux2 = 319
IF menuy2 > 199 THEN menuy2 = 199

NEXT mnop






RETURN

menuline:
COLOR cc
LOCATE 3, 33: PRINT "Item"
LOCATE 5, 33: PRINT "Magic"
LOCATE 7, 33: PRINT "Equip"
LOCATE 9, 33: PRINT "Status"
LOCATE 11, 33: PRINT "Order"
LOCATE 13, 33: PRINT "Custom"
IF cansave = 0 THEN COLOR 8
IF cansave = 1 THEN COLOR cc
LOCATE 15, 33: PRINT "Save"
COLOR cc
menucury = 3
LOCATE menucury, 31: PRINT CHR$(16)
LINE (235, 0)-(235, 199)
LOCATE 21, 31: PRINT "GP"; gp
LOCATE 23, 31: PRINT where$

'LOCATE 1, 30: PRINT CHR$(203)
'LOCATE 23, 30: PRINT CHR$(202)
'FOR sidemenu = 2 TO 22
'LOCATE sidemenu, 30: PRINT CHR$(186)
'NEXT sidemenu
RETURN

'
menumove:
menucur$ = INKEY$
IF menucur$ = CHR$(0) + "H" THEN menucury = menucury - menuhms
IF menucur$ = CHR$(0) + "P" THEN menucury = menucury + menuhms
IF menucur$ = CHR$(0) + "K" THEN GOSUB menucheck
IF menucur$ = CHR$(0) + "M" THEN GOSUB menucheck
IF menucury = menulntp - menuhms THEN menucury = menulnbt: LOCATE menulntp, menuleft: PRINT " "
IF menucury = menulnbt + menuhms THEN menucury = menulntp: LOCATE menulnbt, menuleft: PRINT " "
IF menucur$ = CHR$(13) THEN GOSUB menucheck
IF menucur$ = "" THEN GOTO menumove
IF menucur$ = " " THEN GOTO exitmenu
IF menucury <> menulnbt THEN LOCATE menucury + menuhms, menuleft: PRINT " "
LOCATE menucury, menuleft: PRINT CHR$(16)
IF menucury <> menulntp THEN LOCATE menucury - menuhms, menuleft: PRINT " "
GOTO menumove
RETURN


exitmenu:
COLOR 15, 0
GOSUB pictures
menuwhere$ = "menu"

RETURN

menucheck:
IF menuwhere$ = "menu" THEN GOSUB menuchmenu
IF menuwhere$ = "config" THEN GOSUB menuchcnf
RETURN

menuchcnf:

'IF menucur$ = CHR$(0) + "H" THEN menucury = menucury - menuhms
'IF menucur$ = CHR$(0) + "P" THEN menucury = menucury + menuhms
'IF menucur$ = CHR$(0) + "K" THEN GOSUB menucheck
'IF menucur$ = CHR$(0) + "M" THEN GOSUB menucheck

IF menucury = 2 AND menucur$ = CHR$(0) + "K" THEN cb = cb - 1:
IF menucury = 2 AND menucur$ = CHR$(0) + "M" THEN cb = cb + 1:
IF menucury = 3 AND menucur$ = CHR$(0) + "K" THEN cc = cc - 1:
IF menucury = 3 AND menucur$ = CHR$(0) + "M" THEN cc = cc + 1:







IF cb = 8 THEN GOTO menuchcnf
IF cb < 0 THEN cb = 15
IF cb > 15 THEN cb = 0
IF cc < 0 THEN cc = 15
IF cc > 15 THEN cc = 0


COLOR cc, cb
LOCATE 2, menuleft + menuhms: PRINT "Color - "; : COLOR cc, cb: PRINT cb
LOCATE 3, menuleft + menuhms: PRINT "Text  - "; : COLOR cc, cb: PRINT cc



RETURN

menuchmenu:
IF menucury = 3 THEN GOSUB mnitems
IF menucury = 5 THEN GOSUB mnmagic
IF menucury = 7 THEN GOSUB mnequip
IF menucury = 9 THEN GOSUB mnstatus
IF menucury = 11 THEN PRINT "temporarly out of order"'GOSUB mnorder
IF menucury = 13 THEN GOSUB mnconfig
IF menucury = 15 THEN GOSUB mnsave
RETURN

mnitems:
GOSUB menuopen

RETURN
mnmagic:
RETURN
mnequip:
RETURN
mnstatus:
RETURN
mnorder:
RETURN
mnsave:
RETURN





mnconfig:
menuwhere$ = "config"
menuhms = 1
menulntp = 2
menulnbt = 3
menuleft = 3
GOSUB menuopen
GOSUB configline
GOSUB menumove
RETURN

configline:
'COLOR 15
LOCATE 2, menuleft + menuhms: PRINT "Color - "
LOCATE 3, menuleft + menuhms: PRINT "Text  - "
menucury = 2
LOCATE menucury, menuleft: PRINT CHR$(16)
'LOCATE 1, 30: PRINT CHR$(203)
'LOCATE 23, 30: PRINT CHR$(202)
'FOR sidemenu = 2 TO 22
'LOCATE sidemenu, 30: PRINT CHR$(186)
'NEXT sidemenu

RETURN
grass:
DRAW "c3 d19 r23 u19 l23 bm+1,+1 p3,3 bm +3,+4 c10 u1 h1 bm +5,+3 u1 bm+10,12 u1 e1 bm-10,+2 m+0,0"
RETURN
box: DRAW "c15 d19 r23  u19 l23 "
RETURN
tree:
DRAW "c3 d19 r23  u19 l23 bm+1,+1 p3,3"
DRAW "bm+ 3,6 c10 d2 bm+ 1,2 u6 r1 d6 r1 d1 u2 c14 u1 c10 u6 r1 d10 r1 u11 r1 d11 r1 u11 r1 d12 r1 u11 c14 u1 f1 r1 f1 f1 r1 f1 d2 g1 d1 l1 d3 g1 c10 l2 u3 c14 u1 c10 u6 r1 d9 r1 u8 f1 d4 e1 u3 bm-3,9 c6 d3 l6 u4 r2 d1 r3 bd1 p6,6"
DRAW ""
RETURN
Terance:
DRAW "bm+8,2 c4 r5 f2 d2 g1 h3 l1 g2 h1 u1 e2 bd1 d1ldurur4dllr3dldr": REM hair
DRAW "bd1bl6 c14 f3 r1 e2 h3 l1 g2 br1 p14,14": REM face
DRAW "br2 u1 c0 bllrrl d1 br3 m+0,0bg1 c14 u1  "'eyes
DRAW "c1bd2br2r2bl7l2dlr4br3r4l3dl5bl1c14ldrbr7urdc0ld1c14rdl2c1u2l5dc12r5c1bdl5lc14uldbr2bd1r5"
DRAW "d1c0l5dr5drl7dr7"
RETURN
bricks:
DRAW "bd1 c12 r3 f1 d2 l1 c4 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c12 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c12 r5 d1 c4 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c12 r3 f1 d2 l1 c4 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c12 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c12 r5 d1 c4 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
RETURN
blackout:
DRAW "c0 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 u19"
RETURN
greybricks:

DRAW "br21bd1c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bl10bd5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"

RETURN
innsign:
DRAW "c15bf1r21d18l21u18 bf3 r2l1d12l1r2 br2 u12r1d1r1d10r1d1r1u12 br2 d12u12r1d1r1d10r1d1r1u12"
RETURN
door:
DRAW "br21bd1c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bl10bd5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"

DRAW "bl19bu2bd3br4c6u10r1u2r1u1r2u1r6 d1r2d1r1d2r1d10l13bu1p6,6 d1r1 c0u13br3bu1 d14 br3 u14 br3bd1 d13 br2bu5 u1 c4br1d6 u10h1u1h2"
RETURN
roof:
DRAW "c15 d19 r23  u19 l23 "
DRAW "d5r23d5l23d5r23 d4 l5u19l5d19l5u19l5d19"
RETURN

windows:
DRAW "br21bd1c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bl10bd5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"

DRAW "bu2bl19br4c15u7r1u2r1u1r2u1r6 d1r2d1r1d2r1d7l13bu1p15,15"
DRAW "bl1bd1c0u7r1u2r1u1r2u1r6 d1r2d1r1d2r1d7l13bu1 "
DRAW "bg1br7c0u10d6r6l12"
RETURN
brownbricks:
DRAW "br21bd1c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 bm-13,0 c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0"
DRAW "bl10bd5 c4 r3 f1 d2 l1 c6 l3 u2 r3 d1 l2 bm+3,-2 c12 m+0,0 bm+2,0 c4 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 br2 c4 r5 d1 c6 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 bm-13,0 c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0"
DRAW "bm-10,+5 c4 r3 f1 d2 l1 c6 l3 u2 r3 d1 l2 bm+3,-2 c12 m+0,0 bm+2,0 c4 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 br2 c4 r5 d1 c6 d2 l5 u2 r4 d1 l3"
RETURN
wall1:
DRAW "br1c12d19br1c4r7u19l7d18br1p4,4bd1br8c12u8c15m+0,0c12br1r4bd1c4l4d7r4u6"
DRAW "bl1p4,4bu4bl4c12u8c15m+0,0br1c12r4bd1c4l4d7r4u6bl1p4,4bd1br3c12u4br1c4r4d4l4u3br1p4,4bd5c12r3l5c15m+0,0c12bd1d6br1c4r4u6l4d5br1p4,4bd3c12r3l5c15m+0,0bd1c12d4br1c4r4u4l4d3br1p4,4"
RETURN
wall2:
DRAW "br23bl1c12d19bl1c4l7u19r7d18bl1p4,4bd1bl8c12u8c15m+0,0c12bl1l4bd1c4r4d7l4"
DRAW "u6br1p4,4bu4br4c12u8c15m+0,0bl1c12l4bd1c4r4d7l4u6br1p4,4bd1bl3c12u4bl1c4l4d4r4u3bl1p4,4bd5c12l3r5c15m+0,0c12bd1d6bl1c4l4u6r4d5bl1p4,4bd3c12l3r5c15m+0,0bd1c12d4bl1c4l4u4r4d3bl1p4,4"
RETURN
wall3:
DRAW "bd1c12r23c4bd1d5l23u5r22bd1p4,4bd6c15m+0,0bd1c12d3c4bl1l9u4c12r9bd1c4d3u3l8bd1p4,4"
DRAW "bl3bu1l10d3r10u2bl1p4,4bu2c12l9r10c15m+0,0bd1c12d3"
DRAW "bd2l3r9c15m+0,0c12bd1d3bl1c4l8u3r8d2bl1p4,4"
DRAW "bu2bl10l4d3r4u2bl1p4,4bu2c12l3r5c15m+0,0bd1c12d3br13c4u3r5d3l4bu1p4,4bu3c12l1r5"
RETURN
wall4:
DRAW "bd19bu1c12r23c4bu1u5l23d5r22bu1p4,4bu6c15m+0,0bu1c12u3c4bl1l9d4c12r9bu1c4u3d3l8bu1p4,4"
DRAW "bl3bd1l10u3r10d2bl1p4,4bd2c12l9r10c15m+0,0bu1c12u3"
DRAW "bu2l3r9c15m+0,0c12bu1u3bl1c4l8d3r8u2bl1p4,4"
DRAW "bd2bl10l4u3r4d2bl1p4,4bd2c12l3r5c15m+0,0bu1c12u3br13c4d3r5u3l4bd1p4,4bd3c12l1r5"

RETURN
wall5:
DRAW "bd19br23bu1bl1c4l22u6r14u12r8d17 bl1p4,4 bd1br1c12l22r22u18 bl10 d8c15d1u1c12l1h3l1c4bu1u4r4d7h4br1p4,4bl2 bl1bu3 c12 d3 c15 u1 c12 l1 u1 l2 u1 l1 br1 c4r2d1 bd3 c12l4 r3bu1c4l3u1r1l1u1bd5d3r10bd1c12r1l11r10bu1c4h2l2u1l5bd1p4,4"
RETURN
wall6:
DRAW "bd19bu1br1c4r22u6l14u12l8d17 br1p4,4 bd1bl1c12r22l22u18 br10 d8c15d1u1c12r1e3r1c4bu1u4l4d7e4bl1p4,4br2 br1bu3 c12 d3 c15 u1 c12 r1 u1 r2 u1 r1 bl1 c4l2d1 bd3 c12r4 l3bu1c4r3u1l1r1u1bd5d3l10bd1c12l1r11l10bu1c4e2r2u1r5bd1p4,4"
RETURN
wall7:
DRAW "br23bd1bl1c4l22d6r14d12r8u17 bl1p4,4 bu1br1c12l22r22d18 bl10 u8c15u1d1c12l1g3l1c4bd1d4r4u7g4br1p4,4bl2 bl1bd3 c12 u3 c15 d1 c12 l1 d1 l2 d1 l1 br1 c4r2u1 bu3 c12l4 r3bd1c4l3d1r1l1d1bu5u3r10bu1c12r1l11r10bd1c4g2l2d1l5bu1p4,4"
RETURN
wall8:
DRAW "bd1br1c4r22d6l14d12l8u17 br1p4,4 bu1bl1c12r22l22d18 br10 u8c15u1d1c12r1f3r1c4bd1d4l4u7f4bl1p4,4br2 br1bd3 c12 u3 c15 d1 c12 r1 d1 r2 d1 r1 bl1 c4l2u1 bu3 c12r4 l3bd1c4r3d1l1r1d1bu5u3l10bu1c12l1r11l10bd1c4f2r2d1r5bu1p4,4"
RETURN
armorsign:
DRAW "c7r23d19l23u19br5bd4c15r13d10l13u9br1p15,15 c7br13d10l12 bu5u1r1u1r2u1d1r1d1l2r1d3u3r4d4u1l1u2l1u2c1r1u1l1r2u1l1r2u1"
RETURN
itemsign:
DRAW "c9r23d19l23u19br5bd4c15r13d10l13u9br1p15,15 c9br13d10l12 "
DRAW "bu2br3c9r4u5l4r1u2c1l1r3l1u1c6l1c9bd2br1d1l2d4l2u3r2br1p9,9bd3c1r2u1bu2bl3c3m+0,0"
RETURN
weaponsign:
DRAW "c8r23d19l23u19br5bd4c15r13d10l13u9br1p15,15 c8br13d10l12 "
DRAW "bu2br1c1u1d1r1u1c6u1d1r1u1c12m+0,0bu1c8h2f5h2u1l1r1d1u2r1duurduurduurduurdc7g5"
RETURN
greywall1:
DRAW "br1c7d19br1c8r7u19l7d18br1p8,8bd1br8c7u8c15m+0,0c7br1r4bd1c8l4d7r4u6bl1p8,8bu4bl4c7u8c15m+0,0br1c7r4bd1c8l4d7r4u6bl1p8,8bd1br3c7u4br1c8r4d4l4u3br1p8,8bd5c7r3l5c15m+0,0c7bd1d6br1c8r4u6l4d5br1p8,8bd3c7r3l5c15m+0,0bd1c7d4br1c8r4u4l4d3br1p8,8"
RETURN
greywall2:
DRAW "br23bl1c7d19bl1c8l7u19r7d18bl1p8,8bd1bl8c7u8c15m+0,0c7bl1l4bd1c8r4d7l4u6br1p8,8bu4br4c7u8c15m+0,0bl1c7l4bd1c8r4d7l4u6br1p8,8bd1bl3c7u4bl1c8l4d4r4u3bl1p8,8bd5c7l3r5c15m+0,0c7bd1d6bl1c8l4u6r4d5bl1p8,8bd3c7l3r5c15m+0,0bd1c7d4bl1c8l4u4r4d3bl1p8,8"
RETURN
greywall3:
DRAW "bd1c7r23c8bd1d5l23u5r22bd1p8,8bd6c15m+0,0bd1c7d3c8bl1l9u4c7r9bd1c8d3u3l8bd1p8,8"
DRAW "bl3bu1l10d3r10u2bl1p8,8bu2c7l9r10c15m+0,0bd1c7d3"
DRAW "bd2l3r9c15m+0,0c7bd1d3bl1c8l8u3r8d2bl1p8,8"
DRAW "bu2bl10l4d3r4u2bl1p8,8bu2c7l3r5c15m+0,0bd1c7d3br13c8u3r5d3l4bu1p8,8bu3c7l1r5"
RETURN
greywall4:
DRAW "bd19bu1c7r23c8bu1u5l23d5r22bu1p8,8bu6c15m+0,0bu1c7u3c8bl1l9d4c7r9bu1c8u3d3l8bu1p8,8"
DRAW "bl3bd1l10u3r10d2bl1p8,8bd2c7l9r10c15m+0,0bu1c7u3"
DRAW "bu2l3r9c15m+0,0c7bu1u3bl1c8l8d3r8u2bl1p8,8"
DRAW "bd2bl10l4u3r4d2bl1p8,8bd2c7l3r5c15m+0,0bu1c7u3br13c8d3r5u3l4bd1p8,8bd3c7l1r5"

RETURN
greywall5:
DRAW "bd19br23bu1bl1c8l22u6r14u12r8d17 bl1p8,8 bd1br1c7l22r22u18 bl10 d8c15d1u1c7l1h3l1c8bu1u4r4d7h4br1p8,8bl2 bl1bu3 c7 d3 c15 u1 c7 l1 u1 l2 u1 l1 br1 c8r2d1 bd3 c7l4 r3bu1c8l3u1r1l1u1bd5d3r10bd1c7r1l11r10bu1c8h2l2u1l5bd1p8,8"
RETURN
greywall6:
DRAW "bd19bu1br1c8r22u6l14u12l8d17 br1p8,8 bd1bl1c7r22l22u18 br10 d8c15d1u1c7r1e3r1c8bu1u4l4d7e4bl1p8,8br2 br1bu3 c7 d3 c15 u1 c7 r1 u1 r2 u1 r1 bl1 c8l2d1 bd3 c7r4 l3bu1c8r3u1l1r1u1bd5d3l10bd1c7l1r11l10bu1c8e2r2u1r5bd1p8,8"
RETURN
greywall7:
DRAW "br23bd1bl1c8l22d6r14d12r8u17 bl1p8,8 bu1br1c7l22r22d18 bl10 u8c15u1d1c7l1g3l1c8bd1d4r4u7g4br1p8,8bl2 bl1bd3 c7 u3 c15 d1 c7 l1 d1 l2 d1 l1 br1 c8r2u1 bu3 c7l4 r3bd1c8l3d1r1l1d1bu5u3r10bu1c7r1l11r10bd1c8g2l2d1l5bu1p8,8"
RETURN
greywall8:
DRAW "bd1br1c8r22d6l14d12l8u17 br1p8,8 bu1bl1c7r22l22d18 br10 u8c15u1d1c7r1f3r1c8bd1d4l4u7f4bl1p8,8br2 br1bd3 c7 u3 c15 d1 c7 r1 d1 r2 d1 r1 bl1 c8l2u1 bu3 c7r4 l3bd1c8r3d1l1r1d1bu5u3l10bu1c7l1r11l10bd1c8f2r2d1r5bu1p8,8"
RETURN
shore1:
RETURN
shore2:
RETURN
shore3:
DRAW "c1b23d5l2u1l2u1l4d1l2d1l1u1l3d1l3u1l6u3br1p1,1bd4c9l1r5d1r5u1r1d1r3u1r2u1r2d1r2d1r3d3l2d1l1u1l2u1l2u"
RETURN
shore4:
RETURN
shore5:
RETURN
shore6:
RETURN
shore7:
RETURN
shore8:
RETURN
Sinaria:
DRAW "br11c6r2drl4dlr2u1r2drrdddldlblblblrluluuubr3d1blc0r2brc14dl4udrdrrluuud5l1d2r2ulruc4br1d3lbu1c12ghbd1c4lu3lc14d5"
DRAW "br2 bu1r2br2bd1u5bd5l2c4l2blc14d2rud5lr4l2u5c12rc14rd1ld4bl"
RETURN
bedup:

RETURN
beddown:
RETURN
desk1:
DRAW "c4d19br1c0u19br1c6r18d19l18u18brp6,6bubr18c0d19br1c4u19bl5bd3"
RETURN

desk2:
DRAW "br1"
GOSUB desk1
RETURN
desk3:
GOSUB desk4
RETURN
desk4:
DRAW "c4r23bd1c0l23bd1c6d16r23u16l22bd1p6,6bl1bd15c0r23bd1c4l23"
RETURN
desk5:
DRAW "br23c4d12gdgdglglgl16bu19rbd2blc6d15r15urrurruuruuru11l18ddllbd1p6,6"
RETURN
desk6:
DRAW "c4d12fdfdfrfrfr16bu19lbd2brc6d15l15ullulluuluulu11r18ddrrbd1p6,6"
RETURN
desk7:
RETURN
desk8:
RETURN


'----------------------------FIGHT-*


fight:

battledelay = INT(delay / 10) + 1
battlespeed = 10

GOSUB fightbegin
fightmainloop:
FOR fightdelay = 1 TO delay - (battledelay * battlespeed): NEXT
'test \/
LOCATE 2, 10: PRINT delay - (battledelay * battlespeed)
'test /\
GOSUB fightspeed
GOSUB fightmove
GOTO fightmainloop
RETURN


fightmove:
IF heroturn(1) = 0 THEN RETURN
fmove$ = INKEY$
'IF fmove$ = CHR$(0) + "K" THEN xx = xx - 1: x = x - 1
'IF fmove$ = CHR$(0) + "M" THEN xx = xx + 1: x = x + 1


IF fmove$ = CHR$(0) + "H" THEN
    LOCATE fightcury, 2: PRINT " ": fightcury = fightcury - 1
    IF fightcury < 2 THEN fightcury = 5
    IF fightcury > 5 THEN fightcury = 2
    LOCATE fightcury, 2: PRINT CHR$(16)
END IF
IF fmove$ = CHR$(0) + "P" THEN
    LOCATE fightcury, 2: PRINT " ": fightcury = fightcury + 1
    IF fightcury < 2 THEN fightcury = 5
    IF fightcury > 5 THEN fightcury = 2
    LOCATE fightcury, 2: PRINT CHR$(16)
END IF


IF fmove$ = CHR$(13) THEN
        IF heroturn(1) = 1 THEN LINE (200, 10)-(200 + (100 / 3), 10), 0
        IF heroturn(1) = 2 THEN LINE (200, 15)-(200 + (100 / 3), 15), 0
        IF heroturn(1) = 3 THEN LINE (200, 20)-(200 + (100 / 3), 20), 0
        IF heroturn(1) = 4 THEN LINE (200, 25)-(200 + (100 / 3), 25), 0
        gauge(heroturn(1)) = 0
        heroturn(1) = heroturn(2)
        heroturn(2) = heroturn(3)
        heroturn(3) = heroturn(4)
        heroturn(4) = 0
        GOSUB fightputmenu

END IF

RETURN
fightspeed:

Fightherospeeddelay = Fightherospeeddelay + 1
FOR plusgauge = 1 TO howmanyheros

IF Fightherospeeddelay = Fightherospeeddelaymax THEN
        gauge(plusgauge) = gauge(plusgauge) + herospeed(plusgauge)
        IF plusgauge = howmanyheros THEN Fightherospeeddelay = 0
END IF


IF gauge(plusgauge) > 100 THEN gauge(plusgauge) = 100
IF gauge(plusgauge) < 0 THEN gauge(plusgauge) = -999
IF gauge(1) <> -999 THEN LINE (200, 10)-((200 + (gauge(1) / 3)), 10), 15
IF gauge(2) <> -999 THEN LINE (200, 15)-((200 + (gauge(2) / 3)), 15), 15
IF gauge(3) <> -999 THEN LINE (200, 20)-((200 + (gauge(3) / 3)), 20), 15
IF gauge(4) <> -999 THEN LINE (200, 25)-((200 + (gauge(4) / 3)), 25), 15


IF gauge(plusgauge) = 100 THEN
        IF heroturn(1) = 0 THEN heroturn(1) = plusgauge: gauge(plusgauge) = -999: GOSUB fightputmenu: GOTO fightspeedskip
        IF heroturn(2) = 0 THEN heroturn(2) = plusgauge: gauge(plusgauge) = -999: GOTO fightspeedskip
        IF heroturn(3) = 0 THEN heroturn(3) = plusgauge: gauge(plusgauge) = -999: GOTO fightspeedskip
        IF heroturn(4) = 0 THEN heroturn(4) = plusgauge: gauge(plusgauge) = -999: GOTO fightspeedskip
END IF

fightspeedskip:
NEXT plusgauge

'LOCATE 2, 20: PRINT "turn1-"; heroturn(1)
'LOCATE 3, 20: PRINT "turn2-"; heroturn(2)
'LOCATE 4, 20: PRINT "turn3-"; heroturn(3)
'LOCATE 5, 20: PRINT "turn4-"; heroturn(4)



'LOCATE 2, 35: PRINT gauge(1)
'LOCATE 3, 35: PRINT gauge(2)
'LOCATE 4, 35: PRINT gauge(3)
'LOCATE 5, 35: PRINT gauge(4)


RETURN
fightputmenu:
'IF heroturn(1) = 0 THEN
        LOCATE 2, 2: PRINT "         "
        LOCATE 3, 2: PRINT "         "
        LOCATE 4, 2: PRINT "         "
        LOCATE 5, 2: PRINT "         "
'END IF

IF heroturn(1) <> 0 THEN
    fightcury = 2
    LOCATE fightcury, 2: PRINT CHR$(16)
END IF
LOCATE 2, 3: PRINT fightherofight$(heroturn(1))
LOCATE 3, 3: PRINT fightheromagic$(heroturn(1))
LOCATE 4, 3: PRINT fightherospecial$(heroturn(1))
LOCATE 5, 3: PRINT fightheroitem$(heroturn(1))
'LOCATE 2, 15: PRINT heroname(1)
'LOCATE 3, 15: PRINT heroname(2)
'LOCATE 4, 15: PRINT heroname(3)
'LOCATE 5, 15: PRINT heroname(4)



RETURN

fightbegin:
mode$ = "fight"
fightwhere$ = "grass"
CLS
SCREEN 7
GOSUB fightbackground
'DRAW "bm1,0r638d198blbuu198"
'DRAW "bl638bd1c8d198br1u197"
'DRAW "d197r638"
LINE (0, 0)-(313, 40), 0, BF
LINE (0, 0)-(313, 199), 15, B



'LOCATE 2, 3: PRINT "fight"
'LOCATE 3, 3: PRINT "Magic"
'LOCATE 4, 3: PRINT ""
'LOCATE 5, 3: PRINT "Item"
LINE (0, 0)-(80, 40), 15, B
LINE (0, 0)-(313, 40), 15, B
'DO WHILE INKEY$ = "": LOOP
'END
RETURN
fightbackground:
IF fightwhere$ = "grass" THEN GOSUB fightgrass: GOSUB pictures: RETURN
'V----probably needs to be moved, but no place to put
mode$ = "map"
'^----probably needs to be moved, but no place to put


RETURN
fightgrass:
REM       1 2 3 4 5 6 7 8 9 0 1 2 3
r$(1) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(2) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(3) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(4) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(5) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(6) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(7) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(8) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(9) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(10) = "qgrgrgrgrgrgrgrgrgrgrgrgrgr"
r$(11) = ""
r$(12) = ""
r$(13) = ""
r$(14) = ""
r$(15) = ""
r$(16) = ""
r$(17) = ""
r$(18) = ""
r$(19) = ""
r$(20) = ""
RETURN
credits:
SCREEN 8

SUB chr
ts: n$ = INKEY$
IF n$ = "" THEN GOTO ts
PRINT n$
GOTO ts
END
END SUB

SUB colors
FOR n = 1 TO 15
COLOR n
PRINT n
NEXT n
END
END SUB

SUB lvup

st: hp = 10
lvl = 0
INPUT ; lv
FOR gg = 1 TO lv
lvl = lvl + 1
IF lvl <> 1 THEN hp = (2 * lvl) + hp

NEXT gg
IF lv = 999 THEN END
PRINT hp
GOTO st


END

END SUB

