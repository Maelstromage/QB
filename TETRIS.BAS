'------------*--------------*-variable list-*---------------*----------------
'a=not exlusive
'b=not exlusive
'xb=boarder x coradence
'yb=boarder y coradence
'xp=piece x coradence
'yp=piece y coradence
'wp=which peice to are we dealing with?
        'wp=1 is T
        'wp=2 is I
        'wp=3 is L
        'wp=4 is BL (backwards L)
        'wp=5 is Z
        'wp=6 is BZ (backwards Z)
        'wp=7 is S (Square)
'wd=which direction is the peice going?
        'wd=0   (upright)
        'wd=90
        'wd=180
'----------------------------------------------------------------------------
CLS
 SCREEN 7, 0, 1, 0              'used 7 cuz charaters look more square
'----------------------------------------------------------------------------
setup:
 GOSUB Boarder
 GOSUB Title                    'sets up title screen
 CLS
 GOSUB Boarder
 GOSUB text                     'sets up text for game
 PCOPY 1, 2
GOTO main
'----------------------------------------------------------------------------
main:
 GOSUB nextbox
END
'----------------------------------------------------------------------------
Boarder:
'print's out the the left and the right of main boarder
  FOR a = 1 TO 23                'there are 23 cuz last one prints out across to close the U
   yb = a
   LOCATE yb, 10: PRINT "€"       'yb stands for y cordence of boarder
   LOCATE yb, 30: PRINT "€"       'yb stands for y cordence of boarder
  NEXT a
'print's out bottom of boarder
  FOR a = 1 TO 21
   xb = a
   LOCATE 24, xb + 9: PRINT "€";
  NEXT a
'print's out next box
  FOR a = 1 TO 9
   xb = a
   yb = a
   LOCATE 1, xb: PRINT "€"
   LOCATE 9, xb: PRINT "€"
   LOCATE yb, 1: PRINT "€"
  NEXT a

PCOPY 1, 0
RETURN
'----------------------------------------------------------------------------
Title:
RETURN
'----------------------------------------------------------------------------
text:
 LOCATE 2, 2: PRINT "  next"
 PCOPY 1, 0
RETURN

'----------------------------------------------------------------------------
peices:
IF wp = 1 THEN GOSUB T
IF wp = 2 THEN GOSUB I
RETURN

T:
IF wd = 0 THEN GOSUB T0
IF wd = 90 THEN GOSUB T90
IF wd = 180 THEN GOSUB T180
IF wd = 270 THEN GOSUB T270
RETURN
T0:                                             '1
 LOCATE py, px:        PRINT "€€€"
 LOCATE py + 1, px + 1: PRINT "€"
RETURN

T90:
 LOCATE py, px + 1:     PRINT "€"
 LOCATE py + 1, px:    PRINT "€€"
 LOCATE py + 2, px + 1: PRINT "€"
RETURN

T180:
 LOCATE py, px + 1:  PRINT "€"
 LOCATE py + 1, px: PRINT "€€€"
RETURN


T270:
 LOCATE py, px:     PRINT "€"
 LOCATE py + 1, px: PRINT "€€"
 LOCATE py + 2, px: PRINT "€"
RETURN

I:
IF wd = 0 THEN GOSUB I0
IF wd = 90 THEN GOSUB I90
IF wd = 180 THEN GOSUB I180
IF wd = 270 THEN GOSUB I270

RETURN

I0:
 LOCATE py, px:     PRINT "€"
 LOCATE py + 1, px: PRINT "€"
 LOCATE py + 2, px: PRINT "€"
 LOCATE py + 3, px: PRINT "€"
RETURN

I90:
 LOCATE py, px:     PRINT "€€€€"
RETURN

I180:
 LOCATE py, px:     PRINT "€€€€"
RETURN

I270:
 LOCATE py, px:     PRINT "€"
 LOCATE py + 1, px: PRINT "€"
 LOCATE py + 2, px: PRINT "€"
 LOCATE py + 3, px: PRINT "€"
RETURN
'----------------------------------------------------------------------------
nextbox:

wp = 2
wd = 0
py = 4
px = 4
GOSUB peices
PCOPY 1, 0
RETURN






































'           Regular ASCII Chart (character codes 0 - 127)
'000   (nul)  016  (dle)  032 sp  048 0  064 @  080 P  096 `  112 p
'001  (soh)  017  (dc1)  033 !   049 1  065 A  081 Q  097 a  113 q
'002  (stx)  018  (dc2)  034 "   050 2  066 B  082 R  098 b  114 r
'003  (etx)  019  (dc3)  035 #   051 3  067 C  083 S  099 c  115 s
'004  (eot)  020  (dc4)  036 $   052 4  068 D  084 T  100 d  116 t
'005  (enq)  021  (nak)  037 %   053 5  069 E  085 U  101 e  117 u
'006  (ack)  022  (syn)  038 &   054 6  070 F  086 V  102 f  118 v
'007  (bel)  023  (etb)  039 '   055 7  071 G  087 W  103 g  119 w
'008  (bs)   024  (can)  040 (   056 8  072 H  088 X  104 h  120 x
'009   (tab)  025  (em)   041 )   057 9  073 I  089 Y  105 i  121 y
'010   (lf)   026   (eof)  042 *   058 :  074 J  090 Z  106 j  122 z
'011  (vt)   027  (esc)  043 +   059 ;  075 K  091 [  107 k  123 {
'012  (np)   028  (fs)   044 ,   060 <  076 L  092 \  108 l  124 |
'013   (cr)   029  (gs)   045 -   061 =  077 M  093 ]  109 m  125 }
'014  (so)   030  (rs)   046 .   062 >  078 N  094 ^  110 n  126 ~
'015  (si)   031  (us)   047 /   063 ?  079 O  095 _  111 o  127 

'            Extended ASCII Chart (character codes 128 - 255)
'128 Ä      144 ê      160 †    176 ∞    192 ¿    208 –    224 ‡   240 
'129 Å      145 ë      161 °    177 ±    193 ¡    209 —    225 ·   241 Ò
'130 Ç      146 í      162 ¢    178 ≤    194 ¬    210 “    226 ‚   242 Ú
'131 É      147 ì      163 £    179 ≥    195 √    211 ”    227 „   243 Û
'132 Ñ      148 î      164 §    180 ¥    196 ƒ    212 ‘    228 ‰   244 Ù
'133 Ö      149 ï      165 •    181 µ    197 ≈    213 ’    229 Â   245 ı
'134 Ü      150 ñ      166 ¶    182 ∂    198 ∆    214 ÷    230 Ê   246 ˆ
'135 á      151 ó      167 ß    183 ∑    199 «    215 ◊    231 Á   247 ˜
'136 à      152 ò      168 ®    184 ∏    200 »    216 ÿ    232 Ë   248 ¯
'137 â      153 ô      169 ©    185 π    201 …    217 Ÿ    233 È   249 ˘
'138 ä      154 ö      170 ™    186 ∫    202      218 ⁄    234 Í   250 ˙
'139 ã      155 õ      171 ´    187 ª    203 À    219 €    235 Î   251 ˚
'140 å      156 ú      172 ¨    188 º    204 Ã    220 ‹    236 Ï   252 ¸
'141 ç      157 ù      173 ≠    189 Ω    205 Õ    221 ›    237 Ì   253 ˝
'142 é      158 û      174 Æ    190 æ    206 Œ    222 ﬁ    238 Ó   254 ˛
'143 è      159 ü      175 Ø    191 ø    207 œ    223 ﬂ    239 Ô   255

