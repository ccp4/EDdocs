# Felix

## Flow

```C
//felixrefine.f90
CALL ReadInpFile(IErr)
CALL read_cif(IErr)
CALL ReadHklFile(IErr)
IF (ISimFLAG.EQ.0) CALL ReadExperimentalImages(IErr)
CALL SetScatteringFactors(IScatterFactorMethodFLAG,IErr)
CALL ReciprocalLattice(IErr)
CALL UniqueAtomPositions(IErr)
// Count the no. of reflections INhkl that make up the pool of g-vectors counted according to their magnitudes and including symmetry equivalents
CALL HKLCount(IHKLMAXValue,RZDirC,INhkl,RHOLZAcceptanceAngle,IErr) // sets INhkl
CALL HKLMake(IHKLMAXValue,RZDirC,RHOLZAcceptanceAngle,IErr)
CALL HKLSort(Rhkl,INhkl,IErr)
CALL HKLList(IErr) //Assign numbers to different reflections -> IOutputReflections, INoOfLacbedPatterns
CALL gVectors(IErr)
CALL StructureFactorInitialisation(IErr)
/*Refinement parameters*/
CALL Simulate(IErr)
IF (ISimFLAG.EQ.1) THEN
  DO ind = 1,IThicknessCount
    CALL WriteIterationOutput(Iter,ind,IErr)
ELSE
  CALL FigureOfMeritAndThickness(Iter,IThicknessIndex,IErr)
SELECT CASE(IRefineMethodFLAG)
  CASE(1) CALL SimplexRefinement
```

## Simulation
### Parallelization
```C
//felix/felixrefine.f90:  
/* MPI initialization*/
CALL MPI_Init(IErr4)
IF(l_alert(INT(REAL(IErr4)),"felixrefine","MPI_Init")) CALL abort
CALL MPI_Comm_rank(MPI_COMM_WORLD,my_rank,IErr4) ! get rank of the current process
IF(l_alert(INT(REAL(IErr4)),"felixrefine","MPI_Comm_rank")) CALL abort
CALL MPI_Comm_size(MPI_COMM_WORLD,p,IErr4) ! get size of the current communicator
IF(l_alert(INT(REAL(IErr4)),"felixrefine","MPI_Comm_size")) CALL abort
CALL message(LS,"total number of MPI ranks ", p, ", screen messages via rank", my_rank)
/* The pixels to be calculated by this core*/
ILocalPixelCountMin= (IPixelTotal*(my_rank)/p)+1
ILocalPixelCountMax= (IPixelTotal*(my_rank+1)/p)
```
### Simulate
```C
//refinement_control.f90
SUBROUTINE Simulate(IErr)
  CALL message(LS,"Bloch wave calculation...")
  DO knd = ILocalPixelCountMin,ILocalPixelCountMax,1
    jnd = IPixelLocations(knd,1)
    ind = IPixelLocations(knd,2)
    CALL BlochCoefficientCalculation(ind,jnd,knd,ILocalPixelCountMin)
    CALL MPI_GATHERV(RIndividualReflections,RSimulatedPatterns)
  // 2*IPixelCount^2 diagonalizations
  DO jnd = 1,2*IPixelCount
    DO knd = 1,2*IPixelCount
      ind = ind+1
      RImageSimi(jnd,knd,:,:) = RSimulatedPatterns(:,:,ind)
```
### Output images

```C
//write_output_mod.f90
DO ind = 1,INoOfLacbedPatterns
  RImageToWrite = RImageSimi(:,:,ind,IThicknessIndex)
  filename = SChemicalFormula "_" hString,kString,lString ".bin"
  DO jnd = 1,2*IPixelCount
    WRITE(IChOutWIImage,rec=jnd) RImageToWrite(jnd,:)  
```


<!-- ############################################################################
  #### BLOCH
############################################################################-->
## Bloch calculation
### def
- `CUgSgMatrix` : matrix to diagonalize
- `CEigenValues,CEigenVectors` : eigen values  and eigen vectors  
- `RIndividualReflections` : intensities
- `IPixelNumber=knd`
- `IPixelCount`: number of pixel defined by user
<!-- - `RDevPara` : $-(2G\cdot\tilde K + G^2\bigr)\sqrt{2(4\pi^2K^2-K_{0}K_{k}^{'})}G/(2\pi K)$ -->

### main
```C
//bloch_mod.f90
SUBROUTINE BlochCoefficientCalculation
  RTiltedK(1)= (REAL(IYPixelIndex,RKIND)-REAL(IPixelCount,RKIND)-0.5)*RDeltaK
  // y-position in k-space
  RTiltedK(2)= (REAL(IXPixelIndex,RKIND)-REAL(IPixelCount,RKIND)-0.5)*RDeltaK
  RTiltedK(3)= SQRT(RBigK**2 - RTiltedK(1)**2 - RTiltedK(2)**2)
  RKn = DOT_PRODUCT(RTiltedK,RNormDirM)
  RkPrime(1)=DOT_PRODUCT(RTiltedK,RgPool(knd,:))/RgPoolMag(knd)
  RkPrime(3) = SQRT(RBigK**2-RkPrime(1)**2)
  RDevPara(knd)=-SIGN(ONE,(2*DOT_PRODUCT(RgPool(knd,:),RTiltedK)+RgPoolMag(knd)**2))*&
                RgPoolMag(knd)*SQRT(2*(RBigK**2-DOT_PRODUCT(Rk0,RkPrime)))/RBigK

  /*CUgSgMatrix=CUgMa*/
  CALL ZGEMM('N','N',INhkl,nBeams,INhkl,CONE,CUgMat, &
            INhkl,CBeamTranspose,INhkl,CZERO,CUgMatPartial,INhkl)
  CALL ZGEMM('N','N',nBeams,nBeams,INhkl,CONE,CBeamProjectionMatrix, &
            nBeams,CUgMatPartial,INhkl,CZERO,CUgSgMatrix,nBeams)

  /*excitation error */
  CALL StrongAndWeakBeamsDetermination(RDevPara,CUgMat)

  CALL EigenSpectrum(nBeams,CUgSgMatrix,CEigenValues,CEigenVectors)
    CALL ZGEEV('N','V', IMatrixDimension, MatrixToBeDiagonalised, IMatrixDimension,&
         EigenValues, 0,1, EigenVectors,IMatrixDimension, &
         CWorkSpace, WorkSpaceDimension, WorkSpace, IErr )
  CALL INVERT(nBeams,CDummyEigenVectors(:,:),CInvertedEigenVectors,IErr)
  DO IThicknessIndex=1,IThicknessCount,1
    CALL CreateWaveFunctions(RThickness,RFullWaveIntensity,&
              INhkl,CEigenVectors,CInvertedEigenVectors,CEigenValues)
    RIndividualReflections(1:INoOfLacbedPatterns,IThicknessIndex,&
            (IPixelNumber-IFirstPixelToCalculate)+1) = &
            RFullWaveIntensity(1:INoOfLacbedPatterns)
```
### Excitation error
```c
//bloch_mod.f90
SUBROUTINE BlochCoefficientCalculation
  DO ind=1,nBeams
    CUgSgMatrix(ind,ind) = TWO*RBigK*RDevPara(IStrongBeamList(ind))/(TWOPI*TWOPI)
  ENDDO
  // ! add the weak beams perturbatively for the 1st column (sumC) and
  // ! the diagonal elements (sumD)
```

### intensity
```C
SUBROUTINE CreateWaveFunctions
  CAlphaWeightingCoefficients = MATMUL(CInvertedEigenVectors,CPsi0)
  DO hnd=1,nBeams     //! This is a diagonal matrix
    CEigenValueDependentTerms(hnd,hnd) = EXP(CIMAGONE*CMPLX(RThickness,ZERO,CKIND)*CEigenValues(hnd))
  CWaveFunctions = MATMUL(MATMUL(CEigenVectors,CEigenValueDependentTerms), CAlphaWeightingCoefficients)
  DO hnd=1,nBeams
     RWaveIntensity(hnd)=CONJG(CWaveFunctions(hnd)) * CWaveFunctions(hnd)
     RFullWaveIntensity(IStrongBeamList(hnd))=RWaveIntensity(hnd)
```

### Strong/weak beam determination
```c
SUBROUTINE StrongAndWeakBeamsDetermination
  RMaxSg = 0.005
  RMinPertStrong=0.0025/RMaxSg// Gives additional beams based on perturbation strength

  CALL message(LXL,dbg7,"Strong Beam List",IStrongBeamList)
  CALL message(LXL,dbg7,"Sg limit for strong beams = ",RMaxSg)
  CALL message(LXL,dbg7,"Smallest strong perturbation strength = ",RMinPertStrong)

  CALL message(LXL,dbg7,"weak beams",SUM(IWeak))
  CALL message(LXL,dbg7,"Smallest weak perturbation strength = ",RMinPertWeak)
  CALL message(LXL,dbg7,"Weak Beam List",IWeakBeamList)
```

## Structure factor
### Pool of reflections
```C
//setup_reflections_mod.f90
SUBROUTINE HKLMake(RTol, IErr)   
  DO Ih=-inda,inda
     DO Ik=-indb,indb
        DO Il=-indc,indc
          CALL SelectionRules(Ih, Ik, Il, ISel, IErr)
          Rhkl(knd,:)=REAL((/ Ih,Ik,Il /),RKIND)
```

### G vectors and miller indices
```C
//crstallography_mod.f90
SUBROUTINE gVectors(IErr)
  //calculate g-vector pool, the magnitudes and component parallel to specimen surface
  DO ind=1,INhkl
    DO jnd=1,ITHREE
      RgPool(ind,jnd) = Rhkl(ind,1)*RarVecM(jnd) + &
          Rhkl(ind,2)*RbrVecM(jnd) + Rhkl(ind,3)*RcrVecM(jnd)
  // Calculate matrix  of g-vectors that corresponds to the Ug matrix
  DO ind=1,INhkl
    DO jnd=1,INhkl
      RgMatrix(ind,jnd,:)= RgPool(ind,:)-RgPool(jnd,:)
```

### Read Coordinates from cif
```C
//read_cif_mod.f90
SUBROUTINE read_cif(IErr)
  f2 = numb_('_atom_site_fract_x', x, sx)
  RBasisAtomPosition(ind,1)= x
  f2 = numb_('_atom_site_fract_y', y, sy)
  RBasisAtomPosition(ind,2)= y
  f2 = numb_('_atom_site_fract_z', z, sz)
  RBasisAtomPosition(ind,3)= z
```

### Read symmetries from cif
```C
//read_cif_mod.f90
SUBROUTINE read_cif(IErr)
! count how many symmetry elements
  f1 = char_('_symmetry_equiv_pos_as_xyz', name)
  ISymCount=ISymCount+1
  IF(loop_ .NEQV. .TRUE.) EXIT

  f1 = char_('_symmetry_equiv_pos_as_xyz', name)
  DO ind=1,ITHREE
    Ipos= SCAN(name, "zZ")
    IF(name(Ipos-2:Ipos-2)=="-") IFRACminus=-1
    RSymVec(ISymCount,ind)=IFRACminus*REAL(Inum)/REAL(Idenom)
    RSymMat(ISymCount, ind,2)=IoneI

```


### Construct all coordinates
```C
SUBROUTINE UniqueAtomPositions(IErr)
  //apply symmetry elements to generate all equivalent positions
  DO ind=1, SIZE(RSymVec,1)  
    DO jnd=1, SIZE(RBasisAtomPosition,1)
      RAllAtomPosition(knd,:)=MATMUL(RSymMat(ind,:,:),RBasisAtomPosition(jnd,:))+ RSymVec(ind,:)
  RAtomPosition(1,:)= RAllAtomPosition(1,:)
  //calculate from Fractional Coordinates and Lattice Vectors
  //In microscope reference frame, in Angstrom units
  DO ind=1,INAtomsUnitCell
    DO jnd=1,ITHREE
      RAtomCoordinate(ind,jnd)= RAtomPosition(ind,1)*RaVecM(jnd) +
                                RAtomPosition(ind,2)*RbVecM(jnd) +
                                RAtomPosition(ind,3)*RcVecM(jnd)

```


### Compute structure factor
```C
//felixrefine.f90
RRelativisticCorrection = ONE/SQRT( ONE - (RElectronVelocity/RSpeedOfLight)**2 )
RElectronWaveVectorMagnitude=TWOPI/RElectronWaveLength
//ug_matrix_mod.f90:
RBigK= SQRT(RElectronWaveVectorMagnitude**2)//!-RMeanInnerPotential)
SUBROUTINE StructureFactorInitialisation(IErr)
  CALL message ( LM, dbg3, "K (Angstroms) = ",RBigK )
  CALL UgMatrix(IErr)

SUBROUTINE UgMatrix(IErr)
  RPreFactor=RRelativisticCorrection/(PI*RVolume)
  DO ind=2,INhkl
    DO jnd=1,ind-1
    RCurrentGMagnitude = SQRT(DOT_PRODUCT(RgMatrix(ind,jnd,:),RgMatrix(ind,jnd,:)))
      DO knd=1,INAtomsUnitCell
        CALL AtomicScatteringFactor(RScatteringFactor,IErr)
        CUgMatNoAbs(ind,jnd)=CUgMatNoAbs(ind,jnd)+
        RPreFactor*RScatteringFactor*EXP(
          CIMAGONE*DOT_PRODUCT(RgMatrix(ind,jnd,:),RAtomCoordinate(knd,:)) )
    CUgMat = CUgMatNoAbs + CUgMatPrime
  CALL message( LM,dbg3, "Ug matrix, without absorption (nm^-2)" )!LM, dbg3
  DO ind = 1,40
    IF(IWriteFLAG.GE.2) WRITE(SPrintString,FMT='(3(I3,1X),A2,1X,6(F7.4,1X,F7.4,2X))') NINT(Rhkl(ind,:)),": ",100*CUgMatNoAbs(ind,1:6)

SUBROUTINE  AtomicScatteringFactor(RScatteringFactor,IErr)    
  SELECT CASE (IScatterFactorMethodFLAG)

  CASE(0) ! Kirkland Method using 3 Gaussians and 3 Lorentzians
    // Kirkland scattering factor is in Angstrom units
    // atomic number and g-vector passed as global variables
    RScatteringFactor = Kirkland(RCurrentGMagnitude)
FUNCTION Kirkland(Rg)
  Rq = Rg / TWOPI
  DO ind = 1,3
    Ra=RScattFactors(ICurrentZ,ind*2-1);
    Rb=RScattFactors(ICurrentZ,ind*2);
    Rc=RScattFactors(ICurrentZ,ind*2+5);
    Rd=RScattFactors(ICurrentZ,ind*2+6);
    Kirkland = Kirkland + Ra/((Rq^2)+Rb) + Rc*EXP(-(Rd*Rq^2))

```

### Write StructureFactors
```C
//write_output_mod.f90
WRITE(filename,*) "StructureFactors.txt"
DO ind = 1,INhkl
  WRITE(IChOut,FMT='(3I5.1,2(1X,F13.9),2(1X,E14.6))') NINT(Rhkl(ind,:)),&
          RgPool(ind,1),RgPool(ind,2),CUgMat(ind,1)
```

## Misc
### read cif file
```C
//read_cif_file_mod.f90
f1 = char_('_chemical_formula_sum', name)
f1 = numb_('_cell_angle_alpha', cela, siga)
f1 = numb_('_symmetry_Int_tables_number',numb,sx)
!get atomic number
!coordinates of the basis
f2 = numb_('_atom_site_fract_x', x, sx)
! count how many symmetry elements
f1 = char_('_symmetry_equiv_pos_as_xyz', name)
```


### read inp file
variables read from felix.inp into `RIndependentVariable`:
```C
//read_files_mod.f90
ILine= ILine+1; READ(IChInp,'(27X,I15.1)',ERR=20,END=30) IWriteFLAG
ILine= ILine+1; READ(IChInp,'(27X,I15.1)',ERR=20,END=30) IPixelCount
//felix/refinementcontrol_mod.f90:        
RConvergenceAngle = RIndependentVariable(ind)
```

### set parameters
```C
//felix/setup_reflections_mod.f90:      
SUBROUTINE ReadHklFile(IErr)
  OPEN(Unit = IChInp,FILE="felix.hkl",STATUS='OLD',ERR=10)
  IHKLSelectFLAG=1
  INoOfLacbedPatterns = ILine
  CALL message ( LXL, dbg7, "Number of experimental images to load = ", INoOfLacbedPatterns)
  RInputHKLs(ILine,1) = REAL(h,RKIND)
  RInputHKLs(ILine,2) = REAL(k,RKIND)
  RInputHKLs(ILine,3) = REAL(l,RKIND)   

SUBROUTINE HKLList( IErr )
  INoOfLacbedPatterns = IFind
//felix/crystallography_mod.f90:!    
RDeltaK = RConvergenceAngle/REAL(IPixelCount,RKIND)
RNormDirM = MATMUL(RTMatO2M,MATMUL(RTMatC2O,RNormDirC))
RNormDirM = RNormDirM/SQRT(DOT_PRODUCT(RNormDirM,RNormDirM))
//felix/felixrefine.f90:  
RDeltaK = TWOPI*RConvergenceAngle/REAL(IPixelCount,RKIND)
```

### refinement
```C
//felixrefine.f90
IF(ISimFLAG.EQ.0) THEN
  IF(IRefineMode(1).EQ.1) THEN // It's a Ug refinement, A
  IF (IRefineMode(3).EQ.1) THEN // Occupancy, C
  INoOfVariables = jnd-1
```

### Debug
In felix.inp, IWriteFLAG can be assigned different INTEGER values to affect which  messages are printed.
The digit of the INTEGER affects the minimum priority of the message printed:
 0 = LS,   2 = LM,   4 = LL,   8 = LXL   

- `IHolzFLAG` : high order laue zone tech(not functional apparently )
- `IBlochMethodFLAG` : using koch method



### Read experimental images (DM3)
