#week 12
## Monday
- qcc presentation
- check glycine reflections


## for the 07/03/2022
- [ ] glycine examples to zenodo

## other
#### Bug fix  
- fix viewer boxes
- index hkl to viewer (no gui)

### gui
- add info
- menus : file(open,save as,close),tool(toggle mode,settings),about(help, shortcuts, bloch simu, multislice simu)
- simulation specific dialog box

### Glycine
- Rkin(keV) for diff thickness (100,1000,200) non zone axis
- Rkin(keV) for different orientations at reasonable thickness
- I(z) mean,min,max intensity discrepancy over z (given orientation and sweet keV)

### pytest:
- [ ] wallpp
- [ ] multislice
- [ ] extend the gui
### Felix:
- [ ] adapt cif file for wrapper
- [ ] adapt to continuousED and CBED
- [ ] CBED and continuous ED line



## TODO
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
  - pattern every 20 slices
  - [ ] clean code
  - [ ] run simulation 1935-1945 and tilt simulation

- [ ] clean website
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
