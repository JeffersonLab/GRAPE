*     File ep_eptt/aep_epttmps.f : Sat Mar 18 19:44:58 2000
*
*     Generated by GRACE (Fortran source code generator)
*         Ver.2.1.5(2) 1998/05/11
*
*     (c)copyright 1990-1998 Minami-Tateya Group, Japan
*-----------------------------------------------------------------------
*
************************************************************************
*             Graph No. 1 - 1
*         Generated No. 1
************************************************************************
      subroutine aep_epttg1
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt15m,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt15m,
     &               ptep_eptt15m,evep_eptt31d,eqep_eptt31d
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt15m(2),ptep_eptt15m(4,3),
     &           evep_eptt31d(lepina),eqep_eptt31d(4,lepina)
      complex*16 cfep_eptt15m(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lintrn*lextrn*lepina)
      complex*16 av8(lextrn*lintrn*lepina)
      complex*16 av9(lextrn*lextrn*lepina)
      complex*16 av10(lextrn*lextrn*lintrn*lextrn)
      complex*16 av11(lextrn*lepina*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt15,
     &      amlp(1)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt31,
     &      ama**2,0.0d0)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(1),pfep_eptt15,vnep_eptt15,exep_eptt15m,
     &            ptep_eptt15m,cfep_eptt15m)
      call smintv(lepina,ama,pfep_eptt31,eqep_eptt31d,evep_eptt31d,
     &            vnep_eptt31,igauab)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt4 electron
*     7(1): pfep_eptt15 electron
*     7(2): pfep_eptt11 photon
      call smffv(lintrn,lextrn,lepina,exep_eptt15m,exep_eptt4m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt15m,cfep_eptt4m,
     &           ptep_eptt15m,ptep_eptt4m,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt15 electron
*     8(1): pfep_eptt17 electron
*     8(2): pfep_eptt31 photon
      call smffv(lextrn,lintrn,lepina,exep_eptt17m,exep_eptt15m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt17m,cfep_eptt15m,
     &           ptep_eptt17m,ptep_eptt15m,eqep_eptt31d,lt8,av8)

*     9(0): pfep_eptt33 tau
*     9(1): pfep_eptt62 tau
*     9(2): pfep_eptt31 photon
      call smffv(lextrn,lextrn,lepina,exep_eptt62o,exep_eptt33o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt62o,cfep_eptt33o,
     &           ptep_eptt62o,ptep_eptt33o,eqep_eptt31d,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,2,3,exep_eptt15m,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt31d,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 6
      indexg(2) = 5
      indexg(3) = 4
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 2

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
************************************************************************
*             Graph No. 2 - 1
*         Generated No. 2
************************************************************************
      subroutine aep_epttg2
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt15m,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt15m,
     &               ptep_eptt15m,evep_eptt31c,eqep_eptt31c
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt15m(2),ptep_eptt15m(4,3),
     &           evep_eptt31c(lepinv),eqep_eptt31c(4,lepinv)
      complex*16 cfep_eptt15m(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lintrn*lextrn*lepina)
      complex*16 av8(lextrn*lintrn*lepinv)
      complex*16 av9(lextrn*lextrn*lepinv)
      complex*16 av10(lextrn*lextrn*lintrn*lextrn)
      complex*16 av11(lextrn*lepinv*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt15,
     &      amlp(1)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt31,
     &      amz**2,amz*agz)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(1),pfep_eptt15,vnep_eptt15,exep_eptt15m,
     &            ptep_eptt15m,cfep_eptt15m)
      call smintv(lepinv,amz,pfep_eptt31,eqep_eptt31c,evep_eptt31c,
     &            vnep_eptt31,igauzb)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt4 electron
*     7(1): pfep_eptt15 electron
*     7(2): pfep_eptt11 photon
      call smffv(lintrn,lextrn,lepina,exep_eptt15m,exep_eptt4m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt15m,cfep_eptt4m,
     &           ptep_eptt15m,ptep_eptt4m,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt15 electron
*     8(1): pfep_eptt17 electron
*     8(2): pfep_eptt31 z
      call smffv(lextrn,lintrn,lepinv,exep_eptt17m,exep_eptt15m,amlp(1),
     &           amlp(1),czll(1,1),cfep_eptt17m,cfep_eptt15m,
     &           ptep_eptt17m,ptep_eptt15m,eqep_eptt31c,lt8,av8)

*     9(0): pfep_eptt33 tau
*     9(1): pfep_eptt62 tau
*     9(2): pfep_eptt31 z
      call smffv(lextrn,lextrn,lepinv,exep_eptt62o,exep_eptt33o,amlp(3),
     &           amlp(3),czll(1,3),cfep_eptt62o,cfep_eptt33o,
     &           ptep_eptt62o,ptep_eptt33o,eqep_eptt31c,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,2,3,exep_eptt15m,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt31c,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 6
      indexg(2) = 5
      indexg(3) = 4
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 2

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
************************************************************************
*             Graph No. 3 - 1
*         Generated No. 3
************************************************************************
      subroutine aep_epttg3
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt26m,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt26m,
     &               ptep_eptt26m,evep_eptt31d,eqep_eptt31d
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt26m(2),ptep_eptt26m(4,3),
     &           evep_eptt31d(lepina),eqep_eptt31d(4,lepina)
      complex*16 cfep_eptt26m(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lextrn*lintrn*lepina)
      complex*16 av8(lintrn*lextrn*lepina)
      complex*16 av9(lextrn*lextrn*lepina)
      complex*16 av10(lextrn*lextrn*lextrn*lintrn)
      complex*16 av11(lextrn*lepina*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt26,
     &      amlp(1)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt31,
     &      ama**2,0.0d0)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(1),pfep_eptt26,vnep_eptt26,exep_eptt26m,
     &            ptep_eptt26m,cfep_eptt26m)
      call smintv(lepina,ama,pfep_eptt31,eqep_eptt31d,evep_eptt31d,
     &            vnep_eptt31,igauab)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt26 electron
*     7(1): pfep_eptt17 electron
*     7(2): pfep_eptt11 photon
      call smffv(lextrn,lintrn,lepina,exep_eptt17m,exep_eptt26m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt17m,cfep_eptt26m,
     &           ptep_eptt17m,ptep_eptt26m,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt4 electron
*     8(1): pfep_eptt26 electron
*     8(2): pfep_eptt31 photon
      call smffv(lintrn,lextrn,lepina,exep_eptt26m,exep_eptt4m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt26m,cfep_eptt4m,
     &           ptep_eptt26m,ptep_eptt4m,eqep_eptt31d,lt8,av8)

*     9(0): pfep_eptt33 tau
*     9(1): pfep_eptt62 tau
*     9(2): pfep_eptt31 photon
      call smffv(lextrn,lextrn,lepina,exep_eptt62o,exep_eptt33o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt62o,cfep_eptt33o,
     &           ptep_eptt62o,ptep_eptt33o,eqep_eptt31d,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,1,4,exep_eptt26m,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt31d,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 6
      indexg(2) = 5
      indexg(3) = 2
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 4

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
************************************************************************
*             Graph No. 4 - 1
*         Generated No. 4
************************************************************************
      subroutine aep_epttg4
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt26m,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt26m,
     &               ptep_eptt26m,evep_eptt31c,eqep_eptt31c
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt26m(2),ptep_eptt26m(4,3),
     &           evep_eptt31c(lepinv),eqep_eptt31c(4,lepinv)
      complex*16 cfep_eptt26m(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lextrn*lintrn*lepina)
      complex*16 av8(lintrn*lextrn*lepinv)
      complex*16 av9(lextrn*lextrn*lepinv)
      complex*16 av10(lextrn*lextrn*lextrn*lintrn)
      complex*16 av11(lextrn*lepinv*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt26,
     &      amlp(1)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt31,
     &      amz**2,amz*agz)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(1),pfep_eptt26,vnep_eptt26,exep_eptt26m,
     &            ptep_eptt26m,cfep_eptt26m)
      call smintv(lepinv,amz,pfep_eptt31,eqep_eptt31c,evep_eptt31c,
     &            vnep_eptt31,igauzb)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt26 electron
*     7(1): pfep_eptt17 electron
*     7(2): pfep_eptt11 photon
      call smffv(lextrn,lintrn,lepina,exep_eptt17m,exep_eptt26m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt17m,cfep_eptt26m,
     &           ptep_eptt17m,ptep_eptt26m,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt4 electron
*     8(1): pfep_eptt26 electron
*     8(2): pfep_eptt31 z
      call smffv(lintrn,lextrn,lepinv,exep_eptt26m,exep_eptt4m,amlp(1),
     &           amlp(1),czll(1,1),cfep_eptt26m,cfep_eptt4m,
     &           ptep_eptt26m,ptep_eptt4m,eqep_eptt31c,lt8,av8)

*     9(0): pfep_eptt33 tau
*     9(1): pfep_eptt62 tau
*     9(2): pfep_eptt31 z
      call smffv(lextrn,lextrn,lepinv,exep_eptt62o,exep_eptt33o,amlp(3),
     &           amlp(3),czll(1,3),cfep_eptt62o,cfep_eptt33o,
     &           ptep_eptt62o,ptep_eptt33o,eqep_eptt31c,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,1,4,exep_eptt26m,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt31c,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 6
      indexg(2) = 5
      indexg(3) = 2
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 4

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
************************************************************************
*             Graph No. 5 - 1
*         Generated No. 5
************************************************************************
      subroutine aep_epttg5
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt43o,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt43o,
     &               ptep_eptt43o,evep_eptt20d,eqep_eptt20d
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt43o(2),ptep_eptt43o(4,3),
     &           evep_eptt20d(lepina),eqep_eptt20d(4,lepina)
      complex*16 cfep_eptt43o(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lintrn*lextrn*lepina)
      complex*16 av8(lextrn*lintrn*lepina)
      complex*16 av9(lextrn*lextrn*lepina)
      complex*16 av10(lextrn*lextrn*lintrn*lextrn)
      complex*16 av11(lextrn*lepina*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt43,
     &      amlp(3)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt20,
     &      ama**2,0.0d0)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(3),pfep_eptt43,vnep_eptt43,exep_eptt43o,
     &            ptep_eptt43o,cfep_eptt43o)
      call smintv(lepina,ama,pfep_eptt20,eqep_eptt20d,evep_eptt20d,
     &            vnep_eptt20,igauab)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt33 tau
*     7(1): pfep_eptt43 tau
*     7(2): pfep_eptt11 photon
      call smffv(lintrn,lextrn,lepina,exep_eptt43o,exep_eptt33o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt43o,cfep_eptt33o,
     &           ptep_eptt43o,ptep_eptt33o,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt43 tau
*     8(1): pfep_eptt62 tau
*     8(2): pfep_eptt20 photon
      call smffv(lextrn,lintrn,lepina,exep_eptt62o,exep_eptt43o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt62o,cfep_eptt43o,
     &           ptep_eptt62o,ptep_eptt43o,eqep_eptt20d,lt8,av8)

*     9(0): pfep_eptt4 electron
*     9(1): pfep_eptt17 electron
*     9(2): pfep_eptt20 photon
      call smffv(lextrn,lextrn,lepina,exep_eptt17m,exep_eptt4m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt17m,cfep_eptt4m,
     &           ptep_eptt17m,ptep_eptt4m,eqep_eptt20d,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,2,3,exep_eptt43o,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt20d,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 4
      indexg(2) = 2
      indexg(3) = 6
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 5

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
************************************************************************
*             Graph No. 6 - 1
*         Generated No. 6
************************************************************************
      subroutine aep_epttg6
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt43o,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt43o,
     &               ptep_eptt43o,evep_eptt20c,eqep_eptt20c
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt43o(2),ptep_eptt43o(4,3),
     &           evep_eptt20c(lepinv),eqep_eptt20c(4,lepinv)
      complex*16 cfep_eptt43o(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lintrn*lextrn*lepina)
      complex*16 av8(lextrn*lintrn*lepinv)
      complex*16 av9(lextrn*lextrn*lepinv)
      complex*16 av10(lextrn*lextrn*lintrn*lextrn)
      complex*16 av11(lextrn*lepinv*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt43,
     &      amlp(3)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt20,
     &      amz**2,amz*agz)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(3),pfep_eptt43,vnep_eptt43,exep_eptt43o,
     &            ptep_eptt43o,cfep_eptt43o)
      call smintv(lepinv,amz,pfep_eptt20,eqep_eptt20c,evep_eptt20c,
     &            vnep_eptt20,igauzb)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt33 tau
*     7(1): pfep_eptt43 tau
*     7(2): pfep_eptt11 photon
      call smffv(lintrn,lextrn,lepina,exep_eptt43o,exep_eptt33o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt43o,cfep_eptt33o,
     &           ptep_eptt43o,ptep_eptt33o,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt43 tau
*     8(1): pfep_eptt62 tau
*     8(2): pfep_eptt20 z
      call smffv(lextrn,lintrn,lepinv,exep_eptt62o,exep_eptt43o,amlp(3),
     &           amlp(3),czll(1,3),cfep_eptt62o,cfep_eptt43o,
     &           ptep_eptt62o,ptep_eptt43o,eqep_eptt20c,lt8,av8)

*     9(0): pfep_eptt4 electron
*     9(1): pfep_eptt17 electron
*     9(2): pfep_eptt20 z
      call smffv(lextrn,lextrn,lepinv,exep_eptt17m,exep_eptt4m,amlp(1),
     &           amlp(1),czll(1,1),cfep_eptt17m,cfep_eptt4m,
     &           ptep_eptt17m,ptep_eptt4m,eqep_eptt20c,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,2,3,exep_eptt43o,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt20c,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 4
      indexg(2) = 2
      indexg(3) = 6
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 5

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
************************************************************************
*             Graph No. 7 - 1
*         Generated No. 7
************************************************************************
      subroutine aep_epttg7
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt53o,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt53o,
     &               ptep_eptt53o,evep_eptt20d,eqep_eptt20d
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt53o(2),ptep_eptt53o(4,3),
     &           evep_eptt20d(lepina),eqep_eptt20d(4,lepina)
      complex*16 cfep_eptt53o(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lextrn*lintrn*lepina)
      complex*16 av8(lintrn*lextrn*lepina)
      complex*16 av9(lextrn*lextrn*lepina)
      complex*16 av10(lextrn*lextrn*lextrn*lintrn)
      complex*16 av11(lextrn*lepina*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt53,
     &      amlp(3)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt20,
     &      ama**2,0.0d0)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(3),pfep_eptt53,vnep_eptt53,exep_eptt53o,
     &            ptep_eptt53o,cfep_eptt53o)
      call smintv(lepina,ama,pfep_eptt20,eqep_eptt20d,evep_eptt20d,
     &            vnep_eptt20,igauab)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt53 tau
*     7(1): pfep_eptt62 tau
*     7(2): pfep_eptt11 photon
      call smffv(lextrn,lintrn,lepina,exep_eptt62o,exep_eptt53o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt62o,cfep_eptt53o,
     &           ptep_eptt62o,ptep_eptt53o,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt33 tau
*     8(1): pfep_eptt53 tau
*     8(2): pfep_eptt20 photon
      call smffv(lintrn,lextrn,lepina,exep_eptt53o,exep_eptt33o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt53o,cfep_eptt33o,
     &           ptep_eptt53o,ptep_eptt33o,eqep_eptt20d,lt8,av8)

*     9(0): pfep_eptt4 electron
*     9(1): pfep_eptt17 electron
*     9(2): pfep_eptt20 photon
      call smffv(lextrn,lextrn,lepina,exep_eptt17m,exep_eptt4m,amlp(1),
     &           amlp(1),call(1,1),cfep_eptt17m,cfep_eptt4m,
     &           ptep_eptt17m,ptep_eptt4m,eqep_eptt20d,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,1,4,exep_eptt53o,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt20d,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 4
      indexg(2) = 2
      indexg(3) = 5
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 6

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
************************************************************************
*             Graph No. 8 - 1
*         Generated No. 8
************************************************************************
      subroutine aep_epttg8
      implicit real*8(a-h,o-z)

      include 'inclep_eptt1.h'
      include 'inclk.h'
      include 'inclep_epttp.h'
*-----------------------------------------------------------------------
      common /amwork/cfep_eptt53o,av6,av7,av8,av9,av10,av11,
     &               evep_eptt11d,eqep_eptt11d,exep_eptt53o,
     &               ptep_eptt53o,evep_eptt20c,eqep_eptt20c
      common /amwori/lt6,lt7,lt8,lt9,lt10,lt11
*     3632 (3632) + 108 (108) bytes used

      integer    lt6(0:3),lt7(0:3),lt8(0:3),lt9(0:3),lt10(0:4),
     &           lt11(0:5)
      real*8     evep_eptt11d(lepina),eqep_eptt11d(4,lepina),
     &           exep_eptt53o(2),ptep_eptt53o(4,3),
     &           evep_eptt20c(lepinv),eqep_eptt20c(4,lepinv)
      complex*16 cfep_eptt53o(2,4)
      complex*16 av6(lextrn*lextrn*lepina)
      complex*16 av7(lextrn*lintrn*lepina)
      complex*16 av8(lintrn*lextrn*lepinv)
      complex*16 av9(lextrn*lextrn*lepinv)
      complex*16 av10(lextrn*lextrn*lextrn*lintrn)
      complex*16 av11(lextrn*lepinv*lextrn*lextrn*lextrn)
      complex*16 atmp
*-----------------------------------------------------------------------

* Denominators of propagators
      aprop = 1.0d0
      call snprpd(pphase,aprop,vnep_eptt11,
     &      ama**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt53,
     &      amlp(3)**2,0.0d0)
      call snprpd(pphase,aprop,vnep_eptt20,
     &      amz**2,amz*agz)

* Internal momenta
      call smintv(lepina,ama,pfep_eptt11,eqep_eptt11d,evep_eptt11d,
     &            vnep_eptt11,igauab)
      call smintf(amlp(3),pfep_eptt53,vnep_eptt53,exep_eptt53o,
     &            ptep_eptt53o,cfep_eptt53o)
      call smintv(lepinv,amz,pfep_eptt20,eqep_eptt20c,evep_eptt20c,
     &            vnep_eptt20,igauzb)

* Vertices (10)

*     6(0): pfep_eptt9 p
*     6(1): pfep_eptt2 p
*     6(2): pfep_eptt11 photon
      call stppv(2212,lextrn,amp,pfep_eptt2,+1,vnep_eptt2,exep_eptt2v,
     &            cfep_eptt2v,ptep_eptt2v,2212,lextrn,amp,pfep_eptt9,-1,
     &            vnep_eptt9,exep_eptt9v,cfep_eptt9v,ptep_eptt9v,22,
     &            lepina,ama,pfep_eptt11,+1,vnep_eptt11,exep_eptt11d,
     &            eqep_eptt11d,capp,lt6,av6)

*     7(0): pfep_eptt53 tau
*     7(1): pfep_eptt62 tau
*     7(2): pfep_eptt11 photon
      call smffv(lextrn,lintrn,lepina,exep_eptt62o,exep_eptt53o,amlp(3),
     &           amlp(3),call(1,3),cfep_eptt62o,cfep_eptt53o,
     &           ptep_eptt62o,ptep_eptt53o,eqep_eptt11d,lt7,av7)

*     8(0): pfep_eptt33 tau
*     8(1): pfep_eptt53 tau
*     8(2): pfep_eptt20 z
      call smffv(lintrn,lextrn,lepinv,exep_eptt53o,exep_eptt33o,amlp(3),
     &           amlp(3),czll(1,3),cfep_eptt53o,cfep_eptt33o,
     &           ptep_eptt53o,ptep_eptt33o,eqep_eptt20c,lt8,av8)

*     9(0): pfep_eptt4 electron
*     9(1): pfep_eptt17 electron
*     9(2): pfep_eptt20 z
      call smffv(lextrn,lextrn,lepinv,exep_eptt17m,exep_eptt4m,amlp(1),
     &           amlp(1),czll(1,1),cfep_eptt17m,cfep_eptt4m,
     &           ptep_eptt17m,ptep_eptt4m,eqep_eptt20c,lt9,av9)

      call smconv(lt6,lt7,3,3,evep_eptt11d,av6,av7,lt10,av10)
      call smconf(lt8,lt10,1,4,exep_eptt53o,av8,av10,lt11,av11)
      call smconv(lt9,lt11,3,2,evep_eptt20c,av9,av11,lt,av)

      sym = + 1.0d0
      cf  = + 1.0d0
      aprop         = cf*sym/aprop

      indexg(1) = 4
      indexg(2) = 2
      indexg(3) = 5
      indexg(4) = 1
      indexg(5) = 3
      indexg(6) = 6

      call aep_epttmpord(lt, av, indexg, agcwrk)

      ancp(jgraph) = 0.0d0
*     nbase = 1
      do 500 ih = 0 , lep_epttag-1
         atmp    = agcwrk(ih)*aprop
         agc(ih) = agc(ih) + atmp
         ancp(jgraph) = ancp(jgraph) + atmp*conjg(atmp)
  500 continue

      return
      end
