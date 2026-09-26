DIM r$(10)




SCREEN 7, , 1, 0


start:
GOSUB screenmapdata
GOSUB screenwhere
END
screenwhere:

screenmapdata:
REM       1 2 3 4 5 6 7 8 9 0 1 2 3
r$(1) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(2) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(3) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(4) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(5) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(6) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(7) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(8) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(9) = "qbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbxbx"
r$(10) = "qbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbnbn"


END

grass:
DRAW "c3 d19 r23 u19 l23 bm+1,+1 p3,3 bm +3,+4 c10 u1 h1 bm +5,+3 u1 bm+10,12 u1 e1 bm-10,+2 m+0,0"
RETURN
box:DRAW "c15 d19 r23  u19 l23 "
RETURN
tree:
DRAW "c3 d19 r23  u19 l23 bm+1,+1 p3,3"
DRAW "bm+ 3,6 c10 d2 bm+ 1,2 u6 r1 d6 r1 d1 u2 c14 u1 c10 u6 r1 d10 r1 u11 r1 d11 r1 u11 r1 d12 r1 u11 c14 u1 f1 r1 f1 f1 r1 f1 d2 g1 d1 l1 d3 g1 c10 l2 u3 c14 u1 c10 u6 r1 d9 r1 u8 f1 d4 e1 u3 bm-3,9 c6 d3 l6 u4 r2 d1 r3 bd1 p6,6"
DRAW ""
RETURN
Terance:
DRAW "bm+8,2 c4 r5 f2 d2 g1 h3 l1 g2 h1 u1 e2 bd1 d1ldurur4dllr3dldr": REM hair
DRAW "bd1bl6 c14 f3 r1 e2 h3 l1 g2 br1 p14,14": REM face
DRAW "br2 u1 c0 bllrrl d1 br3 m+0,0bg1 c14 u1  "'eyes
DRAW "c1bd2br2r2bl7l2dlr4br3r4l3dl5bl1c14ldrbr7urdc0ld1c14rdl2c1u2l5dc12r5c1bdl5lc14uldbr2bd1r5"
DRAW "d1c0l5dr5drl7dr7"
RETURN
bricks:
DRAW "bd1 c12 r3 f1 d2 l1 c4 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c12 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c12 r5 d1 c4 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c12 r3 f1 d2 l1 c4 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c12 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c12 r5 d1 c4 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c12 l9 r9 f1 d2 l1 c4 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
RETURN
blackout:
DRAW "c0 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 d1 r23 d1 l23 u19"
RETURN
greybricks:

DRAW "br21bd1c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bl10bd5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"

RETURN
innsign:
DRAW "c15bf1r21d18l21u18 bf3 r2l1d12l1r2 br2 u12r1d1r1d10r1d1r1u12 br2 d12u12r1d1r1d10r1d1r1u12"
RETURN
door:
DRAW "br21bd1c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bl10bd5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"

DRAW "bl19bu2bd3br4c6u10r1u2r1u1r2u1r6 d1r2d1r1d2r1d10l13bu1p6,6 d1r1 c0u13br3bu1 d14 br3 u14 br3bd1 d13 br2bu5 u1 c4br1d6 u10h1u1h2"
RETURN
roof:
DRAW "c15 d19 r23  u19 l23 "
DRAW "d5r23d5l23d5r23 d4 l5u19l5d19l5u19l5d19"
RETURN

windows:
DRAW "br21bd1c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bl10bd5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 bm-13,0 c7 l9 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0"
DRAW "bm-10,+5 c7 r3 f1 d2 l1 c8 l3 u2 r3 d1 l2 bm+3,-2 c15 m+0,0 bm+2,0 c7 r9 f1 d2 l1 c8 l9 u2 r9 d1 l8 bm+9,-2 c15 m+0,0 br2 c7 r5 d1 c8 d2 l5 u2 r4 d1 l3"

DRAW "bu2bl19br4c15u7r1u2r1u1r2u1r6 d1r2d1r1d2r1d7l13bu1p15,15"
DRAW "bl1bd1c0u7r1u2r1u1r2u1r6 d1r2d1r1d2r1d7l13bu1 "
DRAW "bg1br7c0u10d6r6l12"
RETURN
brownbricks:
DRAW "br21bd1c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 bm-13,0 c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0"
DRAW "bl10bd5 c4 r3 f1 d2 l1 c6 l3 u2 r3 d1 l2 bm+3,-2 c12 m+0,0 bm+2,0 c4 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 br2 c4 r5 d1 c6 d2 l5 u2 r4 d1 l3"
DRAW "bm+2,+3 c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 bm-13,0 c4 l9 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0"
DRAW "bm-10,+5 c4 r3 f1 d2 l1 c6 l3 u2 r3 d1 l2 bm+3,-2 c12 m+0,0 bm+2,0 c4 r9 f1 d2 l1 c6 l9 u2 r9 d1 l8 bm+9,-2 c12 m+0,0 br2 c4 r5 d1 c6 d2 l5 u2 r4 d1 l3"
RETURN
wall1:
DRAW "br1c12d19br1c4r7u19l7d18br1p4,4bd1br8c12u8c15m+0,0c12br1r4bd1c4l4d7r4u6"
DRAW "bl1p4,4bu4bl4c12u8c15m+0,0br1c12r4bd1c4l4d7r4u6bl1p4,4bd1br3c12u4br1c4r4d4l4u3br1p4,4bd5c12r3l5c15m+0,0c12bd1d6br1c4r4u6l4d5br1p4,4bd3c12r3l5c15m+0,0bd1c12d4br1c4r4u4l4d3br1p4,4"
RETURN
wall2:
DRAW "br23bl1c12d19bl1c4l7u19r7d18bl1p4,4bd1bl8c12u8c15m+0,0c12bl1l4bd1c4r4d7l4"
DRAW "u6br1p4,4bu4br4c12u8c15m+0,0bl1c12l4bd1c4r4d7l4u6br1p4,4bd1bl3c12u4bl1c4l4d4r4u3bl1p4,4bd5c12l3r5c15m+0,0c12bd1d6bl1c4l4u6r4d5bl1p4,4bd3c12l3r5c15m+0,0bd1c12d4bl1c4l4u4r4d3bl1p4,4"
RETURN
wall3:
DRAW "bd1c12r23c4bd1d5l23u5r22bd1p4,4bd6c15m+0,0bd1c12d3c4bl1l9u4c12r9bd1c4d3u3l8bd1p4,4"
DRAW "bl3bu1l10d3r10u2bl1p4,4bu2c12l9r10c15m+0,0bd1c12d3"
DRAW "bd2l3r9c15m+0,0c12bd1d3bl1c4l8u3r8d2bl1p4,4"
DRAW "bu2bl10l4d3r4u2bl1p4,4bu2c12l3r5c15m+0,0bd1c12d3br13c4u3r5d3l4bu1p4,4bu3c12l1r5"
RETURN
wall4:
DRAW "bd19bu1c12r23c4bu1u5l23d5r22bu1p4,4bu6c15m+0,0bu1c12u3c4bl1l9d4c12r9bu1c4u3d3l8bu1p4,4"
DRAW "bl3bd1l10u3r10d2bl1p4,4bd2c12l9r10c15m+0,0bu1c12u3"
DRAW "bu2l3r9c15m+0,0c12bu1u3bl1c4l8d3r8u2bl1p4,4"
DRAW "bd2bl10l4u3r4d2bl1p4,4bd2c12l3r5c15m+0,0bu1c12u3br13c4d3r5u3l4bd1p4,4bd3c12l1r5"

RETURN
wall5:
DRAW "bd19br23bu1bl1c4l22u6r14u12r8d17 bl1p4,4 bd1br1c12l22r22u18 bl10 d8c15d1u1c12l1h3l1c4bu1u4r4d7h4br1p4,4bl2 bl1bu3 c12 d3 c15 u1 c12 l1 u1 l2 u1 l1 br1 c4r2d1 bd3 c12l4 r3bu1c4l3u1r1l1u1bd5d3r10bd1c12r1l11r10bu1c4h2l2u1l5bd1p4,4"
RETURN
wall6:
DRAW "bd19bu1br1c4r22u6l14u12l8d17 br1p4,4 bd1bl1c12r22l22u18 br10 d8c15d1u1c12r1e3r1c4bu1u4l4d7e4bl1p4,4br2 br1bu3 c12 d3 c15 u1 c12 r1 u1 r2 u1 r1 bl1 c4l2d1 bd3 c12r4 l3bu1c4r3u1l1r1u1bd5d3l10bd1c12l1r11l10bu1c4e2r2u1r5bd1p4,4"
RETURN
wall7:
DRAW "br23bd1bl1c4l22d6r14d12r8u17 bl1p4,4 bu1br1c12l22r22d18 bl10 u8c15u1d1c12l1g3l1c4bd1d4r4u7g4br1p4,4bl2 bl1bd3 c12 u3 c15 d1 c12 l1 d1 l2 d1 l1 br1 c4r2u1 bu3 c12l4 r3bd1c4l3d1r1l1d1bu5u3r10bu1c12r1l11r10bd1c4g2l2d1l5bu1p4,4"
RETURN
wall8:
DRAW "bd1br1c4r22d6l14d12l8u17 br1p4,4 bu1bl1c12r22l22d18 br10 u8c15u1d1c12r1f3r1c4bd1d4l4u7f4bl1p4,4br2 br1bd3 c12 u3 c15 d1 c12 r1 d1 r2 d1 r1 bl1 c4l2u1 bu3 c12r4 l3bd1c4r3d1l1r1d1bu5u3l10bu1c12l1r11l10bd1c4f2r2d1r5bu1p4,4"
RETURN
armorsign:
DRAW "c7r23d19l23u19br5bd4c15r13d10l13u9br1p15,15 c7br13d10l12 bu5u1r1u1r2u1d1r1d1l2r1d3u3r4d4u1l1u2l1u2c1r1u1l1r2u1l1r2u1"
RETURN
itemsign:
DRAW "c9r23d19l23u19br5bd4c15r13d10l13u9br1p15,15 c9br13d10l12 "
DRAW "bu2br3c9r4u5l4r1u2c1l1r3l1u1c6l1c9bd2br1d1l2d4l2u3r2br1p9,9bd3c1r2u1bu2bl3c3m+0,0"
RETURN
weaponsign:
DRAW "c8r23d19l23u19br5bd4c15r13d10l13u9br1p15,15 c8br13d10l12 "
DRAW "bu2br1c1u1d1r1u1c6u1d1r1u1c12m+0,0bu1c8h2f5h2u1l1r1d1u2r1duurduurduurduurdc7g5"
RETURN
greywall1:
DRAW "br1c7d19br1c8r7u19l7d18br1p8,8bd1br8c7u8c15m+0,0c7br1r4bd1c8l4d7r4u6bl1p8,8bu4bl4c7u8c15m+0,0br1c7r4bd1c8l4d7r4u6bl1p8,8bd1br3c7u4br1c8r4d4l4u3br1p8,8bd5c7r3l5c15m+0,0c7bd1d6br1c8r4u6l4d5br1p8,8bd3c7r3l5c15m+0,0bd1c7d4br1c8r4u4l4d3br1p8,8"
RETURN
greywall2:
DRAW "br23bl1c7d19bl1c8l7u19r7d18bl1p8,8bd1bl8c7u8c15m+0,0c7bl1l4bd1c8r4d7l4u6br1p8,8bu4br4c7u8c15m+0,0bl1c7l4bd1c8r4d7l4u6br1p8,8bd1bl3c7u4bl1c8l4d4r4u3bl1p8,8bd5c7l3r5c15m+0,0c7bd1d6bl1c8l4u6r4d5bl1p8,8bd3c7l3r5c15m+0,0bd1c7d4bl1c8l4u4r4d3bl1p8,8"
RETURN
greywall3:
DRAW "bd1c7r23c8bd1d5l23u5r22bd1p8,8bd6c15m+0,0bd1c7d3c8bl1l9u4c7r9bd1c8d3u3l8bd1p8,8"
DRAW "bl3bu1l10d3r10u2bl1p8,8bu2c7l9r10c15m+0,0bd1c7d3"
DRAW "bd2l3r9c15m+0,0c7bd1d3bl1c8l8u3r8d2bl1p8,8"
DRAW "bu2bl10l4d3r4u2bl1p8,8bu2c7l3r5c15m+0,0bd1c7d3br13c8u3r5d3l4bu1p8,8bu3c7l1r5"
RETURN
greywall4:
DRAW "bd19bu1c7r23c8bu1u5l23d5r22bu1p8,8bu6c15m+0,0bu1c7u3c8bl1l9d4c7r9bu1c8u3d3l8bu1p8,8"
DRAW "bl3bd1l10u3r10d2bl1p8,8bd2c7l9r10c15m+0,0bu1c7u3"
DRAW "bu2l3r9c15m+0,0c7bu1u3bl1c8l8d3r8u2bl1p8,8"
DRAW "bd2bl10l4u3r4d2bl1p8,8bd2c7l3r5c15m+0,0bu1c7u3br13c8d3r5u3l4bd1p8,8bd3c7l1r5"

RETURN
greywall5:
DRAW "bd19br23bu1bl1c8l22u6r14u12r8d17 bl1p8,8 bd1br1c7l22r22u18 bl10 d8c15d1u1c7l1h3l1c8bu1u4r4d7h4br1p8,8bl2 bl1bu3 c7 d3 c15 u1 c7 l1 u1 l2 u1 l1 br1 c8r2d1 bd3 c7l4 r3bu1c8l3u1r1l1u1bd5d3r10bd1c7r1l11r10bu1c8h2l2u1l5bd1p8,8"
RETURN
greywall6:
DRAW "bd19bu1br1c8r22u6l14u12l8d17 br1p8,8 bd1bl1c7r22l22u18 br10 d8c15d1u1c7r1e3r1c8bu1u4l4d7e4bl1p8,8br2 br1bu3 c7 d3 c15 u1 c7 r1 u1 r2 u1 r1 bl1 c8l2d1 bd3 c7r4 l3bu1c8r3u1l1r1u1bd5d3l10bd1c7l1r11l10bu1c8e2r2u1r5bd1p8,8"
RETURN
greywall7:
DRAW "br23bd1bl1c8l22d6r14d12r8u17 bl1p8,8 bu1br1c7l22r22d18 bl10 u8c15u1d1c7l1g3l1c8bd1d4r4u7g4br1p8,8bl2 bl1bd3 c7 u3 c15 d1 c7 l1 d1 l2 d1 l1 br1 c8r2u1 bu3 c7l4 r3bd1c8l3d1r1l1d1bu5u3r10bu1c7r1l11r10bd1c8g2l2d1l5bu1p8,8"
RETURN
greywall8:
DRAW "bd1br1c8r22d6l14d12l8u17 br1p8,8 bu1bl1c7r22l22d18 br10 u8c15u1d1c7r1f3r1c8bd1d4l4u7f4bl1p8,8br2 br1bd3 c7 u3 c15 d1 c7 r1 d1 r2 d1 r1 bl1 c8l2u1 bu3 c7r4 l3bd1c8r3d1l1r1d1bu5u3l10bu1c7l1r11l10bd1c8f2r2d1r5bu1p8,8"
RETURN
shore1:
RETURN
shore2:
RETURN
shore3:
DRAW "c1b23d5l2u1l2u1l4d1l2d1l1u1l3d1l3u1l6u3br1p1,1bd4c9l1r5d1r5u1r1d1r3u1r2u1r2d1r2d1r3d3l2d1l1u1l2u1l2u"
RETURN
shore4:
RETURN
shore5:
RETURN
shore6:
RETURN
shore7:
RETURN
shore8:
RETURN

sinaria:
DRAW "br11c6r2drl4dlr2u1r2drrdddldlblblblrluluuubr3d1blc0r2brc14dl4udrdrrluuud5l1d2r2ulruc4br1d3lbu1c12ghbd1c4lu3lc14d5"
DRAW "br2 bu1r2br2bd1u5bd5l2c4l2blc14d2rud5lr4l2u5c12rc14rd1ld4bl"
RETURN

bedup:

RETURN
beddown:
RETURN
desk1:
DRAW "c4d19br1c0u19br1c6r18d19l18u18brp6,6bubr18c0d19br1c4u19bl5bd3"
RETURN

desk2:
DRAW "br1"
GOSUB desk1
RETURN
desk3:
GOSUB desk4
RETURN
desk4:
DRAW "c4r23bd1c0l23bd1c6d16r23u16l22bd1p6,6bl1bd15c0r23bd1c4l23"
RETURN
desk5:
DRAW "br23c4d12gdgdglglgl16bu19rbd2blc6d15r15urrurruuruuru11l18ddllbd1p6,6"
RETURN
desk6:
DRAW "c4d12fdfdfrfrfr16bu19lbd2brc6d15l15ullulluuluulu11r18ddrrbd1p6,6"
RETURN
desk7:
RETURN
desk8:
RETURN
savepoint:
DRAW "c9 r23d19l23u19 bd1br1p9,9br5c1rer7frffrdffdfdddgdggdlgglgl7hlhhluhhuhuuueueeureer"'cirlce
DRAW "c9 bd2r9lldlllllrrdr"'toptriangle
DRAW "c1 bl8bd2rrllddrrddllrrbr2uuurudrddlrdbr4uluuubr2dddbr2drrlluurluurr"'save
DRAW "c9 bd6bl1l13bd2br6rdr3l7"'underline

RETURN
treasurechest:
DRAW "c4d19r23u19l23bd1br1p4,4"
DRAW "c6blbud19r23u19d12lllu12ld12lllu12ld12llulu11d13lu13d11ldllu12ld12lllu12ld12lll"
DRAW "bd1br1c12r9br3r9c15dc12d4"
DRAW "c4bluc14uc4uuc14lc4l18c14dc4ddc14rc4r"
RETURN
teranceside:
RETURN
sinariaside:
DRAW "c12r41d48l41u48bdbrp12,12bu1br9c0dl3gdldr3l3gdgdgddfdfdgggdfffddfddfdfrrrefddddl5drllgdlgddgdddddldururrururruuruuuuudddddldddgdduueuuurrfddfddr3eereerrrlddgdueuuurrurrdrrdrfdfd"
DRAW "br10uuuhuuhlhlhulllllgldlghuullllulu9hllu6ehuhuhulldld4gdueu9huuhllbd7llrrffghl bd1 p15,0 bu1 c1dc9m+0,0bu2c13lrrfbu10blc0luuerrrur10drrrdrfrdrdrdrfdddfdddddfdddfdddddfdddgddddffd"
DRAW "c12bu14bl30rdrc4g"'lips
DRAW "br14p6,0bl15bd14p15,0"
DRAW "bd8br25c0r10bhp15,0c15bdl8"
RETURN