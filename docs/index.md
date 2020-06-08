# CCP4-ED

## Latest


## Look ahead
- nanobragg for mosaicity
- simulate biotin (using gemmi)
- **1 thread per simulation flag**
    - [ ] Implement multithreads access to fftw
    - [ ] Force 1 thread on splines?
- **Non ortho grid**
    - [ ] kirkland last edition + reference in section 6.7
- .smv format
- integration may increase spot broadening
- convert to flux taking Poisson distribution
- Detector modelling projected intensity at larger angles

## Last week
- **wobble and long range disorders**
  - [Doc](/projects/scattering/#thermal-effects) and implementation
  - [Application](/projects/multislice/applications/#wobble-effect)
- **1 thread per simulation flag**
    - Checked code : openMP for splines, nthreads=1 for fftw
- **Non ortho grid**
    - from papers : bR is orthorombic(Abrahmas,Glaeser altough 120deg from pdb reference + not full) and P4_32_12(Spence)

## Questions
- {==Solving structure from defects etc...?==}
