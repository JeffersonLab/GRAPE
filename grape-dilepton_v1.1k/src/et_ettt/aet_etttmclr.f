*     File et_ettt/aet_etttmclr.f : Sat Mar 18 19:45:07 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aet_etttmclr
      implicit real*8(a-h,o-z)

      include 'inclet_ettt1.h'
      include 'inclk.h'

           do 300 igr = 0, net_etttgraph
             ansp(igr) = 0.0d0
  300      continue
           do 310 igr = 1, net_etttgraph
             ancp(igr) = 0.0d0
  310      continue
           fkcall = 0
           nkcall = 0

      return
      end
