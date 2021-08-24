## week 34
### Monday
- [x] pyscat :
    - collision picture (feels wrong due to coherent decay)
    - scattering cross section of array of scatterers(N*sigma for kp=1.001)

## Tuesday
- [x] pyscat :
  - validity range multislice
  - direct beam scattering multislice  collision


### Pyscat
- [ ] pyscat : Study validity range for multislice (put bw limit back into the pb)
- [ ] python-fortran binding for a_ln to (1000 atoms => 100nm)
- [ ] solve radial equation screened potential numerically
- [ ] Scattering cross section of a regular array up to N=10

- [ ] felix run comparison GaAs
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

- diamond Bloch full exp with pets
    - [ ] check xyz in arbitrary configuration
    - [ ] camel plot (wild even after reducing angular step)
- dummy test case kinematic simulations  (zone axis )

- finish the complete dataset with stepped continuous rotation
- publish the code

- git alias ...
- import dials experiment



### Jose
- lukas : dials doing similar to pets!! running jana from dials processing
- form factor saha
- good quality data with tamir gonen



## TODO
### Christine's internship assignments
- issue#1 Integrate custom spherical harmonics in compute_f
- issue#2 Implement arbitrary distance in linear array and show examples
- issue#3 Exercise on using the translation theorem

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
