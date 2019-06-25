*     File eub_eubee/aeub_eubeempord.f : Sat Mar 18 19:44:59 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aeub_eubeempord(lvt, avt, iord, at)
      implicit real*8(a-h,o-z)
      include 'incleub_eubee1.h'
      include 'inclk.h'
      integer    lvt(0:neub_eubeeextn), iord(neub_eubeeextn)
      complex*16 avt(0:leub_eubeeag-1), at(0:leub_eubeeag-1)
*
      integer j(neub_eubeeextn), jv(neub_eubeeextn)
*-----------------------------------------------------------------------
      ibas  = 1
      do 10 i = 1, neub_eubeeextn
        jv(iord(i)) = ibas
        ibas    = ibas*lvt(i)
        j(i)    = jhs(i)
   10 continue

      it = 0
  100 continue
        iv = 0
        do 110 i = 1, neub_eubeeextn
          iv = iv +   jv(i)*j(i)
  110   continue

        at(it) = avt(iv)
        it = it + 1

        ii = 1
  120   continue
          j(ii) = j(ii) + 1
          if(j(ii).gt.jhe(ii)) then
            j(ii) = jhs(ii)
            ii = ii + 1
            if(ii.le.neub_eubeeextn) then
              goto 120
            else
              goto 190
            endif
          endif
        goto 100
  190 continue
      return
      end

