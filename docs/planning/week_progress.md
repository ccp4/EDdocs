#week 26
## Monday
- nearBragg : attempt 2 layer diffraction
- latychevskaia2019 : analytical for elastic scattering only

## Tuesday
- multislice:
    - run and compare 100+10, 101
    - TDS get wobble parameters
- readings :
    - small molecule paper
    - finish ChenDyck1997
- propagation green's func + cascaded Fresnel convolution on real pb


#TODO
- Multislice :
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
