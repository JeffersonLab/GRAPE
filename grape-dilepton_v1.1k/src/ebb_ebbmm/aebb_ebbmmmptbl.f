*     File ebb_ebbmm/aebb_ebbmmmptbl.f : Sat Mar 18 19:45:06 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aebb_ebbmmmptbl
      implicit real*8(a-h,o-z)
      include 'inclebb_ebbmm1.h'
      include 'incl2.h'
      include 'inclk.h'
      include 'inclebb_ebbmmp.h'
*-----------------------------------------------------------------------
      jgraph = 0

* External lines
      call smextf(loutgo,amdq(3),pfebb_ebbmm2,ptebb_ebbmm2u,cfebb_ebbmm2u)
      exebb_ebbmm2u(1) = lantip
      call smextf(loutgo,amlp(1),pfebb_ebbmm4,ptebb_ebbmm4m,cfebb_ebbmm4m)
      exebb_ebbmm4m(1) = lantip
      call smextf(lincom,amdq(3),pfebb_ebbmm9,ptebb_ebbmm9u,cfebb_ebbmm9u)
      exebb_ebbmm9u(1) = lantip
      call smextf(lincom,amlp(1),pfebb_ebbmm17,ptebb_ebbmm17m,cfebb_ebbmm17m)
      exebb_ebbmm17m(1) = lantip
      call smextf(loutgo,amlp(2),pfebb_ebbmm33,ptebb_ebbmm33n,cfebb_ebbmm33n)
      exebb_ebbmm33n(1) = lprtcl
      call smextf(lincom,amlp(2),pfebb_ebbmm62,ptebb_ebbmm62n,cfebb_ebbmm62n)
      exebb_ebbmm62n(1) = lantip


* Buffer clear for amplitude
      do 200 ih = 0 , lebb_ebbmmag-1
         agc(ih) = (0.0d0,0.0d0)
  200 continue

      call aebb_ebbmmmpt0

      return
      end
************************************************************************
      subroutine aebb_ebbmmmpt0
      implicit real*8(a-h,o-z)

      include 'inclebb_ebbmm1.h'
      include 'incl2.h'
      include 'inclk.h'
*-----------------------------------------------------------------------
      if(jselg(1) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 1
        call aebb_ebbmmg1
      endif

      if(jselg(2) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 2
        call aebb_ebbmmg2
      endif

      if(jselg(3) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 3
        call aebb_ebbmmg3
      endif

      if(jselg(4) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 4
        call aebb_ebbmmg4
      endif

      if(jselg(5) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 5
        call aebb_ebbmmg5
      endif

      if(jselg(6) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 6
        call aebb_ebbmmg6
      endif

      if(jselg(7) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 7
        call aebb_ebbmmg7
      endif

      if(jselg(8) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 8
        call aebb_ebbmmg8
      endif

      if(jselg(9) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 9
        call aebb_ebbmmg9
      endif

      if(jselg(10) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 10
        call aebb_ebbmmg10
      endif

      if(jselg(11) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 11
        call aebb_ebbmmg11
      endif

      if(jselg(12) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 12
        call aebb_ebbmmg12
      endif

      if(jhiggs .ne. 0) then
      if(jselg(13) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 13
        call aebb_ebbmmg13
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(14) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 14
        call aebb_ebbmmg14
      endif
      endif

      if(jselg(15) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 15
        call aebb_ebbmmg15
      endif

      if(jselg(16) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 16
        call aebb_ebbmmg16
      endif

      if(jselg(17) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 17
        call aebb_ebbmmg17
      endif

      if(jselg(18) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 18
        call aebb_ebbmmg18
      endif

      if(jhiggs .ne. 0) then
      if(jselg(19) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 19
        call aebb_ebbmmg19
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(20) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 20
        call aebb_ebbmmg20
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(21) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 21
        call aebb_ebbmmg21
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(22) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 22
        call aebb_ebbmmg22
      endif
      endif

      if(jhiggs .ne. 0) then
      if(igauzb .ne. 0) then
      if(jselg(23) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 23
        call aebb_ebbmmg23
      endif
      endif
      endif

      if(jselg(24) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 24
        call aebb_ebbmmg24
      endif

      if(jselg(25) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 25
        call aebb_ebbmmg25
      endif

      if(jhiggs .ne. 0) then
      if(jselg(26) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 26
        call aebb_ebbmmg26
      endif
      endif

      if(jselg(27) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 27
        call aebb_ebbmmg27
      endif

      if(jselg(28) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 28
        call aebb_ebbmmg28
      endif

      if(jhiggs .ne. 0) then
      if(jselg(29) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 29
        call aebb_ebbmmg29
      endif
      endif

      if(jselg(30) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 30
        call aebb_ebbmmg30
      endif

      if(jselg(31) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 31
        call aebb_ebbmmg31
      endif

      if(jselg(32) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 32
        call aebb_ebbmmg32
      endif

      if(jselg(33) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 33
        call aebb_ebbmmg33
      endif

      if(jhiggs .ne. 0) then
      if(jselg(34) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 34
        call aebb_ebbmmg34
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(35) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 35
        call aebb_ebbmmg35
      endif
      endif

      return
      end
