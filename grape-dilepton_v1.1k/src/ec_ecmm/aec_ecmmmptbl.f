*     File ec_ecmm/aec_ecmmmptbl.f : Sat Mar 18 19:45:03 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aec_ecmmmptbl
      implicit real*8(a-h,o-z)
      include 'inclec_ecmm1.h'
      include 'incl2.h'
      include 'inclk.h'
      include 'inclec_ecmmp.h'
*-----------------------------------------------------------------------
      jgraph = 0

* External lines
      call smextf(lincom,amuq(2),pfec_ecmm2,ptec_ecmm2q,cfec_ecmm2q)
      exec_ecmm2q(1) = lprtcl
      call smextf(loutgo,amlp(1),pfec_ecmm4,ptec_ecmm4m,cfec_ecmm4m)
      exec_ecmm4m(1) = lantip
      call smextf(loutgo,amuq(2),pfec_ecmm9,ptec_ecmm9q,cfec_ecmm9q)
      exec_ecmm9q(1) = lprtcl
      call smextf(lincom,amlp(1),pfec_ecmm17,ptec_ecmm17m,cfec_ecmm17m)
      exec_ecmm17m(1) = lantip
      call smextf(loutgo,amlp(2),pfec_ecmm33,ptec_ecmm33n,cfec_ecmm33n)
      exec_ecmm33n(1) = lprtcl
      call smextf(lincom,amlp(2),pfec_ecmm62,ptec_ecmm62n,cfec_ecmm62n)
      exec_ecmm62n(1) = lantip


* Buffer clear for amplitude
      do 200 ih = 0 , lec_ecmmag-1
         agc(ih) = (0.0d0,0.0d0)
  200 continue

      call aec_ecmmmpt0

      return
      end
************************************************************************
      subroutine aec_ecmmmpt0
      implicit real*8(a-h,o-z)

      include 'inclec_ecmm1.h'
      include 'incl2.h'
      include 'inclk.h'
*-----------------------------------------------------------------------
      if(jselg(1) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 1
        call aec_ecmmg1
      endif

      if(jselg(2) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 2
        call aec_ecmmg2
      endif

      if(jselg(3) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 3
        call aec_ecmmg3
      endif

      if(jselg(4) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 4
        call aec_ecmmg4
      endif

      if(jselg(5) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 5
        call aec_ecmmg5
      endif

      if(jselg(6) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 6
        call aec_ecmmg6
      endif

      if(jselg(7) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 7
        call aec_ecmmg7
      endif

      if(jselg(8) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 8
        call aec_ecmmg8
      endif

      if(jselg(9) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 9
        call aec_ecmmg9
      endif

      if(jselg(10) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 10
        call aec_ecmmg10
      endif

      if(jselg(11) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 11
        call aec_ecmmg11
      endif

      if(jselg(12) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 12
        call aec_ecmmg12
      endif

      if(jhiggs .ne. 0) then
      if(jselg(13) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 13
        call aec_ecmmg13
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(14) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 14
        call aec_ecmmg14
      endif
      endif

      if(jselg(15) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 15
        call aec_ecmmg15
      endif

      if(jselg(16) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 16
        call aec_ecmmg16
      endif

      if(jselg(17) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 17
        call aec_ecmmg17
      endif

      if(jselg(18) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 18
        call aec_ecmmg18
      endif

      if(jhiggs .ne. 0) then
      if(jselg(19) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 19
        call aec_ecmmg19
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(20) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 20
        call aec_ecmmg20
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(21) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 21
        call aec_ecmmg21
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(22) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 22
        call aec_ecmmg22
      endif
      endif

      if(jhiggs .ne. 0) then
      if(igauzb .ne. 0) then
      if(jselg(23) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 23
        call aec_ecmmg23
      endif
      endif
      endif

      if(jselg(24) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 24
        call aec_ecmmg24
      endif

      if(jselg(25) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 25
        call aec_ecmmg25
      endif

      if(jhiggs .ne. 0) then
      if(jselg(26) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 26
        call aec_ecmmg26
      endif
      endif

      if(jselg(27) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 27
        call aec_ecmmg27
      endif

      if(jselg(28) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 28
        call aec_ecmmg28
      endif

      if(jhiggs .ne. 0) then
      if(jselg(29) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 29
        call aec_ecmmg29
      endif
      endif

      if(jselg(30) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 30
        call aec_ecmmg30
      endif

      if(jselg(31) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 31
        call aec_ecmmg31
      endif

      if(jselg(32) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 32
        call aec_ecmmg32
      endif

      if(jselg(33) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 33
        call aec_ecmmg33
      endif

      if(jhiggs .ne. 0) then
      if(jselg(34) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 34
        call aec_ecmmg34
      endif
      endif

      if(jhiggs .ne. 0) then
      if(jselg(35) .ne. 0) then
        jgraph = jgraph + 1
        igraph(jgraph) = 35
        call aec_ecmmg35
      endif
      endif

      return
      end
