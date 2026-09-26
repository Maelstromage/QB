GOTO start
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
start: CLS
COLOR 2
INPUT "name"; name$
INPUT "court"; court$
INPUT "seeming"; seeming$
INPUT "player"; player$
INPUT "legacies"; legacies$
INPUT "kith"; kith$
INPUT "chronicle"; chronicle$
INPUT "house"; house$
INPUT "motley"; motley$

physical:
strength = 1
dexterity = 1
stamina = 1

social:
charisma = 1
manipulation = 1
appearence = 1

mental:
perception = 1
intelligence = 1
wits = 1

talents:
INPUT "alertness"; aler
INPUT athl
braw
dodg
empa
expr
inti
stre
subt

skills:
anim = 0
driv = 0
etiq = 0
fire = 0
mele = 0
musi = 0
repa = 0
secu = 0
stea = 0
surv = 0
       
Knowledges:
bure = 0
comp = 0
fina = 0
inve = 0
law = 0
ling = 0
medi = 0
occu = 0
poli = 0
scie = 0
bac1$ = "_______________ "
bac1 = 0
bac2$ = "_______________ "
bac2 = 0
bac3$ = "_______________ "
bac3 = 0
bac4$ = "_______________ "
bac4 = 0
bac5$ = "_______________ "
bac5 = 0
dis1 = 0
dis1$ = "_______________ "
dis2 = 0
dis2$ = "_______________ "
dis3 = 0
dis3$ = "_______________ "
dis4 = 0
dis4$ = "_______________ "
dis5 = 0
dis5$ = "_______________ "
cons = 1
self = 1
cour = 1
huma = 0
will = 0
twil = 0
bloo = 0
health = 0
expe = 0
wep1$ = ""
wep2$ = ""
wep3$ = ""
dif1 = 0
dif2 = 0
dif3 = 0
dam1 = 0
dam2 = 0
dam3 = 0




PRINT "                              Vampire:The Masquerade"
LOCATE 3, 1: PRINT "Name: "; name$
LOCATE 3, 27: PRINT "Nature: "; nature$
LOCATE 3, 54: PRINT "Generation: "; generation$
LOCATE 4, 1: PRINT "Player: "; player$
LOCATE 4, 27: PRINT "Demeanor: "; demeanor$
LOCATE 4, 54: PRINT "Haven: "; haven$
LOCATE 5, 1: PRINT "Chronicle: "; chronicle$
LOCATE 5, 27: PRINT "Clan: "; clan$
LOCATE 5, 54: PRINT "Concept: "; concept$
PRINT "-----------------------------------Attributes-----------------------------------"
LOCATE 7, 1: PRINT "      Physical                     Social                    Mental"
LOCATE 8, 1: PRINT "Strength     ";
hmd = strength
GOSUB dots
LOCATE 9, 1: PRINT "Dexterity    ";
hmd = dexterity
GOSUB dots
LOCATE 10, 1: PRINT "Stamina      ";
hmd = stamina
GOSUB dots
LOCATE 8, 27: PRINT "Charisma     ";
hmd = charisma
GOSUB dots
LOCATE 9, 27: PRINT "Manipulation ";
hmd = manipulation
GOSUB dots
LOCATE 10, 27: PRINT "Appearence   ";
hmd = appearence
GOSUB dots
LOCATE 8, 54: PRINT "Perception    ";
hmd = perception
GOSUB dots
LOCATE 9, 54: PRINT "Intelligence  ";
hmd = intelligence
GOSUB dots
LOCATE 10, 54: PRINT "Wits          ";
hmd = wits
GOSUB dots
PRINT "------------------------------------Abilites-----------------------------------"
LOCATE 12, 1: PRINT "      Talents                      Skills                    Knowledges"
LOCATE 13, 1: PRINT "Acting       ";
hmd = acti
GOSUB dots
LOCATE 14, 1: PRINT "Alertness    ";
hmd = aler
GOSUB dots
LOCATE 15, 1: PRINT "Athletics    ";
hmd = athl
GOSUB dots
LOCATE 16, 1: PRINT "Brawl        ";
hmd = braw
GOSUB dots
LOCATE 17, 1: PRINT "Dodge        ";
hmd = dodg
GOSUB dots
LOCATE 18, 1: PRINT "Empathy      ";
hmd = empa
GOSUB dots
LOCATE 19, 1: PRINT "Intimidation ";
hmd = inti
GOSUB dots
LOCATE 20, 1: PRINT "Leadership   ";
hmd = lead
GOSUB dots
LOCATE 21, 1: PRINT "Streetwise   ";
hmd = stre
GOSUB dots
LOCATE 22, 1: PRINT "Subterfuge   ";
hmd = subt
GOSUB dots

Skill:
LOCATE 13, 27: PRINT "Animal Ken   ";
hmd = anim
GOSUB dots
LOCATE 14, 27: PRINT "Drive        ";
hmd = driv
GOSUB dots
LOCATE 15, 27: PRINT "Etiquette    ";
hmd = etiq
GOSUB dots
LOCATE 16, 27: PRINT "Firearms     ";
hmd = fire
GOSUB dots
LOCATE 17, 27: PRINT "Melee        ";
hmd = mele
GOSUB dots
LOCATE 18, 27: PRINT "Music        ";
hmd = musi
GOSUB dots
LOCATE 19, 27: PRINT "Repair       ";
hmd = repa
GOSUB dots
LOCATE 20, 27: PRINT "Security     ";
hmd = secu
GOSUB dots
LOCATE 21, 27: PRINT "Stealth      ";
hmd = stea
GOSUB dots
LOCATE 22, 27: PRINT "Survival     ";
hmd = surv
GOSUB dots

Knowledge:
LOCATE 13, 54: PRINT "Bureaucracy   ";
hmd = bure
GOSUB dots
LOCATE 14, 54: PRINT "Computer      ";
hmd = comp
GOSUB dots
LOCATE 15, 54: PRINT "Finance       ";
hmd = fina
GOSUB dots
LOCATE 16, 54: PRINT "Investigation ";
hmd = inve
GOSUB dots
LOCATE 17, 54: PRINT "Law           ";
hmd = law
GOSUB dots
LOCATE 18, 54: PRINT "Linguistics   ";
hmd = ling
GOSUB dots
LOCATE 19, 54: PRINT "Medicine      ";
hmd = medi
GOSUB dots
LOCATE 20, 54: PRINT "Occult        ";
hmd = occu
GOSUB dots
LOCATE 21, 54: PRINT "Politics      ";
hmd = poli
GOSUB dots
LOCATE 22, 54: PRINT "Science       ";
hmd = scie
GOSUB dots
LOCATE 23, 34: INPUT "press return", pr$
page2: CLS
PRINT "-----------------------------------Advantages----------------------------------"
PRINT "        Disciplines               Backgrounds                   Virtues"
LOCATE 3, 1: PRINT dis1$; : hmd = dis1: GOSUB dots
LOCATE 3, 27: PRINT bac1$; : hmd = bac1: GOSUB dots
LOCATE 3, 54: PRINT " Conscience   "; : hmd = cons: GOSUB dots
LOCATE 4, 1: PRINT dis2$; : hmd = dis2: GOSUB dots
LOCATE 4, 27: PRINT bac2$; : hmd = bac2: GOSUB dots
LOCATE 5, 1: PRINT dis3$; : hmd = dis3: GOSUB dots
LOCATE 5, 27: PRINT bac3$; : hmd = bac3: GOSUB dots
LOCATE 5, 54: PRINT " Self-Control "; : hmd = self: GOSUB dots
LOCATE 6, 1: PRINT dis4$; : hmd = dis4: GOSUB dots
LOCATE 6, 27: PRINT bac4$; : hmd = bac4: GOSUB dots
LOCATE 7, 1: PRINT dis5$; : hmd = dis5: GOSUB dots
LOCATE 7, 27: PRINT bac5$; : hmd = bac5: GOSUB dots
LOCATE 7, 54: PRINT " Courage      "; : hmd = cour: GOSUB dots
PRINT "-------------------------------------------------------------------------------"
PRINT "-------Other Traits-------"
PRINT "__________________________"
PRINT "__________________________"
PRINT "__________________________"
PRINT "__________________________"
PRINT "__________________________"
LOCATE 9, 27: PRINT " --------Humanity---------"
LOCATE 10, 35: hmd = huma: dd = 1: GOSUB dots
LOCATE 12, 27: PRINT " -------Willpower---------"
LOCATE 13, 35: hmd = will: dd = 1: GOSUB dots
LOCATE 14, 35: hms = twil: GOSUB slashes
LOCATE 16, 27: PRINT " -------Blood Pool--------"
LOCATE 17, 35: hms = bloo: GOSUB slashes
LOCATE 9, 54: PRINT " ---------Health----------"
LOCATE 10, 54: PRINT "   Bruised             o"
LOCATE 11, 54: PRINT "   Hurt          -1    o"
LOCATE 12, 54: PRINT "   Injured       -1    o"
LOCATE 13, 54: PRINT "   Wounded       -2    o"
LOCATE 14, 54: PRINT "   Mauled        -2    o"
LOCATE 15, 54: PRINT "   Crippled      -5    o"
LOCATE 16, 54: PRINT "   Incapacitated       o"
startslash = 10
FOR heal = 1 TO health
LOCATE startslash, 77: PRINT "/"
startslash = startslash + 1
IF startslash = 17 THEN heal = health
NEXT heal
experience: LOCATE 18, 54: PRINT " -------Experience--------"
tp = 19: bt = 21: lf = 55: ri = 77
GOSUB border
IF expe > 0 THEN LOCATE 20, 65: PRINT expe
LOCATE 15, 1: PRINT "----------Combat----------"

LOCATE 18, 2: PRINT wep1$
IF dif1 > 0 THEN LOCATE 18, 17: PRINT dif1
IF dam1 > 0 THEN LOCATE 18, 22: PRINT dam1

LOCATE 20, 2: PRINT wep2$
IF dif2 > 0 THEN LOCATE 20, 17: PRINT dif2
IF dam2 > 0 THEN LOCATE 20, 22: PRINT dam2

LOCATE 22, 2: PRINT wep3$
IF dif3 > 0 THEN LOCATE 22, 17: PRINT dif3
IF dam3 > 0 THEN LOCATE 22, 22: PRINT dam3

tp = 17: bt = 23: lf = 1: ri = 26
GOSUB border
tp = 19
GOSUB border
tp = 21
GOSUB border
LOCATE 19, 1: PRINT CHR$(204)
LOCATE 21, 1: PRINT CHR$(204)
LOCATE 19, 26: PRINT CHR$(185)
LOCATE 21, 26: PRINT CHR$(185)
LOCATE 16, 1: PRINT " Weapon         dif   dam"
LOCATE 17, 16: PRINT CHR$(203)
LOCATE 17, 21: PRINT CHR$(203)
LOCATE 18, 16: PRINT CHR$(186)
LOCATE 18, 21: PRINT CHR$(186)
LOCATE 19, 16: PRINT CHR$(206)
LOCATE 19, 21: PRINT CHR$(206)
LOCATE 20, 16: PRINT CHR$(186)
LOCATE 20, 21: PRINT CHR$(186)
LOCATE 21, 16: PRINT CHR$(206)
LOCATE 21, 21: PRINT CHR$(206)
LOCATE 22, 16: PRINT CHR$(186)
LOCATE 22, 21: PRINT CHR$(186)
LOCATE 23, 16: PRINT CHR$(202)
LOCATE 23, 21: PRINT CHR$(202)











END
dots: FOR dot = 1 TO hmd
PRINT "*";
NEXT dot
IF hmd < 6 THEN hmo = 5 ELSE hmo = 10
IF dd = 1 THEN dd = 0: hmo = 10
oo = hmo - hmd
FOR o = 1 TO oo
PRINT "o";
NEXT o
RETURN
slashes: FOR slash = 1 TO hms
PRINT "/";
NEXT slash
oo = 10 - hms
FOR o = 1 TO oo
PRINT "o";
NEXT o
RETURN






