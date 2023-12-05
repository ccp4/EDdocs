- ED
  - [x] adapt to external Sw using UBmatrix
  - [ ] uvw given as miller indices in the crystal frame
  - [ ] test for dials,pets,xds
  - [x] rock curve
- edly bug
  - [x] issue#61
  - selenium test + install on remote
- mail palat
- run the nanobragg code

- edtools overview
- sfac check against edtools
- show intensities redistribution by properly calculating the kinematic intensities.
- redo the orientation check script between dyngo and ccp4ED
- sigma/a^2

### dips
- [x] more finely sliced
- [x] larger angles
- [x] larger thicknesses
- [x] check weird simu
- [x] other molecules

# week 32
- [ ] prepare process script biotin
- [x] get simulated frames in the viewer
- [x] fix the path error message when importing (change_path best option so far)
- [x] improve memory and speed by reading structure factor from file
- [ ] Run the full high res simu and save frames for 5 different thicks

# week 29
## Thursday
- interesting read on observation of Anderson localization using photonic crystals
- Interesting fabrication of photonic crystal using (REVERSIBLE) photorefractive effect to change the refractive index of a material
- FELIX
- Silicon on edly
- T-matrix at high energy and phase shift stuffs
- plot 2D HEED bloch wave inside the crystal !!!
- python lib compute coulomb phase shifts

# week 23
## Friday
- FovsFc reflections
- Silicon run
- solve ith felix
- run on clusters
- produce rocking curves for all reflections
- server :
  - virtual screen for selenium
- tests :
  - select_reflection
  - zenodo
  - Rfactor
  - other coverage elements

## Thursday
- beanland meeting

## TODO
- thoroughly test edly :
- proper install guide of edly locally
- tests and code coverage stfc-cloud
- occasional bugs
- fix pets import
- COOT
- revive felix solver option
- ML Schrodinger M Folkes
- PWT Archie Howie

1 : more simulated datasets
2 : feed it to the ccp4 pipeline (including dials pipeline)
3 : think how the sim data can be used for training ML for scaling






### Dyngo
- run Dyngo with Glycine
    - [x] check excitation errors :
      - [x] setup test for comparison
      - [x] values are different even with u=-latvec.dot(uvw)
      - [x] redo equivalence demo for Rx(alpha).Ry(beta) and uvw
      - [x] started comparing gcart
      - [x] excitation errors are very close from bw and dyngo (latvec.T.dot(uvw) was necessary)
      - [x] Sg*2k/sqrt(1+gi/K) makes a significant difference
      - [x] use this Sg
      - [x] check Felix excitation error(looks ridiculous)
      - [x] fixed gi/K into gn/Knorm makes a significant difference
    - [x] compare matrix
    - [x] check structure factor :
      - [x] Ug = U/(sqrt(1+gi)sqrt(1+gj))
      - [x] check prefactor
    - [x] include all necessary beams with corresponding flag
    - [x] check intensities (factor inside the exponent)
        - [x] fix all allint negative int
    - [ ] understand scale from pets
    - [ ] sweep thickness
    - [ ] comparison  


### Website
- COOT
- release v5 + tests
- traffic analysis
- export data

### qc
- understand reconfigurable optical circuits
- VQE recap

### pytest
- [ ] wallpp
- [ ] multislice
- [ ] extend the gui

### Felix:
- [ ] adapt cif file for wrapper
- [ ] adapt to continuousED and CBED
- [ ] CBED and continuous ED line

### priority
- [ ] Felix code adapted to CED
- [ ] document and test+cov the code
- [ ] pyscat corrections

### minor
- [ ] plane wave isoE vs blochwave
- TDutils :
    - adapt to matplotlib 3.5
    - document
- pytest
    - jupyter notebook example with all features
    - be able to run the test (convet tests from jupy tests)
    - put the examples in the documentation too
    - pytest-sugar

### misc
- [x] felix run comparison GaAs
- [ ] python-multem
- [ ] use wallpp for bloch_vs_multi in cmm 2beams case
- [ ] wallpp for cbs

- unit_tests
- notebooks :
    - [ ] multi2D vs bloch
    - [ ] nearBragg
- [ ] I(z,u,ds) ( integrated path using excitation error)
- [ ] check structure factors  
- [ ] bloch kinematic figures and integration with pets
- [ ] charge flip
- [ ] GF in full potential
- [ ] questaal/pySCF
- [ ] many-body : Hartree-Fock, Thomas-Fermi, Lindhard, Bohm  

- diamond Bloch full exp with pets
    - [ ] check xyz in arbitrary configuration
    - [ ] camel plot (wild even after reducing angular step)
- dummy test case kinematic simulations  (zone axis )

- finish the complete dataset with stepped continuous rotation
- publish the code

- git alias ...
- import dials experiment

### Pyscat
- [ ] pyscat : Study validity range for multislice (put bw limit back into the pb)
- [ ] python-fortran binding for a_ln to (1000 atoms => 100nm)
- [ ] solve radial equation screened potential numerically
- [ ] Scattering cross section of a regular array up to N=10

### viewers :
- command search
- multislice clean patterns files finding
- hkl click

### Glycine
- glycine padding study
- extract info from jana compare with multislice
- compare MULTEM with TEMSIM - Glycine
- mosaicity and rocking

jupy :
    - multi_2D
    - TDS, partial coherency,
    - blochwave

speculation based on physical simulations
NB vs multislice
Thickness
structure solution from numerical simulation data

### multi2D
  - [ ] no periodic boundary condition
  - [ ] integration study(on 3 beam configuration) --Rfactor
  - [ ] elaborate on bonding effect in the multislice 2D
  - [ ] partial coherency
  - [ ] inelastic scattering

###others
- ireloh :
  - find excitation errors for ireloh
  - zone axis image
  - find centre of mass of crystal

- simulate 10 different thicknesses integrated by integration software
normalize where the values with zero thickness (kinematic regime)
- use TDS for the crystal

### Jose
- lukas : dials doing similar to pets!! running jana from dials processing
- form factor saha
- good quality data with tamir gonen
