*     File mainbs.f : Sat Mar 18 19:44:57 2000
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
* main program for BASES 5.1
      implicit real*8(a-h,o-z)
      common /amjprc/jproc
      include './inc/graepia.h'
      integer          ISPRING
       common /TA_USR/ ISPRING
      call START_GRAPE(1)
      ISPRING = 0
      print_flag = 1
      call Read_Cards(17,'grape.cards')
      call Write_cards
      call Get_Proc
      call get_Graph_flag
      if(jproc .eq. 1) then
          call mnbsep_epee
      endif
      if(jproc .eq. 2) then
          call mnbsep_epmm
      endif
      if(jproc .eq. 3) then
          call mnbsep_eptt
      endif
      if(jproc .eq. 4) then
          call mnbsep_eXee
      endif
      if(jproc .eq. 5) then
          call mnbsep_eXmm
      endif
      if(jproc .eq. 6) then
          call mnbsep_eXtt
      endif
      if(jproc .eq. 7) then
          call mnbseu_euee
      endif
      if(jproc .eq. 8) then
          call mnbseu_eumm
      endif
      if(jproc .eq. 9) then
          call mnbseu_eutt
      endif
      if(jproc .eq. 10) then
          call mnbseub_eubee
      endif
      if(jproc .eq. 11) then
          call mnbseub_eubmm
      endif
      if(jproc .eq. 12) then
          call mnbseub_eubtt
      endif
      if(jproc .eq. 13) then
          call mnbsed_edee
      endif
      if(jproc .eq. 14) then
          call mnbsed_edmm
      endif
      if(jproc .eq. 15) then
          call mnbsed_edtt
      endif
      if(jproc .eq. 16) then
          call mnbsedb_edbee
      endif
      if(jproc .eq. 17) then
          call mnbsedb_edbmm
      endif
      if(jproc .eq. 18) then
          call mnbsedb_edbtt
      endif
      if(jproc .eq. 19) then
          call mnbses_esee
      endif
      if(jproc .eq. 20) then
          call mnbses_esmm
      endif
      if(jproc .eq. 21) then
          call mnbses_estt
      endif
      if(jproc .eq. 22) then
          call mnbsesb_esbee
      endif
      if(jproc .eq. 23) then
          call mnbsesb_esbmm
      endif
      if(jproc .eq. 24) then
          call mnbsesb_esbtt
      endif
      if(jproc .eq. 25) then
          call mnbsec_ecee
      endif
      if(jproc .eq. 26) then
          call mnbsec_ecmm
      endif
      if(jproc .eq. 27) then
          call mnbsec_ectt
      endif
      if(jproc .eq. 28) then
          call mnbsecb_ecbee
      endif
      if(jproc .eq. 29) then
          call mnbsecb_ecbmm
      endif
      if(jproc .eq. 30) then
          call mnbsecb_ecbtt
      endif
      if(jproc .eq. 31) then
          call mnbseb_ebee
      endif
      if(jproc .eq. 32) then
          call mnbseb_ebmm
      endif
      if(jproc .eq. 33) then
          call mnbseb_ebtt
      endif
      if(jproc .eq. 34) then
          call mnbsebb_ebbee
      endif
      if(jproc .eq. 35) then
          call mnbsebb_ebbmm
      endif
      if(jproc .eq. 36) then
          call mnbsebb_ebbtt
      endif
      if(jproc .eq. 37) then
          call mnbset_etee
      endif
      if(jproc .eq. 38) then
          call mnbset_etmm
      endif
      if(jproc .eq. 39) then
          call mnbset_ettt
      endif
      if(jproc .eq. 40) then
          call mnbsetb_etbee
      endif
      if(jproc .eq. 41) then
          call mnbsetb_etbmm
      endif
      if(jproc .eq. 42) then
          call mnbsetb_etbtt
      endif
      include 'main_usr_foot.h'
      end