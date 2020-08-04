#week32
#Monday
- coursera week 4



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
- **1 thread per simulation flag**
    - Implement multithreads access to fftw
    - Force 1 thread on splines?
- integration/spot broadening
- flux taking Poisson distribution
- Detector modelling projected intensity at larger angles
