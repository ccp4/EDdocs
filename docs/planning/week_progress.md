#week 37
## Monday
- write document summary  

## Tuesday
- nearBragg vs Multi2D review

## Wednesday
- Finish 2-beam+potential_strength effect document summary  
  - Redo 2-beam Iq at the exact Bragg condition.
  - Redo rocking curves with proper label
  - redo zeta_g, labels h=1,2
- finish nearBragg doc
- near bragg 2-layers
- literature
- meeting
## Wednesday
- solvent scattering
- setup bodycentered simu for tilted runs
- 3-beam theory
- defects vacancy, bending, TDS


## TODO
- readings :
    - [ ] small molecule paper
    - [ ] finish ChenDyck1997
    - [ ] mosaicity
- multi_2D
    - [ ] Bloch
    - [ ] BPM/FD with periodic boundary conditions
    - [ ] nearBragg (nanoBragg difference)
    - [ ] tilt
    - [ ] real convolution
- multislice
    - [ ] lyzozyme
    - [ ] smv format

- Multislice :
    - biotin
        - run and compare 100+10, 101
        - TDS get wobble parameters
    - Development
        - Proper tests
        - Documentation with sphinx
        - embedded C
        - check pb propagation with zero coords in slice
        - check large beams intensities at the end when recording intensities
        - multithread fft, no openMP,  no --enable-float
    - Sweep bcc :
        - wobble and long range disorders
        - sampling vs supercell

## misc
- 1 thread per simulation flag
    - Implement multithreads access to fftw
    - Force 1 thread on splines?
- integration/spot broadening
- flux taking Poisson distribution
- Detector modelling projected intensity at larger angles
