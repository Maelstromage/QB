CLS
PRINT "type only numbers, include only the last two digits of year =)"
PRINT
INPUT "month"; mm
INPUT "day"; dd
INPUT "year"; yy
CLS
GOSUB sun
GOSUB moon
GOSUB pluto
GOSUB show
END
sun:
su$ = "aries"
sunx = (yy * 12) + mm
FOR sunloop = 1 TO sunx
READ suw$
su = VAL(suw$)
NEXT sunloop
IF mm = 1 AND dd < su THEN su$ = "Capricorn"
IF mm = 2 AND dd < su THEN su$ = "Aquarius"
IF mm = 3 AND dd < su THEN su$ = "Pisces"
IF mm = 4 AND dd < su THEN su$ = "Aries"
IF mm = 5 AND dd < su THEN su$ = "Taurus"
IF mm = 6 AND dd < su THEN su$ = "Gemini"
IF mm = 7 AND dd < su THEN su$ = "Cancer"
IF mm = 8 AND dd < su THEN su$ = "Leo"
IF mm = 9 AND dd < su THEN su$ = "Virgo"
IF mm = 10 AND dd < su THEN su$ = "Libra"
IF mm = 11 AND dd < su THEN su$ = "Scorpio"
IF mm = 12 AND dd < su THEN su$ = "Sagittarius"
IF mm = 1 AND dd >= su THEN su$ = "Aquarius"
IF mm = 2 AND dd >= su THEN su$ = "Pisces"
IF mm = 3 AND dd >= su THEN su$ = "Aries"
IF mm = 4 AND dd >= su THEN su$ = "Taurus"
IF mm = 5 AND dd >= su THEN su$ = "Gemini"
IF mm = 6 AND dd >= su THEN su$ = "Cancer"
IF mm = 7 AND dd >= su THEN su$ = "Leo"
IF mm = 8 AND dd >= su THEN su$ = "Virgo"
IF mm = 9 AND dd >= su THEN su$ = "Libra"
IF mm = 10 AND dd >= su THEN su$ = "Scorpio"
IF mm = 11 AND dd >= su THEN su$ = "Sagittarius"
IF mm = 12 AND dd >= su THEN su$ = "Capricorn"












RETURN
moon:
RETURN
pluto:
IF yy <= 0 OR yy < 15 THEN pl = "Gemini"
IF yy = 12 AND mm <= 9 AND mm <= 10 THEN
    IF mm = 9 AND dd > 9 THEN pl = "Cancer"
    IF mm = 10 AND dd < 20 THEN pl = "Cancer"
END IF
IF yy = 13 THEN
    IF mm < 7 AND mm > 12 THEN pl = "Cancer"
    IF mm = 7 AND dd > 9 THEN pl = "Cancer"
    IF mm = 12 AND dd < 28 THEN pl = "Cancer"
END IF
IF yy = 14 THEN
    IF mm > 5 THEN pl = "Cancer"
    IF mm = 5 AND dd > 26 THEN pl = "Cancer"
END IF
IF yy < 14 AND yy < 40 THEN pl = "Cancer"
IF yy = 37 THEN
    IF mm = 10 AND dd > 6 THEN pl = "Leo"
    IF mm = 11 AND dd < 25 THEN pl = "Leo"
END IF
IF yy = 38 THEN
    IF mm > 8 THEN pl = "Leo"
    IF mm = 8 AND dd > 3 THEN pl = "Leo"
END IF
IF yy = 39 THEN
    IF mm = 1 THEN pl = "Leo"
    IF mm = 2 AND dd < 7 THEN pl = "Leo"
    IF mm > 6 THEN pl = "Leo"
    IF mm = 6 AND dd > 13 THEN pl = "Leo"
END IF
IF yy > 39 AND yy < 57 THEN pl = "Leo"
IF yy = 56 THEN
    IF mm = 10 AND dd > 19 THEN pl = "Virgo"
    IF mm >= 11 THEN pl = "Virgo"
END IF

RETURN

show:
PRINT "sun"; su
PRINT "pluto"; pl

sunt:
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1900
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1901
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 23, 22'1902
DATA 21, 19, 21, 21, 22, 22, 23, 24, 24, 24, 23, 22'1903
DATA 21, 19, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1904
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1905
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1906
DATA 20, 19, 21, 21, 22, 22, 23, 24, 23, 24, 23, 22'1907
DATA 21, 19, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1908
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1909
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1910
DATA 20, 19, 21, 21, 22, 22, 23, 24, 23, 22, 23, 22'1911
DATA 21, 19, 20, 20, 21, 21, 23, 23, 23, 23, 22, 21'1912
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1913
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1914
DATA 20, 19, 21, 20, 21, 22, 23, 24, 23, 24, 23, 22'1915
DATA 21, 19, 20, 20, 21, 21, 23, 23, 23, 23, 22, 21'1916
DATA 20, 19, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1917
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1918
DATA 20, 19, 21, 20, 21, 22, 23, 24, 23, 24, 23, 22'1919
DATA 21, 19, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1920
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1921
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 23, 22, 22'1922
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 23, 22'1923
DATA 21, 19, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1924
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1925
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1926
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 23, 22'1927
DATA 21, 19, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1928
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1929
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1930
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 23, 22'1931
DATA 21, 19, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1932
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1933
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1934
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 23, 22'1935
DATA 21, 19, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1936
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1937
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1938
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1939
DATA 20, 19, 20, 20, 21, 21, 22, 23, 22, 23, 22, 22'1940
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1941
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1942
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1943
DATA 20, 19, 20, 20, 20, 21, 22, 23, 22, 23, 22, 21'1944
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 21'1945
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1946
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1947
DATA 20, 19, 20, 19, 20, 21, 22, 23, 22, 23, 22, 21'1948
DATA 20, 18, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1949
DATA 20, 19, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1950
DATA 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 22, 22'1951
DATA 20, 19, 20, 19, 20, 21, 22, 22, 22, 23, 22, 21'1952
DATA 20, 18, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1953
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1954
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1955
DATA 20, 19, 20, 19, 20, 21, 22, 22, 22, 23, 22, 21'1956
DATA 20, 18, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1957
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 21'1958
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1959
DATA 20, 19, 20, 19, 20, 21, 22, 22, 22, 23, 22, 21'1960
DATA 20, 18, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1961
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1962
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1963
DATA 20, 19, 20, 19, 20, 21, 22, 22, 22, 23, 22, 21'1964
DATA 20, 18, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1965
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1966
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1967
DATA 20, 19, 21, 20, 21, 21, 23, 23, 23, 23, 22, 22'1968
DATA 20, 18, 20, 20, 21, 21, 22, 23, 23, 23, 22, 21'1969
DATA 20, 18, 20, 20, 21, 21, 23, 23, 23, 23, 22, 22'1970
