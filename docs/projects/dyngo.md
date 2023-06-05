# Dyngo

## code walk through



### body
```fortran
CALL Input
CALL FillReflIndex
CALL TiltMat(alpha,beta,omega,corzonephi,corzonetheta,Rmat)
UBtilt=multmat(Rmat,inUB)
IF (tiltcorr) THEN
  tiltnorm=multmat(Rmat,surfnorm)
IF (task==taskint) THEN
  CALL FullPEDCalculation(.true.,generalverbosity) !.true.=we want derivatives
  call CalculateRFactor(dummy,dummy2,.false.)
  CALL Output
    call calculaterfactor(rfac,dummy,.false.)
      DO i=1,TotalRG
        curintobs=ReflList(i)%intobs
        curintcalc=ReflList(i)%int
        Rvalnom=Rvalnom+(curintcalc*bestscale-curintobs)**2/ReflList(i)%sigma**2
        Rvalden=Rvalden+curintobs**2/ReflList(i)%sigma**2
        rfac=100.*sqrt(rvalnom/rvalden)
    write(90,'(a,f12.6)') 'rfactor',rfac
    DO i=1,TotalRG
      IF (ReflList(i)%output) THEN
        write(90,outform)ReflList(i)%hkl(1:SDim),ReflList(i)%int
        write(90,*)
        write(90,'(10e15.6)') ReflList(i)%derivsout(nglobpar+1:npar)
```


### Inputs and preprocess
```Fortran

CALL Input
  ParseCommands !for line 1 and 2
  !line 3: zone number
  !line 4: centro flag, number of parameters
  ! line 5: refinement flag - on F or on I?
  !line 6 to 8: UB
  read(10,'(3f12.6)')(inUB(i,j),j=1,3)
  ! modulation vectors if qvec1,qvec2,qvec3
  !line 9: lambda, F000, omega, gmax, sgmax
  read(InBuffer,'(7f12.6,i6)') wavelength,F0,omega,maxgstrong,strongselectionlimit, outputsgmax, outputprecfrac, phisteps
  !line 10: h k l of the zone, alpha, beta, phi
  read(10,'(6f9.0)') hklzone(1:3),alpha, beta, phi
  alpha=alpha*torad; beta=beta*torad; phi=phi*torad
  !line 11: scale, thickness, xnorm, ynorm, their refkeys
  !line 12: correction of the orientational angles phi and theta
  !Read and count beams
  ! Determine the constant transforming from F to U
  !     U0=F2V*F000(KPhase,1)*6.648405113324489e-3*m0/CellVol(1,KPhase)
  DR=47.877630914194*6.648405113324489e-3
  F2U=DR*m0/CellVol
  ReflList(1)%U=dcmplx(F0*F2U,0.0)
  !allocate reflection list
  !The first reflection will always be 000, define it here
  write(*,*) 'Output Refl:',Noutputrefl
  !     Allocate list of structure factor derivatives
  DO i=2,TotalRG
    !h k l int A B flag
    read(10,rlformat)ReflList(i)%hkl(1:SDim),ReflList(i)%intobs,ReflList(i)%sigma,dummyreal(1),dummyimag(1),ReflList(i)%flag
    ReflList(i)%U=F2U*dcmplx(dummyreal(1), -dummyimag(1))
```

```fortran
CALL FillReflIndex
  call packindices(ReflList(i)%hkl,rinr) !EDdyn_routines.f90
K0=1./wavelength
K=sqrt(K0**2+U0)
CALL TiltMat(alpha,beta,omega,corzonephi,corzonetheta,Rmat)
  CALL RotMat(inbeta,'y',outR)
  CALL RotMat(inalpha,'x',dummyR)
  !Rotate by corrections
  Rmat=multmat(dummyR,outR)
UBtilt=multmat(Rmat,inUB)
!calculate the key values for the def inition of thickness ranges (SHAPE related stuffs)
```

### blochwave
```fortran
SUBROUTINE FullPEDCalculation()
  !Prepare rotation matrix for tilting the crystal by minus phi (equivalent to tilting the beam by phi)
  CALL RotMat(-phi,'y',phiRMat)
  DO thetaindex=0,phisteps-1
    CALL SetupUBForCurrentTheta(thetaindex, phiRMat)
      IF (expintmode==iedtmode) THEN
        curtheta=phi*(float(2*thetaindex+1)/phisteps-1.)
        CALL RotMat(curtheta,'x',ThRMat)
        UBprec=multmat(thRMat, UBtilt)
        cursurfnorm=multmat(thRMat,tiltnorm)
      ENDIF
      UB=UBprec
      Knorm=cursurfnorm(3)*K
    CALL DynamicalIntensities
      CALL GetStrongRefl
        IF ((locg<maxgstrong).or.(locg<maxgweak).or.(ReflList(i)%output)) THEN
          Sg=get_Sg(ReflList(i)%rhkl,locg,UB,K,Knorm,cursurfnorm)
            gcart=multmat(UB,inhkl)
            IF(sgmodel=='k-k+g') THEN
              get_Sg=(inK**2-(gcart(1)**2+gcart(2)**2+(gcart(3)-inK)**2))/(2*inK)
          TotalSR=TotalSR+1
          StrongRefl(TotalSR)%Sg=Sg
          StrongRefl(TotalSR)%gn=sum(cursurfnorm*gfrac)
        call ZHEEVD(COMPZ, UPLO, TotalSR, dca, TotalSR, realdd, CWORK, LCWORK, RWORK, LRWORK, IWORK, LIWORK, INFO)
      CALL StructureMatrix(0,0.0D0)
        sqrtkg=sqrt(1.+StrongRefl(is)%gn/Knorm)
        Sg=StrongRefl(is)%Sg*2.*K/sqrtkg
        strmat(is,is)=Sg
        do js=jsstart,TotalSR
          sqrtkh=sqrt(1.+StrongRefl(js)%gn/Knorm)
          difhkl=StrongRefl(is)%hkl-StrongRefl(js)%hkl
          IF ((all(difhkl<=maxhkl)).and.(all(difhkl>=minhkl))) THEN
            call packindices(difhkl,ripos)
            ri=ReflIndex(ripos)
          ELSE !the reflection is not in the list supplied from Jana. This can happen only when tilt is optimized.
            ri=0
          ENDIF
          strmat(is,js)=ReflList(ri)%U/(sqrtkg*sqrtkh)
      CALL DiagonalizeDCA
        dca=strmat ! dca => Cj
        call ZHEEVD(COMPZ, UPLO, TotalSR, dca, TotalSR, realdd, CWORK, LCWORK, RWORK, LRWORK, IWORK, LIWORK, INFO)
        dd=realdd
      CALL GetIntensities(.false.)
        ci(jj)=dconjg(dca(1,jj))*cdexp(tdpi*imconst*dthick*dd(jj)/(2.*Knorm)) !factor 2*Knorm converts from raw eigenvalue to gamma
        do ij=1,TotalSR
          dcdummy=dca(jj,ij)/StrongRefl(jj)%gnfac
          ct(jj)=ct(jj)+dcdummy*ci(ij)
          BeamVsThick(1,thickloop,jj)=ct(jj) !The beam itself
          StrongRefl(jj)%beam=StrongRefl(jj)%beam+thickweight*BeamVsThick(1,thickvarpos,jj)
          StrongRefl(jj)%int=StrongRefl(jj)%int+thickweight*abs(BeamVsThick(1,thickvarpos,jj))**2
      CALL SumIntensities
        DO i=1,TotalSR
          ReflList(StrongRefl(i)%index)%int=ReflList(StrongRefl(i)%index)%int+StrongRefl(i)%int
    !scale
    DO i=1,TotalRG
      ReflList(i)%int=scale*ReflList(i)%int/(phisteps*cbedstepnr)
    IF (wantderivatives) CALL Derivatives
```
