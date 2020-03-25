# Overview

Electron diffraction is performed with a monochromatic beam of electrons
with energy $E=100-300keV \approx 0.04-0.02A $. The methods aims at resolving
macromolecular crystals of thickness $L=100-500nm$.
The structure is usually given in a pdb format obtained from the
[protein database](https://www.rcsb.org).

Several approaches exist to model and predict diffraction patterns as outlined
here.

## Projects

- [Multislice](/projects/multislice_simulation)
    - It leverages the semi-analytical solution of Schrodinger's equation
from physical optics principles, i.e. **parabolic approximation (Fresnel diffraction)**.
    - The **potential** $\rho(x,y,z)$ models the electronic density of the structure and has the periodicity of the crystal.
    - **Dynamical diffraction** is naturally accounted for since it is a
 wave description, and it is possible to recover the dynamical theory of
diffraction for thick crystals within the **two beam approximation**.
    - **Inelastic scattering**  modelled through the imaginary part of the potential, i.e. the **inelastic scattering density function**.
    - `does not account for loss of coherency and change of energy (spectral broadening) of the beam.`
- [Near bragg](/projects/nearBragg) :A simple algorithm created by [James Hotlon](https://bl831.als.lbl.gov/~jamesh/nearBragg/) computing the interference patterns of an assembly of scatterers.
    - This can be used to study `mutliple and inelastic scattering`.
- [Scattering](/projects/scattering) : Theoretical framework of the study of scattering in various instances in physics.

## Useful links
- [3D crystal structures](http://lampx.tugraz.at/~hadley/ss2/crystalphysics/crystalclasses/crystalclasses.html)
- [Laue groups](/misc/tables)
