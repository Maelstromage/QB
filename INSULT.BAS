CLS
RANDOMIZE TIMER
adj = 10
aan = 10
nou = 10
DO UNTIL LCASE$(MID$(quit$, 1, 1)) = "y"
rad = INT(RND * adj) + 1
ran = INT(RND * aan) + 1
rno = INT(RND * nou) + 1
ran = ran + adj
rno = rno + adj + aan
'PRINT rad, ran, rno
INPUT "You know what you are?", duh

FOR lad = 1 TO rad
READ wad$
NEXT lad
RESTORE


FOR lan = 1 TO ran
READ wan$
NEXT lan
RESTORE


FOR lno = 1 TO rno
READ wno$
NEXT lno
RESTORE


PRINT wad$, wan$, wno$


INPUT "Quit"; quit$
LOOP











'adjectives
DATA big, frooty, cross-eyed, inbread, piss sucking
DATA fat ass, pussy-wiped, gohnarea infested, monkey spanking, pimple bitting

DATA stinky, queer, butt smeered, arm pit licking, retarded
DATA cum-sucking, scab eating, big as a hippo, butt-sucking, rainbow colored ass-hole

DATA anal hole, lesbian, faggot, lame excuse for a torso, hagis
DATA navel digger, lard ass, dike, penis head, frogert meachine





