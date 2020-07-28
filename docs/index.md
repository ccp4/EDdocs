# CCP4-ED

## Goals
Contribute to the CCP4 Advanced integrated approaches to macromolecular structure determination.

### WP4 BBSRC grant
- Use or develop electron diffraction simulation tools
- Simulate multiple scattering in macromolecular crystals including effects such as mosaicity and disorder
- Identify corrections opportunities at the scaling stage in DIALS

- [Abstract](/planning/abstract.pdf)
- [Presentation 2020-06-29.pdf](/planning/2020-01-29_WP2.pdf) and [Slides](/planning/2020-01-29_WP2.odp)
- [2020-07-17.pdf](/planning/2020-07_RALFT.pdf)

## Latest
- [comparison Holton](/projects/nearBragg/#comparison-with-holton) minor differences : solid_angle, pixel offset, X/Z reverse
- pyNearBragg [green vs Fresnel vs Fraunhofer](/projects/nearBragg/#path-length-estimate)

## Look ahead
- compare nearBragg with multislice : where does nanobragg fit in ?  
- reasonable accuracy in the corrections
- lyzozyme protein
- mosaicity papers + microED paper sizes
- smv format : convert data to smv with nearBragg  
contains intensities, viewer does linear scale mapping  
- continuous rotation integration over steps


## Last week
- CCP4 training : 28/07
- Scaling algorithm
- presentation RAL Friday
- multislice vs Fresnel convolution
- FD
- palatinus charge flip :PEDT (no gonyometre) traditional moving towards    

## Questions
- molecular replacement : model comes from different space group  
- defects : affects dynamical diffraction more  
- Experimental ED for proteins established ? (100 PDB ED data):
    - yonekura membrane ED (not as good as X-ray but even then solved with ED )
    - technology not as advanced as X-ray
- Theoretical:
    - broad effect of dynamical diffraction can be corrected for improving structure determination
    - mosaicity ruled out
    - lattice bending (no systematic)
    - radiation damage
    - biotin(no solvent)
- eBIC : real data for biotin
