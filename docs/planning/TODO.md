# Prority
- Readings  :
    - [ ] review on simulating protein ED
    - [ ] review on multislice small molecule
- Simulation :
    - [ ] simulate rotating crystal
    - [ ] Background scattering from solvent  
    - [ ] ion scattering potential
    - [ ] mosaicity, thermal vibration, defects on protein and compare with data from Gruene
    - [ ] Compare multislice with N-beam Bloch, nearBragg


# Secondary   
## Codes
- Multislice :
    - compile QSTEM3, PyPrismatic, JMUTLIS
- Bloch :
    - pyQt
- nearBragg :
    - angle dependent scattering, multiple scattering
    - compare with Green functions integral within Born approximation

## Readings ED
- Spence Advanced TEM : chap 4
- Kirkland Advanced Computing EM : chap3-4
- Zou2011, Electron Crystallo : chap4-5,9-13+apx
- multislice simus applications : Glaeser&Downing1993
- web material [Bfactor](https://www-structmed.cimr.cam.ac.uk/course.html).

## Explore
- Experimental small molecule resolution

## Methods :
- Patterson method
- Direct method

## misc
- Document theory of scattering : Rutherford, QM perturbative
- Hartree-Fock
- microscope program(actually the image)
- Generalized transfer matrix method for special geometries
- Read and summarize on spectroscopic techniques
- review [ClabbersAbrahams2018](/articles/ClabbersAbrahams2018.pdf)

## other
- multi_2D
    - Bloch
    - BPM/FD with periodic boundary conditions
    - Redo 2-beam Iq at the exact Bragg condition.
    - Redo rocking curves with proper label
    - redo zeta_g, labels h=1,2
- Multislice :
    - biotin
        - run and compare 100+10, 101
        - TDS get wobble parameters
    - Development
        - Documentation with sphinx
        - embedded C
        - smv format
        - multithread fft, no openMP,  no--enable-float
        - solvent scattering
        - defects vacancy, bending, TDS
      - lyzozyme
- misc
  - 1 thread per simulation flag
      - Implement multithreads access to fftw
      - Force 1 thread on splines?
  - integration/spot broadening
  - flux taking Poisson distribution
  - Detector modelling projected intensity at larger angles


  - XDS + dials processing ireloh
  - rfactor transmission with thickness optimization
  - relative thickness dependent correction
  - yana
  - high absorption in X-ray
  - integration rocking curves
  - fft,clipper,bigFFT
  - solvent not in small molecules

  - relativistic mass nearBragg
  - nearBragg brute force figure,pure N**2 with backward scattering
  - phase shift
  - multislice transmission function cmp to multislice run
