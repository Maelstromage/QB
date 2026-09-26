CLS
GroundType = 4
REDIM tiles$(GroundType)
tiles$(0) = "Grass"
tiles$(1) = "Sand"
tiles$(2) = "Water"
tiles$(3) = "Rock"
tiles$(4) = "Swamp"

FOR x = 0 TO GroundType
        FOR y = 0 TO GroundType
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 1"
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 2"
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 3"
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 4"
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 5"
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 6"
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 7"
                PRINT tiles$(x) + " - " + tiles$(y) + " direction 8"
                DO: LOOP WHILE INKEY$ = ""
        NEXT y
NEXT x

