*     File etb_etbee/aetb_etbeemptbl.f : Sat Mar 18 19:45:07 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aetb_etbeemptbl
      implicit real*8(a-h,o-z)
      include 'incletb_etbee1.h'
      include 'incl2.h'
      include 'inclk.h'
      include 'incletb_etbeep.h'
*-----------------------------------------------------------------------
      jgraph = 0

* External lines
      call smextf(loutgo,amuq(3),pfetb_etbee2,ptetb_etbee2r,cfetb_etbee2r)
      exetb_etbee2r(1) = lantip
      call smextf(loutgo,amlp(1),pfetb_etbee4,ptetb_etbee4m,cfetb_etbee4m)
      exetb_etbee4m(1) = lantip
      call smextf(lincom,amuq(3),pfetb_etbee9,ptetb_etbee9r,cfetb_etbee9r)
      exetb_etbee9r(1) = lantip
      call smextf(lincom,amlp(1),pfetb_etbee17,ptetb_etbee17m,cfetb_etbee17m)
      exetb_etbee17m(1) = lantip
      call smextf(loutgo,amlp(1),pfetb_etbee33,ptetb_etbee33m,cfetb_etbee33m)
      exetb_etbee33m(1) = lprtcl
      call smextf(lincom,amlp(1),pfetb_etbee62,ptetb_etbee62m,cfetb_etbee62m)
      exetb_etbee62m(1) = lantip


* Buffer clear for amplitude
      do 200 ih = 0 , letb_etbeeag-1
         agc(ih) = (0.0d0,0.0d0)
  200 continue

      call aetb_etbeempt0

      return
      end
************************************************************************
      subroutine aetb_etbeempt0
      implicit real*8(a-h,o-z)

      include 'incletb_etbee1.h'
      include 'incl2.h'
      include 'inclk.h'
*-----------------------------------------------------------------------
      if(jselg(1) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 1
        call aetb_etbeeg1
      endif

      if(jselg(2) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 2
        call aetb_etbeeg2
      endif

      if(jselg(3) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 3
        call aetb_etbeeg3
      endif

      if(jselg(4) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 4
        call aetb_etbeeg4
      endif

      if(jselg(5) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 5
        call aetb_etbeeg5
      endif

      if(jselg(6) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 6
        call aetb_etbeeg6
      endif

      if(jselg(7) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 7
        call aetb_etbeeg7
      endif

      if(jselg(8) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 8
        call aetb_etbeeg8
      endif

      if(jselg(9) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 9
        call aetb_etbeeg9
      endif

      if(jselg(10) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 10
        call aetb_etbeeg10
      endif

      if(jselg(11) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 11
        call aetb_etbeeg11
      endif

      if(jselg(12) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 12
        call aetb_etbeeg12
      endif

      if(jselg(13) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 13
        call aetb_etbeeg13
      endif

      if(jselg(14) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 14
        call aetb_etbeeg14
      endif

      if(jselg(15) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 15
        call aetb_etbeeg15
      endif

      if(jselg(16) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 16
        call aetb_etbeeg16
      endif

      if(jselg(17) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 17
        call aetb_etbeeg17
      endif

      if(jselg(18) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 18
        call aetb_etbeeg18
      endif

      if(jselg(19) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 19
        call aetb_etbeeg19
      endif

      if(jselg(20) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 20
        call aetb_etbeeg20
      endif

      if(jselg(21) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 21
        call aetb_etbeeg21
      endif

      if(jselg(22) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 22
        call aetb_etbeeg22
      endif

      if(jselg(23) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 23
        call aetb_etbeeg23
      endif

      if(jselg(24) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 24
        call aetb_etbeeg24
      endif

      if(jselg(25) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 25
        call aetb_etbeeg25
      endif

      if(jselg(26) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 26
        call aetb_etbeeg26
      endif

      if(jselg(27) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 27
        call aetb_etbeeg27
      endif

      if(jselg(28) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 28
        call aetb_etbeeg28
      endif

      if(jselg(29) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 29
        call aetb_etbeeg29
      endif

      if(jselg(30) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 30
        call aetb_etbeeg30
      endif

      if(jselg(31) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 31
        call aetb_etbeeg31
      endif

      if(jselg(32) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 32
        call aetb_etbeeg32
      endif

      if(jhiggs .ne. 0) then
      if(jselg(33) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 33
        call aetb_etbeeg33
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(34) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 34
        call aetb_etbeeg34
      endif
      endif

      if(jselg(35) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 35
        call aetb_etbeeg35
      endif

      if(jselg(36) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 36
        call aetb_etbeeg36
      endif

      if(jselg(37) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 37
        call aetb_etbeeg37
      endif

      if(jselg(38) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 38
        call aetb_etbeeg38
      endif

      if(jselg(39) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 39
        call aetb_etbeeg39
      endif

      if(jselg(40) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 40
        call aetb_etbeeg40
      endif

      if(jselg(41) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 41
        call aetb_etbeeg41
      endif

      if(jselg(42) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 42
        call aetb_etbeeg42
      endif

      if(jselg(43) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 43
        call aetb_etbeeg43
      endif

      if(jselg(44) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 44
        call aetb_etbeeg44
      endif

      if(jselg(45) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 45
        call aetb_etbeeg45
      endif

      if(jselg(46) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 46
        call aetb_etbeeg46
      endif

      if(jselg(47) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 47
        call aetb_etbeeg47
      endif

      if(jselg(48) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 48
        call aetb_etbeeg48
      endif

      if(jselg(49) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 49
        call aetb_etbeeg49
      endif

      if(jselg(50) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 50
        call aetb_etbeeg50
      endif

      return
      end
