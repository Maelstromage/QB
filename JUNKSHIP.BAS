li = 5
DIM astdw(100), astac(100), ast(100)
hma = 20
RANDOMIZE TIMER
startgame:
fu = 50000
sc = 0
CLS

ac = 39:
LOCATE 23, ac: PRINT " Ê "

start: GOSUB moveship
makestuffslow = makestuffslow + 1
IF makestuffslow <> 10 THEN GOTO start
makestuffslow = 0
GOSUB ast

GOSUB powerups

GOTO start
moveship:
COLOR 10
fu = fu - 1
IF fu = 0 THEN GOTO win
LOCATE 2, 60: PRINT "FUEL "; fu
co = 15
COLOR co: LOCATE 1, 1: PRINT "SCORE: "; sc; "                                                                "
LOCATE 3, 1: PRINT "ÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ"
COLOR 9

LOCATE 1, 60: PRINT "";
IF li = 1 THEN PRINT " Ê "
IF li = 2 THEN PRINT " Ê  Ê "
IF li = 3 THEN PRINT " Ê  Ê  Ê "
IF li = 4 THEN PRINT " Ê  Ê  Ê  Ê "
IF li = 5 THEN PRINT " Ê  Ê  Ê  Ê  Ê "
ms$ = INKEY$
IF ms$ = "4" THEN ac = ac - 1
IF ms$ = "6" THEN ac = ac + 1
IF ms$ = "5" AND fires <> 1 THEN fires = 1: fi = 1
IF ms$ = CHR$(27) THEN END
IF ac <= 1 THEN ac = 1
IF ac >= 78 THEN ac = 78
IF catch = 1 AND ac >= 76 THEN ac = 76
IF catch = 1 AND ac <= 3 THEN ac = 3
co = 9

COLOR co: LOCATE 23, ac: PRINT " Ê "
IF catch >= 1 THEN LOCATE 22, ac: PRINT " º "
IF catch >= 1 AND cx = 1 THEN LOCATE 22, ac - 1: PRINT " Xº "
IF catch >= 1 AND cx = 2 THEN LOCATE 22, ac - 1: PRINT "  ºX "
IF catch >= 1 AND cx = 3 THEN LOCATE 22, ac - 1: PRINT " XºX "
IF catch >= 1 THEN LOCATE 23, ac - 2: PRINT " ÈÍÊÍ¼ "
IF fires = 1 THEN GOSUB fire
RETURN
fire:
IF fcx = 0 THEN co = 4

IF blast > 2 AND fcx = 0 THEN blast = 2
IF blast = 2 AND fcx = 0 THEN co = 9
IF fi = 1 THEN up = 22: fi = 0: fac = ac
up = up - 1
COLOR co
IF blast = 0 AND cx = 0 AND fcx = 0 THEN LOCATE up, fac + 1: PRINT "^"
IF blast = 1 AND cx = 0 AND fcx = 0 THEN LOCATE up, fac: PRINT "^^^"
IF blast = 2 AND cx = 0 AND fcx = 0 THEN LOCATE up, fac - 1: PRINT "^^^^^"
IF cx = 1 THEN cx = 0: fcx = 1
IF cx = 2 THEN cx = 0: fcx = 1
IF cx = 3 THEN cxlast = 1: cx = 0: fcx = 1
cx = cxlast
COLOR co
IF fcx = 1 THEN LOCATE up, fac + 1: PRINT "X"
LOCATE up + 1, fac + 1: PRINT " "
IF blast = 1 AND fcx = 0 THEN LOCATE up + 1, fac: PRINT "   "
IF blast = 2 AND fcx = 0 THEN LOCATE up + 1, fac - 1: PRINT "     "
IF up = 3 THEN fires = 0: fcx = 0: cxlast = 0
FOR aster = 1 TO hma
  
IF up = astdw(aster) AND astac(aster) = fac + 1 OR up - 1 = astdw(aster) AND astac(aster) = fac + 1 OR up + 1 = astdw(aster) AND astac(aster) = fac + 1 THEN ast(aster) = 0: sc = sc + 50: IF fcx = 1 THEN GOSUB expl: up = 4
IF blast < 1 THEN GOTO ha

IF up = astdw(aster) AND astac(aster) = fac THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up + 1 = astdw(aster) AND astac(aster) = fac THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up - 1 = astdw(aster) AND astac(aster) = fac THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up = astdw(aster) AND astac(aster) = fac + 2 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up + 1 = astdw(aster) AND astac(aster) = fac + 2 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up - 1 = astdw(aster) AND astac(aster) = fac + 2 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF blast < 2 THEN GOTO ha
IF up = astdw(aster) AND astac(aster) = fac - 1 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up + 1 = astdw(aster) AND astac(aster) = fac - 1 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up - 1 = astdw(aster) AND astac(aster) = fac - 1 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up = astdw(aster) AND astac(aster) = fac + 3 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up + 1 = astdw(aster) AND astac(aster) = fac + 3 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4
IF up - 1 = astdw(aster) AND astac(aster) = fac + 35 THEN ast(aster) = 0: sc = sc + 50: IF fxc = 1 THEN GOSUB expl: up = 4

ha:
NEXT aster
RETURN

ast:
COLOR 10
fu = fu - 1
IF fu = 0 THEN GOTO win
LOCATE 2, 60: PRINT "FUEL "; fu

FOR a = 1 TO 500: NEXT a
FOR aass = 1 TO hma
IF ast(aass) = 0 AND INT(RND * 3) + 1 = 3 THEN astac(aass) = INT(RND * 78) + 1: ast(aass) = 1: astdw(aass) = 3
IF ast(aass) = 0 THEN GOTO ast2
astdw(aass) = astdw(aass) + 1
LOCATE astdw(aass), astac(aass): co = 7: COLOR co: PRINT "X"
LOCATE astdw(aass) - 1, astac(aass): PRINT " "
IF astdw(aass) = 23 AND astac(aass) = ac + 1 THEN ast(aass) = 0: LOCATE astdw(aass), astac(aass): PRINT " ": GOTO lose
IF astdw(aass) = 23 THEN ast(aass) = 0: LOCATE astdw(aass), astac(aass): PRINT " "



IF catch = 1 AND astdw(aass) = 23 AND astac(aass) = ac AND cx = 0 THEN cx = 1
IF catch = 1 AND astdw(aass) = 23 AND astac(aass) = ac + 2 AND cx = 0 THEN cx = 2
IF catch = 1 AND astdw(aass) = 23 AND astac(aass) = ac AND cx = 2 THEN cx = 3
IF catch = 1 AND astdw(aass) = 23 AND astac(aass) = ac + 2 AND cx = 1 THEN cx = 3
ast2:
NEXT aass



RETURN
powerups:
IF blastmove = 1 THEN GOTO blaster
IF catchmove = 1 THEN GOTO catch
IF INT(RND * 10) + 1 <> 1 THEN RETURN
wpu = INT(RND * 100) + 1
IF wpu < 50 THEN catchmove = 1: GOTO catch
IF wpu < 100 THEN blastmove = 1: GOTO blaster


RETURN
blaster: IF ba1 = 0 THEN ba1 = 1: ba1ac = INT(RND * 78) + 1: ba1dw = 3
ba1dw = ba1dw + 1
LOCATE ba1dw, ba1ac: COLOR 4: PRINT "B"
LOCATE ba1dw - 1, ba1ac: PRINT " "
IF ba1dw = 23 THEN blastmove = 0: ba1 = 0: LOCATE ba1dw, ba1ac: PRINT " "
IF ba1dw = 23 AND ba1ac = ac + 1 THEN blast = blast + 1
IF catch >= 1 AND ba1dw = 23 AND ba1ac = ac THEN blast = blast + 1: SOUND 2000, 5
IF catch >= 1 AND ba1dw = 23 AND ba1ac = ac + 2 THEN blast = blast + 1: SOUND 2000, 5


RETURN
catch: IF ca1 = 0 THEN ca1 = 1: ca1ac = INT(RND * 78) + 1: ca1dw = 3
ca1dw = ca1dw + 1
LOCATE ca1dw, ca1ac: COLOR 9: PRINT "C"
LOCATE ca1dw - 1, ca1ac: PRINT " "
IF ca1dw = 23 THEN catchmove = 0: ca1 = 0: LOCATE ca1dw, ca1ac: PRINT " "
IF ca1dw = 23 AND ca1ac = ac + 1 THEN catch = catch + 1

RETURN
expl:


CLS
FOR a = 1 TO 100
ast(a) = 0
NEXT a
sc = sc + (150 * hma)
up = 4

RETURN
lose:
li = li - 1
IF li = 0 THEN SYSTEM
LOCATE 13, 34: PRINT "You are hit!"
SLEEP 2
GOTO startgame

win:

