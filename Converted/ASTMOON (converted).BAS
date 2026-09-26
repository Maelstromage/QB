PRINT TIME$




PRINT DATE$
mn = VAL(MID$(DATE$, 1, 2))
dt = VAL(MID$(DATE$, 4, 2))
yr = VAL(MID$(DATE$, 9, 2))

PRINT mn; "mn"
PRINT dt; "dt"
PRINT yr; "yr"
PRINT
PRINT "The moon is in-"
GOSUB moon
PRINT
PRINT "Mercury is in-"
GOSUB mercury
END
INPUT "month"; mn
INPUT "date"; dt
INPUT "year"; yr
GOSUB moon
END
mercury:

RETURN


moon:
GOSUB moonchkyr
IF mn = 1 THEN adday = 0
IF mn = 2 THEN adday = 31
IF mn = 3 THEN adday = 59
FOR a = 1 TO adday + dt
READ moonc$
NEXT a

GOSUB mooncode
PRINT moon$



RETURN
mooncode:
IF moonc$ = "1" THEN moon$ = "Aires"
IF moonc$ = "2" THEN moon$ = "Taurus"
IF moonc$ = "3" THEN moon$ = "Gemini"
IF moonc$ = "4" THEN moon$ = "Cancer"
IF moonc$ = "5" THEN moon$ = "Leo"
IF moonc$ = "6" THEN moon$ = "Virgo"
IF moonc$ = "7" THEN moon$ = "Libra"
IF moonc$ = "8" THEN moon$ = "Scorpio"
IF moonc$ = "9" THEN moon$ = "Sagittarius"
IF moonc$ = "a" THEN moon$ = "Capricorn"
IF moonc$ = "b" THEN moon$ = "Aquarius"
IF moonc$ = "c" THEN moon$ = "Pisces"
RETURN
moonchkyr:
IF yr = 99 THEN RESTORE 299
RETURN

'RESTORE 1

READ ts$
PRINT ts$


'moon data

299DATA 4, 4,5,5,6,6,7,7,7,8,8,9,9,9,a,a,b,b,c,c,c,1,1,2,2,3,3,4,4,5,5
    DATA 6,6,6,7,7,8,8,8,9,9,a,a,a,b,b,c,c,1,1,2,2,3,3,4,4,5,5,5
    DATA 6,6,7,7,7,8,8,9,9,9,a,a,b,b,c,c,1,1,2,2,3,3,4,4,4,5,5,6,6,7,7
    DATA

399DATA 6, a

