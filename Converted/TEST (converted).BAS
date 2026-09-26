       
thp = 1
hp = 1
       
       
       
        Saver$ = "c:\test.DAT"
        OPEN Saver$ FOR OUTPUT AS #1
        WRITE #1, thp, hp
        WRITE #1, mp, thp, lv
        WRITE #1, str, ine, dex, sta, per, wits
        WRITE #1, ia$, ia, ib, ib$, ic$, ic, id$, id, ie$, ie, ig, ig$, ih$, ih, ii$, ii, ij$, ij, ik, ik$, il$, il, im$, im, in$, in, io, io$
        WRITE #1, oia$, oia, oib, oib$, oic$, oic, oid$, oid, oie$, oie, oig, oig$, oih$, oih, oii$, oii, oij$, oij, oik, oik$, oil$, oil, oim$, oim, oin$, oin, oio, oio$
        WRITE #1, att, dee, rm$, mv, mh
        WRITE #1, sa$, sb$, sc$, sd$, se$, sg$, sh$, si$, sj$, sk$, sl$, sm$, sn$, so$
        CLOSE
SHELL "attrib +r c:\test.dat"