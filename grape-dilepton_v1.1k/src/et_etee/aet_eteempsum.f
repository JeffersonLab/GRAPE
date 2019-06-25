*     File et_etee/aet_eteempsum.f : Sat Mar 18 19:45:06 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
*     CF version 
************************************************************************
      subroutine aet_eteempsum(ans)
      implicit real*8(a-h,o-z)
      include 'inclet_etee1.h'
      include 'inclk.h'
      real*8     ans
      complex*16 anc
*-----------------------------------------------------------------------
      jsum = 1
      do 10 ie = 1, net_eteeextn
        jsum = jsum*(jhe(ie) - jhs(ie) + 1)
   10 continue

      anc = 0

*     sum over helicities
      call AgcPol(agc)
      do 100 ind = 0, jsum - 1

*       sum over color bases
        anc = anc  + agc(ind)*conjg(agc(ind))
  100 continue
      ans = cfmtx*anc

      return
      end

