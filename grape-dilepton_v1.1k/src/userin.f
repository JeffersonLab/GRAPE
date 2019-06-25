*     File userin.f : Sat Mar 18 19:44:57 2000
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
** defined in all.fin
      subroutine userin( lu )
      implicit real*8(a-h,o-z)
      include 'inclm.h'
      include 'inclc.h'
      include './inc/graepia.h'
      parameter (mxextn = 10)
* charge(*3) and KFcode of external particles
      common /kminfo/ kcharg(mxextn), kfcode(mxextn)
      complex*16  ctmp
*=======================================================================
*          parameters for amplitude calculation
*=======================================================================
*         ============= Set global parameters
           call usrprm
*         =============
*         ============= default mass and width
           call setmas
*         =============
*         ============= modification of mass and width
           call modmas
*         =============
*         ============= coupling constants
           call amparm
*         =============
*         ============= interface to kinem
           call gfinit
*         =============
*=======================================================================
*          initialization of kinematics
*=======================================================================
*         =================
           if ((process.GE.1).and.(process.LE.3)) then
              call kinit_4f( lu )
            else
              write(6,*) '!!!Error!!! : unknown process(=',process,')'
              write(6,*) ' ---> Good By!'
              STOP
           endif
*         =================
           if     (KF_Lbeam .EQ. -11) then
             write(6,*) '>>> e+ beam'
             write(6,*) ' '
           elseif (KF_Lbeam .EQ.  11) then
             write(6,*) '>>> e- beam'
             write(6,*) ' '
             do i = 1, 3
               call(1,i) = -call(1,i)   
               call(2,i) = -call(2,i)
               ctmp = czll(1,i)         
               czll(1,i) = -czll(2,i)
               czll(2,i) = -ctmp
             enddo
             kfcode(2) = -kfcode(2)
             kfcode(4) = -kfcode(4)
             kfcode(5) = -kfcode(5)
             kfcode(6) = -kfcode(6)
           else
             write(6,*) '!!!Error in USERIN!!!'
             write(6,*) '  ---> Unknown KF-code of lepton beam ='
     &                                                     ,KF_Lbeam
             write(6,*) '  ---> Good By!'
             STOP
           endif
      return
      end