DECLARE SUB doloop ()
DIM persona(12)


'mind body and soul
'opening menu
CLS
PRINT "Mind Body and Soul v0.0"
PRINT
PRINT "          A game by RVS inc."

CALL doloop
'opening
CLS
PRINT "A wizard stands before you atop a great cliff"
PRINT "...He holds a staff with authority."
PRINT "His eyes are hidden by the shadow of his wisker like eyebrows."
PRINT "It seems he can see into your very soul..."
PRINT "His voice sounds like thunder...'What is your name?'"
INPUT ":"; name$
PRINT name$; "I am a powerful Sorcerer. I have lived on for eons."
PRINT "Listen to my words and you will find wisdom."
PRINT "Make a wish and i will ask you three questions"
PRINT "Then I will give you a magickal tarot card."
PRINT "Which will help you on your journey ahead."
qwish:
PRINT "What is your wish..."
PRINT "1. Become a powerful Wizard."
PRINT "2. Become a strong Hero."
PRINT "3. Become a noble Emporor."
PRINT name$; ":";
INPUT  persona(1)
IF persona(1) < 1 OR persona(1) > 3 THEN GOTO qwish
IF persona(1) = 1 THEN GOSUB qwizard
IF persona(1) = 2 THEN GOSUB qhero
IF persona(1) = 3 THEN GOSUB qemporor

IF persona(2) = 1 THEN GOSUB qfire
IF persona(2) = 2 THEN GOSUB qearth
IF persona(2) = 3 THEN GOSUB qair
IF persona(2) = 4 THEN GOSUB qwater


'1=emperor  2=heirophant  3=Magician    4=chariot  5=Strength  6=hermit
'7=justice  8=death       9=temperance  10=Devil   11=Star     12=moon
IF persona(3) = 1 THEN persona(4) = persona(2)
IF persona(3) = 2 THEN persona(4) = persona(2) + 4
IF persona(3) = 3 THEN persona(4) = persona(2) + 8
IF persona(4) = 1 THEN tarot$ = "The Emperor"
IF persona(4) = 2 THEN tarot$ = "The Heirophant"
IF persona(4) = 3 THEN tarot$ = "The Magician"
IF persona(4) = 4 THEN tarot$ = "The Chariot"
IF persona(4) = 5 THEN tarot$ = "Strength"
IF persona(4) = 6 THEN tarot$ = "The Hermit"
IF persona(4) = 7 THEN tarot$ = "Justice"
IF persona(4) = 8 THEN tarot$ = "Death"
IF persona(4) = 9 THEN tarot$ = "Temperance"
IF persona(4) = 10 THEN tarot$ = "The Devil"
IF persona(4) = 11 THEN tarot$ = "The Star"
IF persona(4) = 12 THEN tarot$ = "The Moon"
PRINT
BEEP
PRINT "You have recived "; tarot$; "!"
PRINT
CALL doloop

PRINT "I have read the cards and you are to be a very powerful man."
PRINT "But you have demons to over come..."
PRINT "For you to learn you first test will be to rule over the town of shiva."
PRINT "Althought I have magickaly made you dark side into a living being."
PRINT "For you to pass this test you will have to not only rule this town"
PRINT "Making the best decisions possible, but also find and eliminat your darkside."
PRINT "He is hidden, but he will come to you as will the others. When you find him..."
PRINT "Use this Magickal sword to slay him..."
BEEP
PRINT
PRINT "You have recived a magickal sword...inscribed upon it is "; tarot$; " Card"
PRINT
CALL doloop
PRINT "You will know you have killed the right person,"
PRINT "When your swords inscription turns gold...remeber that..."
GOSUB quest1:



END
qwizard:
PRINT "Being a powerful wizard you learn the secret to immortality."
PRINT "Since the herb to make grows only on one hill once every thousand"
PRINT "years. You can only make one elixer,"
PRINT "Do you..."
PRINT "1. Use it on yourself"
PRINT "2. Sell it for all the riches in the known world."
PRINT "3. Or destroy all evedence of it."
PRINT "4. Give it to your dieing mother."
INPUT  persona(2)
IF persona(2) < 1 OR persona(2) > 4 THEN GOTO qwizard
RETURN
qhero:
PRINT "On becoming a world renown hero, do you use your fame for..."
PRINT "1. Free beer and chicks."
PRINT "2. Getting endorsements from kingdoms for you quests."
PRINT "3. Retire and risk your life no more."
PRINT "4. To defend the inocent and strike fear into evil doers."
INPUT  persona(2)
IF persona(2) < 1 OR persona(2) > 4 THEN GOTO qhero
RETURN
qemporor:
PRINT "On becoming a the emporor of the largest land of the known world."
PRINT "Do you use your power to..."
PRINT "1. Gather armies to attack and defend against your enemies."
PRINT "2. Raise taxes to increase your riches."
PRINT "3. Rule fairly and justly and wisely."
PRINT "4. Fight to lower poverty so everyone can live comfortably."
INPUT  persona(2)
IF persona(2) < 1 OR persona(2) > 4 THEN GOTO qemporor
RETURN

qfire:
PRINT "Being a famous icon you write a book on all your philosophies"
PRINT "Upon finishing your book you have writen, with all your wisdom inside."
PRINT "You go for a walk and fall into a ring of fairies."
PRINT "They do not relase you save for these conditions."
PRINT "1. You live, but you are forgotten by everyone and you book is destroyed"
PRINT "2. You die, but you fame lives on, although you book is destroyed."
PRINT "3. You die, you are forgotten by everyone but your book is read by all."
INPUT  persona(3)
IF persona(3) < 1 OR persona(3) > 4 THEN GOTO qfire

RETURN
qearth:
PRINT "Being a rich individual you rule much land, are very healthy and"
PRINT "Have a means to earn money."
PRINT "One day you are shining a lamp and a genie pops out."
PRINT "After demanding a more than the limit of 1 wish, he curses you."
PRINT "He takes away your wish and takes two of three endowments of yours."
PRINT "Which does he leave you with..."
PRINT "1. All you posses."
PRINT "2. Your health."
PRINT "3. Your means to earn money."
INPUT  persona(3)
IF persona(3) < 1 OR persona(3) > 4 THEN GOTO qearth

RETURN
qwater:
PRINT "You live with your mother, you beautiful wife and you lovely children."
PRINT "One day, you go off to a far land to help the king in your area of"
PRINT "specialties. Your family stays in a very nice inn."
PRINT "That night, a man carelessly leaves his stables open and gets drunk with,"
PRINT "his friends. His herd of ox tramples the inn your family was staying in."
PRINT "Upon hearing this the king fells he owes you a favor so he lets you"
PRINT "decide the judgement on this man..."
PRINT "Do you..."
PRINT "1. Have him executed."
PRINT "2. Kill his family so he knows your misery."
PRINT "3. Pardon him knowing he did not intentionally kill your family."
INPUT  persona(3)
IF persona(3) < 1 OR persona(3) > 4 THEN GOTO qwater

RETURN

qair:
PRINT "You are a very wise man..."
PRINT "A man comes to you and asks..."
PRINT "Who opinion of me should i fear the most..."
PRINT "How do you answer..."
PRINT "1. Those that don't know you."
PRINT "2. Your wife."
PRINT "3. Your friends."
INPUT  persona(3)
IF persona(3) < 1 OR persona(3) > 4 THEN GOTO qair

RETURN

quest1:
'init quest1
quest1pop = 12
outsideshiva:
PRINT "There are 12 houses in the town of shiva"
PRINT "The current population is "; quest1pop
PRINT "would you like to got to..."
PRINT "1. The house with the sword proped against the outside."
PRINT "2. The house that is very decorated."
PRINT "3. The house that has gizmos outside."
PRINT "4. The house that looks very comphortable and homey."
PRINT "5. The house of the man that everybody knows and loves in town."
PRINT "6. The house with herbs outside."
PRINT "7. The house that seems very peaceful."
PRINT "8. The house that is all borded up."
PRINT "9. The house with the man standing in the back yard."
PRINT "10. The house that is very tidy."
PRINT "11. The house of the man with lots of friends."
PRINT "12. The house of the day dreamer."
INPUT  shivahouse
IF shivahouse < 1 OR shivahouse > 12 THEN GOTO outsideshiva
IF shivahouse = 1 THEN
        IF pop1 = 1 THEN PRINT "There is a beheaded man laying on the floor": GOTO outsideshiva
        
        PRINT "After talking to this man you find he is a warmonger"
        PRINT "do you..."
        PRINT "1. Promise him the job of general in your army when you become more powerful."
        PRINT "2. Kill him."
        PRINT "3. Leave him be."
        GOSUB shivadarkchk
                IF shivahouseoptions = 1 THEN
                        IF shivahouse = persona(4) THEN BEEP: PRINT "He rise's up smiles darkly and with a quick swing of his sword you are dead.": END
                        IF shivahouse <> persona(4) THEN PRINT "He says Gladly."

                END IF
                IF shivahouseoptions = 2 THEN
                        IF shivahouse = persona(4) THEN BEEP: PRINT "Your sword's inscription glows gold."
                        IF shivahouse <> persona(4) THEN BEEP: PRINT "His head rolls across his floor...but your sword looks the same.": pop1 = 1: quest1pop = quest1pop - 1

                END IF

END IF
GOTO quest1
RETURN

shivadarkchk:
INPUT  shivahouseoptions
IF shivahouseoptions < 1 OR shivahouseoptions > 3 GOTO shivadarkchk
RETURN





DEFSNG A-Z
SUB doloop
DO WHILE INKEY$ = "": LOOP
END SUB