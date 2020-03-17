# Projects 


Electron diffraction is performed with a monochromatic beam of electrons 
with energy $E=100-300keV \approx 0.04-0.02A $. The methods aims at resolving
macromolecular crystals of thickness $L=100-500nm$.
The structure is usually given in a pdb format obtained from the 
[protein database](https://www.rcsb.org).

Several approaches exist to model and predict diffraction patterns as outlined 
here.



### Near bragg

A simple algorithm created by [James Hotlon](https://bl831.als.lbl.gov/~jamesh/nearBragg/)
computing the interference patterns of an assembly of scatterers.
More info can be found [here](/projects/nearBragg).

This can be used to study `mutliple and inelastic scattering`.


### Multislice approach

Since $L/\lambda \approx 10^6$ and the crystal might be $L^3$, it
is completely impractical to attempt solving the wave equation with a 
standard beam propagation method(BPM) and even less with a eigen value 
solver. 

`Periodic boundary conditions would at least be necessary. `


The multislice approach [Cowley&Moodie,1957](/articles/CowleyMoodie1957.pdf) 
solves Schrodinger's equation by succcesively finding the analytical 
solution of the electron wave function at each slice.
It leverages the semi-analytical solution of Schrodinger's equation 
from physical optics principles, i.e. **parabolic approximation (Fresnel diffraction)**.


The crystal is described by a **classical potential** $\rho(x,y,z)$ which 
models the electronic density of the structure and has the periodicity 
of the crystal. 

**Dynamical diffraction** is naturally accounted for since it is a
 wave description, and it is possible to recover the dynamical theory of 
diffraction for thick crystals within the **two beam approximation**.

**Inelastic scattering** is modeled through the imaginary part of the 
potential, i.e. the **inelastic scattering density function** which 
acts as a damping factor on the wave function. 
`Though, it does not account for loss of coherency and change of energy (spectral broadening) of the beam.`


### Scattering 

In electron diffraction, scattering occurs via Coulomb forces.
Historically, it has been studied by [Rutherford](http://hyperphysics.phy-astr.gsu.edu/hbase/rutsca.html) using a [classical description](https://en.wikipedia.org/wiki/Rutherford_scattering) of charged particles.
Inelastic scattering is the result of the incident electron giving off a fraction of its energy to the deflecting particle which manifests in a recoil of that particle.
This can be neglected if the mass electron is much smaller than that of the deflecting particle.



### Diffraction and resolution 

The resolution is determined by the number of pixels $N^2$ of the detector 
and the distance $D$ of the detector to the crystal.
Since the diffraction image and its DFT contain just as many samples,
then the size of the individual pixel $dp$, the wavelength $\lambda$ of the 
beam and the lattice parameters determine the resolution.

Using Bragg's law $2d_{hkl}\sin\theta=m\lambda$ and $d\theta=\lambda/2\min(d_{hkl})$
as the minimum angular spacing necessary to determine the lattice structure 
of the crystal, D is determined assuming the scattering angle related with the 
position $X=(m,n)dp$ on the dedector as $\sin\theta\approx\theta\approx X/D$.
The resolution is then obtained from the size of the detector 
$dx\approx\lambda/\Delta\theta=\lambda D/Ndp$.

For example for a 1D crystal with lattice constant $a=100A$, a 4Kx4K electron detector
such as [DE16](http://www.directelectron.com/products/de-16/) with $dp=6.5\mu m$ 
and a 300keV electron beam :

- $D = \frac{a}{\lambda}2dp \approx 20000 dp=13cm$ : shorter wavelength with respect to the lattice constant require the detector to be further away which is mitigated with small pixel size which can accomodate small scattering angles.
- $dx\approx 2a/N=0.05 A$ the maximum achievable resolution with this setup which is also the Shannon-Nyquist theorem.

The reason the wavelength does not appear anymore in the resolution is because
it has already been used in determining the minimum distance of the detector to 
the crystal. Moving the detector further away reduces the maximum angle $\Delta\theta$
the detector can intercept and therefore the resolution and the intensity of 
the detected spots. It is necessary in practice as the finiteness of the crystal
broadens the bragg spots which would overlap them if the reciprocal resolution is too low. 


