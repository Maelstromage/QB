DECLARE SUB MakeBMP ()

'==== BASICBMP.BAS by Carlos E. Diaz, Jr. (XTDD74A) ===                                              
'==== Copyright (C) 1994 ===        
'==== Though copyrighted for proof of authorship, ===                                                        
'==== I, Carlos E. Diaz, Jr. have denoted the source code of ===                                                
'==== BASICBMP.BAS as PUBLIC DOMAIN. === =
'-------------------------------- NOTICE! ---------------------------------                          
'---    This program, written by Carlos E. Diaz, Jr. create BMP's of screen
'---    12 only! Use this program at your own risk! The writer has taken good                                             
'---    care to make this program safe, but he is NOT liable for ANY damage it                                          
'---  may cause.
'---    The file name of the BMP must be specified in the SUB makeBMP.                                      
'---    The program will not overwrite an existing file with the same name                                              
'---  set in the SUB makeBMP.                               
'---    This program is only fast if you have a fast computer.                                                  
'---    The white line that creeps from the bottom to the top of the screen                                          
'---  simply shows what horizontal line the program is working on.                                                
'---    The only known side effect is that when the file is opened by                                                  
'---  Windows' PaintBrush, the colors may not match those of the BASIC screen.                                          
'---    If you have trouble opening the .BMP file from Windows, change your                                       
'---  Windows display driver to 640x480 16 colors from Windows Setup.                                             
'---    This program was written and tested with QBASIC interpretive BASIC.                                        
																				
DECLARE SUB BMPheader (Hd$)
SCREEN 12
'-------------------------Draw Something on the Screen -------------------                                        
FOR t = 1 TO 25
	 x1 = RND * 640
	 y2 = RND * 480
	 x2 = RND * 640
	 y2 = RND * 480
	 c = RND * 4 + 1
	 LINE (x1, y1)-(x2, y2), c
	 LINE (639 - x1, y1)-(639 - x2, y2), c
	 LINE (x1, 479 - y1)-(x2, 479 - y2), c
	 LINE (639 - x1, 479 - y1)-(639 - x2, 479 - y2), c
NEXT t
LINE (0, 0)-(639, 479), 15, B
a$ = "-=This BMP file was created by BASICBMP.BAS, a 100% QBasic program=-"
LOCATE 15, (40 - (LEN(a$) / 2)): PRINT a$
'--------------------------- Make the BMP file
'REMark the next line if you dont want to change the screen to a BMP.
CALL MakeBMP    'This is the heart of the program          
PRINT "!Program Complete!"
END

SUB BMPheader (Hd$)
'**** This Header Creates a 640 x 480 16 color BMP format ONLY!! ****
'**** The exact meaning of each byte is unknown. ****                                                   
'**** The only known side effect is that colors will not match ****                                                
'**** their BASIC equivalents when the .BMP is opened by ****                                                   
'**** Windows 3.1's PaintBrush. ****                                                   
	Hd$ = CHR$(66) + CHR$(77) + CHR$(118) + CHR$(88) + CHR$(2) + CHR$(0) + CHR$(0) + CHR$(0)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(118) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(40) + CHR$(0)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(128) + CHR$(2) + CHR$(0) + CHR$(0) + CHR$(224)
	Hd$ = Hd$ + CHR$(1) + CHR$(0) + CHR$(0) + CHR$(1) + CHR$(0) + CHR$(4) + CHR$(0) + CHR$(0)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(128)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(128) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(128) + CHR$(128)
	Hd$ = Hd$ + CHR$(0) + CHR$(128) + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(128) + CHR$(0)
	Hd$ = Hd$ + CHR$(128) + CHR$(0) + CHR$(128) + CHR$(128) + CHR$(0) + CHR$(0) + CHR$(128)
	Hd$ = Hd$ + CHR$(128) + CHR$(128) + CHR$(0) + CHR$(192) + CHR$(192) + CHR$(192)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(255) + CHR$(0) + CHR$(0) + CHR$(255)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(255) + CHR$(255) + CHR$(0) + CHR$(255)
	Hd$ = Hd$ + CHR$(0) + CHR$(0) + CHR$(0) + CHR$(255) + CHR$(0) + CHR$(255) + CHR$(0)
	Hd$ = Hd$ + CHR$(255) + CHR$(255) + CHR$(0) + CHR$(0) + CHR$(255) + CHR$(255) + CHR$(255)
	Hd$ = Hd$ + CHR$(0)
END SUB

SUB MakeBMP
	DIM Header AS STRING
	DIM X AS INTEGER, Y AS INTEGER
	DIM a AS INTEGER, B AS INTEGER, c  AS INTEGER
	DIM filename AS STRING
	DIM Filelen AS LONG
	WINDOW SCREEN (0, 479)-(639, 0)
	'======== Set File name from this line ======
	filename$ = "C:\FIRSTBMP.BMP"
	BMPheader Header
	OPEN filename FOR BINARY ACCESS WRITE AS #1
		Filelen = LOF(1)
	CLOSE #1
	IF Filelen = 0 THEN
		OPEN filename FOR BINARY ACCESS WRITE AS #1
			PUT #1, , Header
			FOR Y = 479 TO 0 STEP -1
				FOR X = 0 TO 639 STEP 2
					a = POINT(X, Y)
					B = POINT(X + 1, Y)
					c = a * 16 + B
					Buffer$ = Buffer$ + CHR$(c)
				NEXT X
				PUT #1, , Buffer$
				Buffer$ = ""
				LINE (0, Y)-(639, Y), 15
			NEXT Y
		CLOSE #1
	ELSE
		LOCATE 2, 1
		PRINT "*Attention!! Cannot make file " + CHR$(34) + filename + CHR$(34) + "!*"
		 PRINT "*That file already exists and this*"
		 PRINT "*program will NOT overwrite another file!*"
	END IF
END SUB

