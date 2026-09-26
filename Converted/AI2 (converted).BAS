DIM vocab$(5000)
DIM defin$(5000)
'vocab and defin stand for vocabulary and definition respectively
'vocab is what you say and defin is how it responds


'to files are included with this program ai.cfg and brain.ai

'begining of init
CLS
COLOR 1
PRINT "AI learn chat v0.93"
PRINT "This is an AI that learns from you. you tell it how to respond."
PRINT "******Type q to end******"
INPUT "press enter", pressenter
CLS
mem = 1



'aico is the aicolor, usco is user color, debugco is the debug color
'reco is the how to resond line color

aico = 14
usco = 1
debugco = 4
reco = 15

'brain$ did not work so if you want to chang it then you'll have
'to go through my code and change it
direc$ = "c:\qb\games\ai.cfg"
brian$ = "c:\qb\games\brain.ai"


'open's ai.cfg and reads the data.
'it tells the program if are starting a new ai or an old one and it loads
'the name of your old program

OPEN direc$ FOR INPUT AS #1
INPUT #1, new, Name$
CLOSE


'manually start over by deleting rem statement beside new
'new = 0

IF new = 0 THEN GOTO new

'opens all the vocab and defin  mem is used for the number of defin and vocab
'the comp knows

IF new = 1 THEN
    OPEN "c:\qb\games\brain.ai" FOR INPUT AS #1
    INPUT #1, mem
    FOR a = 1 TO mem
        INPUT #1, vocab$(a)
        INPUT #1, defin$(a)
    NEXT a
    CLOSE
    GOTO brain
END IF


new:
new = 1
COLOR aico
PRINT "Hello, I have no memory. I would like a name. What will you call me?"
COLOR usco
INPUT ":"; Name$
COLOR aico
PRINT "Then from now I will be called "; Name$; "."


'writes the new data in the config file
OPEN direc$ FOR OUTPUT AS #1
WRITE #1, new, Name$
CLOSE

GOTO brain





brain:
COLOR aico
PRINT "Who am I talking to?"
COLOR usco
INPUT ":"; user$
COLOR aico
PRINT "Hello "; user$

main:
GOSUB command   'commmand
GOSUB chkvocab
GOTO main


command:
COLOR debugco
PRINT "mem="; mem
COLOR usco
PRINT user$;
INPUT ":"; vocab$(mem)
IF vocab$(mem) = "q" THEN
        COLOR reco: INPUT "save"; sa$
                IF MID$(sa$, 1, 1) = "y" THEN GOSUB save: PRINT "Saved"
        END
END IF
IF vocab$(mem) = "save" THEN GOSUB save: PRINT "Saved": GOTO command
RETURN

chkvocab:
COLOR aico
FOR chkv = 1 TO mem - 1 'minus one so it doesnt match the current statment
        IF vocab$(mem) = vocab$(chkv) THEN
                COLOR debugco
                PRINT "chkv-"; chkv
                PRINT defin$(chkv): RETURN
        END IF
NEXT chkv

COLOR reco
PRINT "How should I respond?"
INPUT "say:"; defin$(mem)
COLOR aico
PRINT Name$; ":"; defin$(mem)



mem = mem + 1
RETURN



save:




OPEN "c:\qb\games\brain.ai" FOR OUTPUT AS #2
        WRITE #2, mem
        FOR a = 1 TO mem
        WRITE #2, vocab$(a)
        WRITE #2, defin$(a)
        NEXT a
CLOSE
RETURN
