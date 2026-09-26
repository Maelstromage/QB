'The Mystic Adventure: Version 1.0
'Written by Jonathan Henry & Cameron Smith
CLS
i$ = "one magic sword,"
g = 1000
Jeremy$ = "no"
Experience = 0
Level = 1
amulet$ = "no"
crowbar$ = "no"
myhp = 10
mp = 10
potion$ = "no"
potions = 0
nettle$ = "no"
lantern$ = "no"
trapdoor$ = "no"
PRINT "Greetings. I am Tavarro Digerta, famed Ranger in the realm of Elanthia."
PRINT "I am here to help you on your quest Mr... What did you say your name was?"
INPUT "", name$
CLS
PRINT "Ah, that's right. I thought it was something like "; name$
PRINT "Now, while we are on the subject of your quest, you would probably like"
INPUT "some more information on that. Am I right"; info$
       
        IF (info$ = "yes" OR info$ = "y" OR info$ = "Y" OR info$ = "Yes" OR info$ = "YES") THEN
                CLS
                PRINT "You, "; name$; ", have been chosen by me to help rid our fair land of the evil"
                PRINT "that now threatens to engulf it. You have been chosen mainly because of your"
                PRINT "heritage. You may not know this, but you are descended from the great elven king"
                PRINT "Shartro Giggot. He was the greatest leader the elves have ever had. He also"
                PRINT "possessed a most unusual quality. The ability to learn and use magic."
                PRINT "Being a descendant of him, you have inherited that ability. I, too, can use"
                PRINT "magic, although I had to study and practice for many years until I could use it"
                PRINT "effectively."
                INPUT "", dfgfghdghjfh
                CLS
                PRINT "However, it will be much easier for you. But first I must finish telling you"
                PRINT "about your quest. The evil being, Morgath, has broken free of the spirit world."
                PRINT "It was imprisoned there eons ago by the great elven mages. It was held captive"
                PRINT "by a magic seal that they believed to be unbreakable. However, ages of chopping"
                PRINT "away by Morgath have made a small crack in the seal. Now, with the seal weakened"
                PRINT "he is gathering all his strength for one, virtually all powerful attack on the"
                PRINT "seal. This is where you fit into all of this. I will go to the seal and hold it"
                PRINT "together as long as I can. While I am doing this, you must seek out Randmeer."
                PRINT "He is a very powerful druid and will be able to help you. He lives in the Yaktu"
                PRINT "Mountains to the north. He will be able to tell you more of what you need to do."
                PRINT "I must go soon. Feel free to ask others to join you, but be careful. Now, before"
                PRINT "leave I will give you these. He hands you 1000 gold pieces and a sword. It is a mighty sword called Retenite. May it serve you well. Farewell, "; name$; "!"; ""
                INPUT "", dsfdhhbdfdfgg
END IF

GOSUB MyHouse
CLS
PRINT "Good-bye and thanks for playing The Mystic Adventure!"
END

Beginning:
CLS
PRINT "You are outside your house. To the east you see your friend Jeremy's house."
PRINT "To the north lies the shop of Begrit, who may have useful things for you."
PRINT "In the west you see a church."
PRINT "Passage to the South is blocked by the sturdy city wall."
DO
INPUT "What is your command"; COMMANDS$
        IF (COMMANDS$ = "e") THEN
                GOSUB Jeremy
        END IF
       
        IF (COMMANDS$ = "n") THEN
                GOSUB Begrit
        END IF
        IF (COMMANDS$ = "g") THEN
                CLS
                PRINT "You are carrying"; g; "gold pieces"
        END IF

        IF (COMMANDS$ = "i") THEN
                CLS
                PRINT "You are carrying "; i$
        END IF
       
        IF (COMMANDS$ = "quit") THEN
                RETURN
        END IF

        IF (COMMANDS$ = "w") THEN
                GOSUB CHURCH
        END IF

        IF (COMMANDS$ = "l") THEN
                CLS
                PRINT "You are currently at level"; Level
        END IF

        IF (COMMANDS$ = "exp") THEN
                CLS
                PRINT "You currently have"; Experience; "experience points."
        END IF

        IF (COMMANDS$ = "go house") THEN
                GOSUB MyHouse
        END IF

        IF (COMMANDS$ = "hp") THEN
               CLS
               PRINT "You have"; myhp; "hp."
        END IF

        IF (COMMANDS$ = "mp") THEN
                CLS
                PRINT "You have"; mp; "magic points."
        END IF

        IF (COMMANDS$ = "drink magic potion") THEN
                IF (mp = 10 OR potion$ = "no") THEN
                CLS
                PRINT "You can't drink this now, either because you have full magic points of the flask is empty."
                ELSE
                CLS
                PRINT "You drink the rather disgusting tasting potion and regain 6 mp."
                potion$ = "no"
                mp = 10
                END IF
        END IF

        IF (COMMANDS$ = "potions") THEN
                CLS
                PRINT "You re carrying"; potions; "potions."
        END IF

LOOP WHILE (COMMANDS$ = "g" OR COMMANDS$ = "i" OR COMMANDS$ = "e" OR COMMANDS$ = "n" OR COMMANDS$ <> "g" OR COMMANDS$ <> "i" OR COMMANDS$ <> "quit" OR COMMANDS$ <> "w" OR COMMANDS$ = "l" OR COMMANDS$ <> "quit")
RETURN

Jeremy:
CLS
        IF (Jeremy$ = "no") THEN
                PRINT "You are in front of your trusted friend Jeremy Dartan's house."
'if r> "g" OR COMMANDS$ <> "i"f yoro")rusnd Y. to thRmbarhy ho   ."
'r
'rg " hou    and use magic."
'              o
'In tF .ag      nE
'- stac.ls&ÃÇLic."
'       o. ""
'5 g         't open:        END ICOMMANDS$ = "potiwMr
'          5g't open:        END ICOMMANDS$ = "potiwMr
'             astrength for one, virtually all powerful attack lm of Elo˜Aˆ°È52o˜Aˆ°È    J  o."s   strTThe Mystic Adventure: Version 1.0
'Written by Jonathan Henry & Cameron Smith
CLS
i$ = "one magic sword,"
g = 1000
Jeremy$ = "no"
Experience = 0
Level = 1
amulet$ = "no"
crowbar$ = "no"
myhp = 10
mp = 10
potion$ = "no"
potions = 0
nettle$ = "no"
lantern$ = "no"
trapdoor$ = "no"
PRINT "Greetings. I am Tavarro Digerta, famed Ranger in the realm of Elanthia."
PRINT "I am here to help you on your quest Mr... What did you say your name was?"
INPUT "", name$
CLS
PRINT "Ah, that's right. I thought it was something like "; name$
PRINT "Now, while we are on the subject of your quest, you would probably like"
INPUT "some more information on that. Am I right"; info$
       
        IF (info$ = "yes" OR info$ = "y" OR info$ = "Y" OR info$ = "Yes" OR info$ = "YES") THEN
                CLS
                PRINT "You, "; name$; ", have been chosen by me to help rid our fair land of the evil"
                PRINT "that now threatens to engulf it. You have been chosen mainly because of your"
                PRINT "heritage. You may not know this, but you are descended from the great elven king"
                PRINT "Shartro Giggot. He was the greatest leader the elves have ever had. He also"
                PRINT "possessed a most unusual quality. The ability to learn and use magic."
                PRINT "Being a descendant of him, you have inherited that ability. I, too, can use"
                PRINT "magic, although I had to study and practice for many years until I could use it"
                PRINT "effectively."
                INPUT "", dfgfghdghjfh
                CLS
                PRINT "However, it will be much easier for you. But first I must finish telling you"
                PRINT "about your quest. The evil being, Morgath, has broken free of the spirit world."
                PRINT "It was imprisoned there eons ago by the great elven mages. It was held captive"
                PRINT "by a magic seal that they believed to be unbreakable. However, ages of chopping"
                PRINT "away by Morgath have made a small crack in the seal. Now, with the seal weakened"
                PRINT "he is gathering all his strength for one, virtually all powerful attack on the"
                PRINT "seal. This is where you fit into all of this. I will go to the seal and hold it"
                PRINT "together as long as I can. While I am doing this, you must seek out Randmeer."
                PRINT "He is a very powerful druid and will be able to help you. He lives in the Yaktu"
                PRINT "Mountains to the north. He will be able to tell you more of what you need to do."
                PRINT "I must go soon. Feel free to ask others to join you, but be careful. Now, before"
                PRINT "leave I will give you these. He hands you 1000 gold pieces and a sword. It is a mighty sword called Retenite. May it serve you well. Farewell, "; name$; "!"; ""
                INPUT "", dsfdhhbdfdfgg
END IF

GOSUB MyHouse
CLS
PRINT "Good-bye and thanks for playing The Mystic Adventure!"
END

Beginning:
CLS
PRINT "You are outside your house. To the east you see your friend Jeremy's house."
PRINT "To the north lies the shop of Begrit, who may have useful things for you."
PRINT "In the west you see a church."
PRINT "Passage to the South is blocked by the sturdy city wall."
DO
INPUT "What is your command"; COMMANDS$
        IF (COMMANDS$ = "e") THEN
                GOSUB Jeremy
        END IF
       
        IF (COMMANDS$ = "n") THEN
                GOSUB Begrit
        END IF
        IF (COMMANDS$ = "g") THEN
                CLS
                PRINT "You are carrying"; g; "gold pieces"
        END IF

        IF (COMMANDS$ = "i") THEN
                CLS
                PRINT "You are carrying "; i$
        END IF
       
        IF (COMMANDS$ = "quit") THEN
                RETURN
        END IF

        IF (COMMANDS$ = "w") THEN
                GOSUB CHURCH
        END IF

        IF (COMMANDS$ = "l") THEN
                CLS
                PRINT "You are currently at level"; Level
        END IF

        IF (COMMANDS$ = "exp") THEN
                CLS
                PRINT "You currently have"; Experience; "experience points."
        END IF

        IF (COMMANDS$ = "go house") THEN
                GOSUB MyHouse
        END IF

        IF (COMMANDS$ = "hp") THEN
               CLS
               PRINT "You have"; myhp; "hp."
        END IF

        IF (COMMANDS$ = "mp") THEN
                CLS
                PRINT "You have"; mp; "magic points."
        END IF

        IF (COMMANDS$ = "drink magic potion") THEN
                IF (mp = 10 OR potion$ = "no") THEN
                CLS
                PRINT "You can't drink this now, either because you have full magic points of the flask is empty."
                ELSE
                CLS
                PRINT "You drink the rather disgusting tasting potion and regain 6 mp."
                potion$ = "no"
                mp = 10
                END IF
        END IF

        IF (COMMANDS$ = "potions") THEN
                CLS
                PRINT "You re carrying"; potions; "potions."
        END IF

LOOP WHILE (COMMANDS$ = "g" OR COMMANDS$ = "i" OR COMMANDS$ = "e" OR COMMANDS$ = "n" OR COMMANDS$ <> "g" OR COMMANDS$ <> "i" OR COMMANDS$ <> "quit" OR COMMANDS$ <> "w" OR COMMANDS$ = "l" OR COMMANDS$ <> "quit")
RETURN

Jeremy:
CLS
        IF (Jeremy$ = "no") THEN
                PRINT "You are in front of your trusted friend Jeremy Dartan's house."
                PRINT "To the north you see a dark alleyway."
                PRINT "You may not go south here because of the city wall."
                PRINT "Jeremy waves to you. Perhaps you should ask him to join you."
        ELSE
                PRINT "You are in front of Jeremy's house. Jeremy smiles, obviously happy to be home."
                PRINT "To the north you see a dark alleyway."
                PRINT "You may not go south here because of the city wall."
        END IF
DO
INPUT "What is your command"; COMMANDS$

        IF (COMMANDS$ = "ask jeremy to join me") THEN
                CLS
                PRINT "You say, 'Hey Jeremy! I was wondering if you would join me in an adventure'."
                PRINT "Being the adventurous type, Jeremy says, 'Sure!'"
                PRINT "Jeremy joined your party!"
                Jeremy$ = "yes"
                INPUT "What is your command"; COMMANDS$
        END IF

        IF (COMMANDS$ = "w") THEN
                GOSUB Beginning

        END IF

        IF (COMMANDS$ = "i") THEN
                CLS
                PRINT "You are carrying "; i$
        END IF
       
        IF (COMMANDS$ = "quit") THEN
                RETURN
        END IF

        IF (COMMANDS$ = "g") THEN
                CLS
                PRINT "You are carrying"; g; "gold pieces"
        END IF

        IF (COMMANDS$ = "n") THEN
                GOSUB Alley
        END IF

        IF (COMMANDS$ = "l") THEN
                CLS
                PRINT "You are currently at level"; Level
        END IF

        IF (COMMANDS$ = "exp") THEN
                CLS
                PRINT "You currently have"; Experience; "experience points."
        END IF

        IF (COMMANDS$ = "hp") THEN
               CLS
               PRINT "You have"; myhp; "hp."
        END IF

        IF (COMMANDS$ = "mp") THEN
                CLS
                PRINT "You have"; mp; "magic points."
        END IF

        IF (COMMANDS$ = "drink magic potion") THEN
                IF (mp = 10 OR potion$ = "no") THEN
                CLS
                PRINT "You can't drink this now, either because you have full magic points of the flask is empty."
                ELSE
                CLS
                PRINT "You drink the rather disgusting tasting potion and regain 6 mp."
                potion$ = "no"
                mp = 10
                END IF
        END IF

        IF (COMMANDS$ = "potions") THEN
                CLS
                PRINT "You re carrying"; potions; "potions."
        END IF

LOOP WHILE (COMMANDS$ = "g" OR COMMANDS$ = "i" OR COMMANDS$ = "ask jeremy to join me" OR COMMANDS$ <> "g" OR COMMANDS$ <> "i" OR COMMANDS$ <> "quit" OR COMMANDS$ <> "n")
RETURN
Begrit:
CLS
PRINT "This is the shop of Begrit. Here you can buy some useful items."
PRINT "To the south you can see your house. To the east you see an alley."
PRINT "In the southwest you can make out the dim outline of the town church."
DO
INPUT "What is your command"; COMMANDS$
       
        IF (COMMANDS$ = "g") THEN
                CLS
                PRINT "You are carrying"; g; "gold pieces"
        END IF
      
        IF (COMMANDS$ = "i") THEN
                CLS
                PRINT "You are carrying "; i$
        END IF
       
        IF (COMMANDS$ = "buy") THEN
                GOSUB Buy
        END IF
              
        IF (COMMANDS$ = "s") THEN
                GOSUB Beginning
        END IF

       
        IF (COMMANDS$ = "quit") THEN
                RETURN
        END IF

        IF (COMMANDS$ = "e") THEN
                GOSUB Alley
        END IF

        IF (COMMANDS$ = "l") THEN
                CLS
                PRINT "You are currently at level"; Level
        END IF

        IF (COMMANDS$ = "exp") THEN
                CLS
                PRINT "You currently have"; Experience; "experience points."
        END IF

        IF (COMMANDS$ = "sw") THEN
                GOSUB CHURCH
        END IF

        IF (COMMANDS$ = "hp") THEN
               CLS
               PRINT "You have"; myhp; "hp."
        END IF

        IF (COMMANDS$ = "mp") THEN
                CLS
                PRINT "You have"; mp; "magic points."
        END IF

        IF (COMMANDS$ = "drink magic potion") THEN
                IF (mp = 10 OR potion$ = "no") THEN
                CLS
                PRINT "You can't drink this now, either because you have full magic points of the flask is empty."
                ELSE
                CLS
                PRINT "You drink the rather disgusting tasting potion and regain 6 mp."
                potion$ = "no"
                mp = 10
                END IF
        END IF

        IF (COMMANDS$ = "potions") THEN
                CLS
                PRINT "You re carrying"; potions; "potions."
        END IF

LOOP WHILE (COMMANDS$ = "g" OR COMMANDS$ = "i" OR COMMANDS$ = "buy" OR COMMANDS$ <> "g" OR COMMANDS$ <> "i" OR COMMANDS$ <> "buy" OR COMMANDS$ <> "s" OR COMMANDS$ <> "quit")
RETURN

Buy:
CLS
PRINT "Begrit shows you his list of wares"
DO
PRINT "------------------------------------"
PRINT "1. Light leather armor, 200 gold pieces"
PRINT "2. Steel Shield, 175 gold pieces"
PRINT "3. Bag, 250 gold pieces"
PRINT "4. Magic Potion, 200 gold pieces"
PRINT "5. Nothing, thanks"
PRINT "------------------------------------"
PRINT "'That is all I have in stock today, "; name$; "', says Begrit."
INPUT "Which one would you like"; Buy
SELECT CASE Buy
      
CASE 1:
        
        IF (g < 200) THEN
                CLS
                PRINT "I'm sorry, "; name$; " but you do not have enough gold pieces."
                ELSE
                CLS
                PRINT "'That will be 200  gold pieces'."
                PRINT "You hand Begrit 200 gold pieces and are now holding the light leather armor."
                g = g - 200
                i$ = i$ + " a suit of light leather armor,"
        END IF
CASE 2:
                IF (g < 175) THEN
                CLS
                PRINT "I'm sorry, "; name$; "but you do not have enough gold pieces."
                ELSE
                CLS
                PRINT "'That will be 175 gold pieces'."
                PRINT "You hand Begrit 175 gold pieces and are now holding a steel shield."
                g = g - 175
                i$ = i$ + " a steel shield,"
        END IF
CASE 3:
               
                IF (g < 250) THEN
                        CLS
                        PRINT "I'm sorry, "; name$; " but you do not have enough gold pieces."
                        ELSE
                        CLS
                        PRINT "'That will be 250 gold pieces'."
                        PRINT "You hand Begrit 250 gold pieces and are now holding a bag."
                i$ = i$ + " a bag,"
                g = g - 250
        END IF

CASE 4:
        IF (g < 200) THEN
                CLS
                PRINT "I'm sorry, "; name$; " but you do not have enough gold pieces."
                ELSE
                CLS
                PRINT "This is a special item. It refills 6 mp for each one you drink."
                PRINT "That will be 200 gold pieces."
                PRINT "You hand Begrit 200 gold pieces and are now holding a magic potion."
                g = g - 200
                potion$ = "yes"
                potions = potions + 1
        END IF
CASE 5:
        CLS
        PRINT "All right then."
        INPUT "Bye! ", fdghfghghh$
        GOSUB Begrit

CASE ELSE:
CLS
PRINT "Sorry, "; name$; " I don't carry those."
END SELECT
LOOP WHILE (Buy <> 5)
RETURN

Alley:
CHURCH$ = "no"
RANDOMIZE TIMER
monster = INT(RND * 3) + 1
        IF (crowbar$ = "no") THEN
CLS
PRINT "You are in a dark alleyway. The place practically reeks of evil."
PRINT "To the south you can barely make out Jeremy Dartan's house through the smog."
PRINT "To the west you see Begrit's shop. You notice a crowbar on the ground."
ELSE
CLS
PRINT "You are in a dark alleyway. The place practically reeks of evil."
PRINT "To the south you can barely make out Jeremy Dartan's house through the smog."
PRINT "To the west you see Begrit's shop."
END IF
IF (monster = 2) THEN
PRINT "You see a nasty looking monster rummaging through a dumpster."
END IF
DO
INPUT "What is your command"; COMMANDS$
       
        IF (COMMANDS$ = "g") THEN
                CLS
                PRINT "You are carrying"; g; "gold pieces"
        END IF
      
        IF (COMMANDS$ = "i") THEN
                CLS
                PRINT "You are carrying "; i$
        END IF

        IF (COMMANDS$ = "s") THEN
                GOSUB Jeremy
        END IF

        IF (COMMANDS$ = "w") THEN
                GOSUB Begrit
        END IF

        IF (COMMANDS$ = "get crowbar") THEN
                CLS
                SOUND 500, 5
                SOUND 20000, 2
                SOUND 500, 3
                SOUND 625, 10
                PRINT "You pick up the heavy iron crowbar."
                i$ = i$ + " a heavy iron crowbar,"
                crowbar$ = "yes"
        END IF

        IF (COMMANDS$ = "attack monster" AND monster = 2) THEN
                GOSUB Fight
        END IF

        IF (COMMANDS$ = "l") THEN
                CLS
                PRINT "You are currently at level"; Level
        END IF

        IF (COMMANDS$ = "exp") THEN
                CLS
                PRINT "You currently have"; Experience; "experience points."
        END IF

        IF (COMMANDS$ = "quit") THEN
                CLS
                PRINT "Good-bye and thanks for playing The Mystic Adventure!"
                END
        END IF

        IF (COMMANDS$ = "hp") THEN
               CLS
               PRINT "You have"; myhp; "hp."
        END IF

        IF (COMMANDS$ = "n") THEN
                GOSUB Nettles
        END IF

        IF (COMMANDS$ = "mp") THEN
                CLS
                PRINT "You have"; mp; "magic points."
        END IF

        IF (COMMANDS$ = "drink magic potion") THEN
                IF (mp = 10 OR potion$ = "no") THEN
                CLS
                PRINT "You can't drink this now, either because you have full magic points of the flask is empty."
                ELSE
                CLS
                PRINT "You drink the rather disgusting tasting potion and regain 6 mp."
                potion$ = "no"
                mp = 10
                END IF
        END IF

        IF (COMMANDS$ = "potions") THEN
                CLS
                PRINT "You re carrying"; potions; "potions."
        END IF

LOOP WHILE (COMMANDS$ = "g" OR COMMANDS$ = "i" OR COMMANDS$ <> "s" OR COMMANDS$ <> "w" OR COMMANDS$ <> "attack monster")
RETURN

CHURCH:
CHURCH$ = "yes"
monster = INT(RND * 3) + 1
IF (monster = 2) THEN
CLS
PRINT "You are in front of the town church. The door is open."
PRINT "To the east you can see your house."
PRINT "In the northeast you can see Begrit's shop."
PRINT "Travel south is made impossible here by the city wall."
PRINT "There is a sign here that you should read."
PRINT "You see an ugly monster jumping up and down."
ELSE
CLS
PRINT "You are in front of the town church. The door is open."
PRINT "To the east you can see your house. In the northeast you can see Begrit's shop."
PRINT "Travel south is made impossible here by the city wall."
PRINT "There is a sign here that you should read."
END IF
DO
INPUT "What is your command"; COMMANDS$
       
        IF (COMMANDS$ = "g") THEN
                CLS
                PRINT "You are carrying"; g; "gold pieces"
        END IF
     
        IF (COMMANDS$ = "i") THEN
                CLS
                PRINT "You are carrying "; i$
        END IF

        IF (COMMANDS$ = "e") THEN
                GOSUB Beginning
        END IF
        
        IF (COMMANDS$ = "read sign") THEN
                CLS
                PRINT "-------------------------------------------------------"
                PRINT "OFFICIAL NOTICE:"
                PRINT "THE TOWN IS BEING OVERRUN WITH MONSTERS."
                PRINT "THE TOWN OFFICIALS ADVISE EVERYONE TO STAY INSIDE."
                PRINT "ALL THOSE WHO ARE ABLE, PLEASE TRY TO GET RID OF A FEW."
                PRINT "THIS WOULD BE GREATLY APPRECIATED."
                PRINT "-------------------------------------------------------"
                PRINT "It is signed 'The Governor'"
        END IF

        IF (COMMANDS$ = "l") THEN
                CLS
                PRINT "You are currently at level"; Level
        END IF

        IF (COMMANDS$ = "exp") THEN
                CLS
                PRINT "You currently have"; Experience; "experience points."
        END IF
       
        IF (COMMANDS$ = "quit") THEN
                CLS
                PRINT "Good-bye and thanks for playing The Mystic Adventure!"
                END
        END IF

        IF (COMMANDS$ = "ne") THEN
                GOSUB Begrit
        END IF

        IF (COMMANDS$ = "attack monster") THEN
                GOSUB Fight
        END IF

        IF (COMMANDS$ = "hp") THEN
               CLS
               PRINT "You have"; myhp; "hp."
        END IF

        IF (COMMANDS$ = "mp") THEN
                CLS
                PRINT "You have"; mp; "magic points."
        END IF

        IF (COMMANDS$ = "drink magic potion") THEN
                IF (mp = 10 OR potion$ = "no") THEN
                CLS
                PRINT "You can't drink this now, either because you have full magic points of the flask is empty."
                ELSE
                CLS
                PRINT "You drink the rather disgusting tasting potion and regain 6 mp."
                potion$ = "no"
                mp = 10
                END IF
        END IF

        IF (COMMANDS$ = "potions") THEN
                CLS
                PRINT "You are carrying"; potions; "potions."
        END IF

        IF (COMMANDS$ = "go door") THEN
                GOSUB Churchollio
        END IF
LOOP WHILE (COMMANDS$ = "g" OR COMMMANDS$ = "i" OR COMMANDS$ <> "e" OR COMMANDS$ <> "i" OR COMMANDS$ <> "g" OR COMMANDS$ <> "quit" OR COMMANDS$ <> "ne")
RETURN

Fight:
CLS
hp =

