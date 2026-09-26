s:
CLS
INPUT "month ", mn
INPUT "day ", dy
INPUT "year ", yr

IF yr >= 1900 AND yr <= 1911 THEN pluto$ = "Gemini"
IF yr = 1912 THEN
    pluto$ = "Gemini"
    IF mn >= 9 AND mn <= 10 THEN
        IF mn = 9 AND dy >= 10 THEN pluto$ = "Cancer"
        IF mn = 10 AND dy <= 19 THEN pluto$ = "Cancer"
    END IF
END IF
IF yr = 1913 THEN
    pluto$ = "Gemini"
    IF mn >= 7 AND mn <= 12 THEN
        IF mn = 7 AND dy >= 10 THEN pluto$ = "Cancer"
        IF mn = 12 AND dy <= 27 THEN pluto$ = "Cancer"
    END IF
END IF
'IF yr = 1914 THEN
    'pluto$ = "Gemini"
    'if mn >=5 and mn 12






CLS
PRINT "Sun-"; sun$
PRINT "Moon-"; moon$
PRINT "Pluto-"; pluto$
DO WHILE INKEY$ = ""
IF INKEY$ = CHR$(27) THEN END
LOOP
GOTO s

