*     File ec_ecee/aec_eceemclr.f : Sat Mar 18 19:45:03 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aec_eceemclr
      implicit real*8(a-h,o-z)

      include 'inclec_ecee1.h'
      include 'inclk.h'

           do 300 igr = 0, nec_eceegraph
             ansp(igr) = 0.0d0
  300      continue
           do 310 igr = 1, nec_eceegraph
             ancp(igr) = 0.0d0
  310      continue
           fkcall = 0
           nkcall = 0

      return
      end
