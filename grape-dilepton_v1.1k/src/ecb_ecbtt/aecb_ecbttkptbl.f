*     File ecb_ecbtt/aecb_ecbttkptbl.f : Sat Mar 18 19:45:04 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
      subroutine aecb_ecbttkptbl
      implicit real*8(a-h,o-z)

      include 'inclecb_ecbtt1.h'
      include 'inclk.h'
      include 'inclecb_ecbttp.h'
*-----------------------------------------------------------------------
      do 100 i = 1, 4
        pfecb_ecbtt2(i) =  + peecb_ecbtt1(i)
        pfecb_ecbtt4(i) =  + peecb_ecbtt2(i)
        pfecb_ecbtt6(i) =  + peecb_ecbtt1(i) + peecb_ecbtt2(i)
        pfecb_ecbtt8(i) =  - peecb_ecbtt3(i)
        pfecb_ecbtt10(i) =  + peecb_ecbtt1(i) - peecb_ecbtt3(i)
        pfecb_ecbtt12(i) =  + peecb_ecbtt2(i) - peecb_ecbtt3(i)
        pfecb_ecbtt14(i) =  + peecb_ecbtt1(i) + peecb_ecbtt2(i) - peecb_ecbtt3(i)
        pfecb_ecbtt16(i) =  - peecb_ecbtt4(i)
        pfecb_ecbtt18(i) =  + peecb_ecbtt1(i) - peecb_ecbtt4(i)
        pfecb_ecbtt20(i) =  + peecb_ecbtt2(i) - peecb_ecbtt4(i)
        pfecb_ecbtt22(i) =  + peecb_ecbtt1(i) + peecb_ecbtt2(i) - peecb_ecbtt4(i)
        pfecb_ecbtt24(i) =  - peecb_ecbtt3(i) - peecb_ecbtt4(i)
        pfecb_ecbtt26(i) =  + peecb_ecbtt1(i) - peecb_ecbtt3(i) - peecb_ecbtt4(i)
        pfecb_ecbtt28(i) =  + peecb_ecbtt2(i) - peecb_ecbtt3(i) - peecb_ecbtt4(i)
        pfecb_ecbtt30(i) =  + peecb_ecbtt5(i) + peecb_ecbtt6(i)
        pfecb_ecbtt32(i) =  - peecb_ecbtt5(i)
        pfecb_ecbtt34(i) =  + peecb_ecbtt1(i) - peecb_ecbtt5(i)
        pfecb_ecbtt36(i) =  + peecb_ecbtt2(i) - peecb_ecbtt5(i)
        pfecb_ecbtt38(i) =  + peecb_ecbtt1(i) + peecb_ecbtt2(i) - peecb_ecbtt5(i)
        pfecb_ecbtt40(i) =  - peecb_ecbtt3(i) - peecb_ecbtt5(i)
        pfecb_ecbtt42(i) =  + peecb_ecbtt1(i) - peecb_ecbtt3(i) - peecb_ecbtt5(i)
        pfecb_ecbtt44(i) =  + peecb_ecbtt2(i) - peecb_ecbtt3(i) - peecb_ecbtt5(i)
        pfecb_ecbtt46(i) =  + peecb_ecbtt4(i) + peecb_ecbtt6(i)
        pfecb_ecbtt48(i) =  - peecb_ecbtt4(i) - peecb_ecbtt5(i)
        pfecb_ecbtt50(i) =  + peecb_ecbtt1(i) - peecb_ecbtt4(i) - peecb_ecbtt5(i)
        pfecb_ecbtt52(i) =  + peecb_ecbtt2(i) - peecb_ecbtt4(i) - peecb_ecbtt5(i)
        pfecb_ecbtt54(i) =  + peecb_ecbtt3(i) + peecb_ecbtt6(i)
        pfecb_ecbtt56(i) =  - peecb_ecbtt3(i) - peecb_ecbtt4(i) - peecb_ecbtt5(i)
        pfecb_ecbtt58(i) =  - peecb_ecbtt2(i) + peecb_ecbtt6(i)
        pfecb_ecbtt60(i) =  - peecb_ecbtt1(i) + peecb_ecbtt6(i)
        pfecb_ecbtt62(i) =  + peecb_ecbtt6(i)

        pfecb_ecbtt3(i) = - pfecb_ecbtt2(i)
        pfecb_ecbtt5(i) = - pfecb_ecbtt4(i)
        pfecb_ecbtt7(i) = - pfecb_ecbtt6(i)
        pfecb_ecbtt9(i) = - pfecb_ecbtt8(i)
        pfecb_ecbtt11(i) = - pfecb_ecbtt10(i)
        pfecb_ecbtt13(i) = - pfecb_ecbtt12(i)
        pfecb_ecbtt15(i) = - pfecb_ecbtt14(i)
        pfecb_ecbtt17(i) = - pfecb_ecbtt16(i)
        pfecb_ecbtt19(i) = - pfecb_ecbtt18(i)
        pfecb_ecbtt21(i) = - pfecb_ecbtt20(i)
        pfecb_ecbtt23(i) = - pfecb_ecbtt22(i)
        pfecb_ecbtt25(i) = - pfecb_ecbtt24(i)
        pfecb_ecbtt27(i) = - pfecb_ecbtt26(i)
        pfecb_ecbtt29(i) = - pfecb_ecbtt28(i)
        pfecb_ecbtt31(i) = - pfecb_ecbtt30(i)
        pfecb_ecbtt33(i) = - pfecb_ecbtt32(i)
        pfecb_ecbtt35(i) = - pfecb_ecbtt34(i)
        pfecb_ecbtt37(i) = - pfecb_ecbtt36(i)
        pfecb_ecbtt39(i) = - pfecb_ecbtt38(i)
        pfecb_ecbtt41(i) = - pfecb_ecbtt40(i)
        pfecb_ecbtt43(i) = - pfecb_ecbtt42(i)
        pfecb_ecbtt45(i) = - pfecb_ecbtt44(i)
        pfecb_ecbtt47(i) = - pfecb_ecbtt46(i)
        pfecb_ecbtt49(i) = - pfecb_ecbtt48(i)
        pfecb_ecbtt51(i) = - pfecb_ecbtt50(i)
        pfecb_ecbtt53(i) = - pfecb_ecbtt52(i)
        pfecb_ecbtt55(i) = - pfecb_ecbtt54(i)
        pfecb_ecbtt57(i) = - pfecb_ecbtt56(i)
        pfecb_ecbtt59(i) = - pfecb_ecbtt58(i)
        pfecb_ecbtt61(i) = - pfecb_ecbtt60(i)
        pfecb_ecbtt63(i) = - pfecb_ecbtt62(i)
  100 continue

      vnecb_ecbtt2 =  + amass2(1)
      vnecb_ecbtt4 =  + amass2(2)
      vnecb_ecbtt6 =  + 2.0d0*prod(1,2) + amass2(1) + amass2(2)
      vnecb_ecbtt8 =  + amass2(3)
      vnecb_ecbtt10 =  - 2.0d0*prod(1,3) + amass2(1) + amass2(3)
      vnecb_ecbtt12 =  - 2.0d0*prod(2,3) + amass2(2) + amass2(3)
      vnecb_ecbtt14 =  + 2.0d0*prod(1,2) - 2.0d0*prod(1,3) - 2.0d0*
     &      prod(2,3) + amass2(1) + amass2(2) + amass2(3)
      vnecb_ecbtt16 =  + amass2(4)
      vnecb_ecbtt18 =  - 2.0d0*prod(1,4) + amass2(1) + amass2(4)
      vnecb_ecbtt20 =  - 2.0d0*prod(2,4) + amass2(2) + amass2(4)
      vnecb_ecbtt22 =  + 2.0d0*prod(1,2) - 2.0d0*prod(1,4) - 2.0d0*
     &      prod(2,4) + amass2(1) + amass2(2) + amass2(4)
      vnecb_ecbtt24 =  + 2.0d0*prod(3,4) + amass2(3) + amass2(4)
      vnecb_ecbtt26 =  - 2.0d0*prod(1,3) - 2.0d0*prod(1,4) + 2.0d0*
     &      prod(3,4) + amass2(1) + amass2(3) + amass2(4)
      vnecb_ecbtt28 =  - 2.0d0*prod(2,3) - 2.0d0*prod(2,4) + 2.0d0*
     &      prod(3,4) + amass2(2) + amass2(3) + amass2(4)
      vnecb_ecbtt30 =  + 2.0d0*prod(5,6) + amass2(5) + amass2(6)
      vnecb_ecbtt32 =  + amass2(5)
      vnecb_ecbtt34 =  - 2.0d0*prod(1,5) + amass2(1) + amass2(5)
      vnecb_ecbtt36 =  - 2.0d0*prod(2,5) + amass2(2) + amass2(5)
      vnecb_ecbtt38 =  + 2.0d0*prod(1,2) - 2.0d0*prod(1,5) - 2.0d0*
     &      prod(2,5) + amass2(1) + amass2(2) + amass2(5)
      vnecb_ecbtt40 =  + 2.0d0*prod(3,5) + amass2(3) + amass2(5)
      vnecb_ecbtt42 =  - 2.0d0*prod(1,3) - 2.0d0*prod(1,5) + 2.0d0*
     &      prod(3,5) + amass2(1) + amass2(3) + amass2(5)
      vnecb_ecbtt44 =  - 2.0d0*prod(2,3) - 2.0d0*prod(2,5) + 2.0d0*
     &      prod(3,5) + amass2(2) + amass2(3) + amass2(5)
      vnecb_ecbtt46 =  + 2.0d0*prod(4,6) + amass2(4) + amass2(6)
      vnecb_ecbtt48 =  + 2.0d0*prod(4,5) + amass2(4) + amass2(5)
      vnecb_ecbtt50 =  - 2.0d0*prod(1,4) - 2.0d0*prod(1,5) + 2.0d0*
     &      prod(4,5) + amass2(1) + amass2(4) + amass2(5)
      vnecb_ecbtt52 =  - 2.0d0*prod(2,4) - 2.0d0*prod(2,5) + 2.0d0*
     &      prod(4,5) + amass2(2) + amass2(4) + amass2(5)
      vnecb_ecbtt54 =  + 2.0d0*prod(3,6) + amass2(3) + amass2(6)
      vnecb_ecbtt56 =  + 2.0d0*prod(3,4) + 2.0d0*prod(3,5) + 2.0d0*
     &      prod(4,5) + amass2(3) + amass2(4) + amass2(5)
      vnecb_ecbtt58 =  - 2.0d0*prod(2,6) + amass2(2) + amass2(6)
      vnecb_ecbtt60 =  - 2.0d0*prod(1,6) + amass2(1) + amass2(6)
      vnecb_ecbtt62 =  + amass2(6)
      vnecb_ecbtt3 = vnecb_ecbtt2
      vnecb_ecbtt5 = vnecb_ecbtt4
      vnecb_ecbtt7 = vnecb_ecbtt6
      vnecb_ecbtt9 = vnecb_ecbtt8
      vnecb_ecbtt11 = vnecb_ecbtt10
      vnecb_ecbtt13 = vnecb_ecbtt12
      vnecb_ecbtt15 = vnecb_ecbtt14
      vnecb_ecbtt17 = vnecb_ecbtt16
      vnecb_ecbtt19 = vnecb_ecbtt18
      vnecb_ecbtt21 = vnecb_ecbtt20
      vnecb_ecbtt23 = vnecb_ecbtt22
      vnecb_ecbtt25 = vnecb_ecbtt24
      vnecb_ecbtt27 = vnecb_ecbtt26
      vnecb_ecbtt29 = vnecb_ecbtt28
      vnecb_ecbtt31 = vnecb_ecbtt30
      vnecb_ecbtt33 = vnecb_ecbtt32
      vnecb_ecbtt35 = vnecb_ecbtt34
      vnecb_ecbtt37 = vnecb_ecbtt36
      vnecb_ecbtt39 = vnecb_ecbtt38
      vnecb_ecbtt41 = vnecb_ecbtt40
      vnecb_ecbtt43 = vnecb_ecbtt42
      vnecb_ecbtt45 = vnecb_ecbtt44
      vnecb_ecbtt47 = vnecb_ecbtt46
      vnecb_ecbtt49 = vnecb_ecbtt48
      vnecb_ecbtt51 = vnecb_ecbtt50
      vnecb_ecbtt53 = vnecb_ecbtt52
      vnecb_ecbtt55 = vnecb_ecbtt54
      vnecb_ecbtt57 = vnecb_ecbtt56
      vnecb_ecbtt59 = vnecb_ecbtt58
      vnecb_ecbtt61 = vnecb_ecbtt60
      vnecb_ecbtt63 = vnecb_ecbtt62
      return
      end
