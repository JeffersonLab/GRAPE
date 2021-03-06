*     File snprpd.f : Sat Mar 18 19:45:13 2000
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
************************************************************************
      subroutine snprpd(pphase, aprop, amomq, amassq, amag)
      implicit real*8(a-h,o-z)
      complex*16 pphase, aprop
      real*8     amomq, amassq, amag
      common /chcntl/ jwidth, jtgamm
*    calculate denominator of propagator.
*     pphase : input  : phase of the propagator
*     aprop  : in/out : product of denominator of propagators.
*     amomp  : input  : square of mementum.
*     amassq : input  : square of mass.
*     amag   : input  : mass * width.
*-----------------------------------------------------------------------
      if (amomq .gt. 0) then
          if(jwidth .eq. 0) then
              if(amassq .eq. 0.0d0) then
                  wid=0.d0
              else
                  wid=amag/amassq*amomq
              end if
              aprop = pphase*aprop*dcmplx(amomq - amassq, wid)
          else
              aprop = pphase*aprop*dcmplx(amomq - amassq, amag)
          endif
      else
        aprop = pphase*aprop*dcmplx(amomq - amassq, 0.0d0)
      endif
*     call ctime('smprpd')
      return
      end
