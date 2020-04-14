# Scattering


## Theory of scattering

### Quantum mechanical theory

The quantum mechanical theory of scattering is developed by expanding the general solutions of Schrodinger's equation using Green's functions formalism. This results in the
[Lippmann-Schwinger](https://en.wikipedia.org/wiki/Lippmann_Schwinger_equation)
equation :

\begin{equation}
    \displaystyle\vert{\Psi_{\bb {p} }^{(\pm )}}\rangle =\vert {\phi_{\mathbf {p} }}\rangle +G(E_{p}\pm i\epsilon )V\vert{\Psi_{\bb p}^{(\pm )}}\rangle
\end{equation}

where $\vert\phi_{\bb p}\rangle$ is the incident state and
$\vert\Psi_{\bb p}\rangle$ is the state of the scattered particle after  interacting via potential $V$.
The Green's function operator $G(E)=(E-H_0)^{-1}$ is obtained from the free particle Hamiltonian where $H_0\phi_p=E_p\phi_p$.

The [Born approximation](https://en.wikipedia.org/wiki/Born_approximation) is a quantum perturbation technique often used to allow for an analytical treatment. The incident state $\phi$ is used in place of $\Psi$ in the right hand side so that the scattering equation can readily be solved as :
\begin{equation}
    \Psi(\bb r)=e^{ikz} + f(\theta)\frac{e^{i\bb k\cdot\bb r}}{|\bb r|}
\end{equation}

where :

\begin{equation}
    f(\theta) = -\frac{2me}{h^2}\int d^3re^{i\bb q\cdot\bb r}V(r)
~~\mbox{,     }~~
    \frac{d\sigma}{d\Omega} = |f(\theta)|^2
\end{equation}

is the [scattering amplitude](https://en.wikipedia.org/wiki/Scattering_amplitude) in Angstroms.
obtained as the [Fourier transform of the potential](#atomic-form-factor).
In the Born approximation the far field diffraction pattern is therefore proportional to the square of the scattering amplitude which is known as the differential cross section $\sigma$.





## Scattering in crystals

### Perfect lattice

For a crystal, the potential is periodic as :

\begin{equation}
    V(\bb r)=\varphi(\bb r)* \sum_{j}\delta(\bb r-\bb r_j)
\end{equation}

where $r_j$ are the repeated positions of the origin of the unit cell and
$\varphi$ is the potential wihtin the unit cell.
Using the Born approximation (the diffraction pattern should be proportinal
to the Fourier transform of the potential) results in :

\begin{equation}
    \Psi(\bb q)=\varphi(\bb q)\sum_{j}\exp^{-i\bb q\cdot\bb R_j}
\end{equation}

which, if the sum is infinite, has non negligible values for $\bb q$ when
$\bb q\cdot\bb R_j=2m\pi$. Considering $\bb a_i$ as the lattice vectors,
this condition is obtained for $\bb q=\bb K=\sum h_i\bb a_i^{\star}$ with
$\bb a_i^{\star}\cdot\bb a_j=2\pi$ when $i=j$ and
$\bb a_i^{\star}\cdot\bb a_j=0$ when $i\neq j$.

In 3D, this is guaranteed with the following vectors
\begin{equation}
    \bb a_1^{\star}=2\pi\frac{\bb a_2\times\bb a_3}{\bb a_1\cdot (\bb a_2\times\bb a_3)},
    \bb a_2^{\star}=2\pi\frac{\bb a_3\times\bb a_1}{\bb a_2\cdot (\bb a_3\times\bb a_1)},
    \bb a_3^{\star}=2\pi\frac{\bb a_1\times\bb a_2}{\bb a_3\cdot (\bb a_1\times\bb a_2)}
\end{equation}

which therefore define the reciprocal lattice.

If the unit cell is made of a single atom, then $\varphi(\bb q)=f(\bb q)$ is
the scattering amplitude of the atom which is called the **atomic form factor**.

### Structure factor

If the unit cell is made of groups of $N$, located at fractional coordinates
$\bb r_j(x_j,y_j,z_j)$ within the unit cell,
they may arrange in a structure with additional symmetries known as the basis

\begin{equation}
    \varphi(\bb r)=\sum_{j=1}^{N} \varphi_j(\bb r-\bb r_j)
\end{equation}

In this case the reciprocal space potential $\varphi(\bb q)$ is known as the **structure factor** $F(\bb q)$ and expands as :

\begin{equation}
    F(\bb q)=\sum_{j=1}^{N} f_j(\bb q) e^{-2\pi i\bb q\cdot\bb r_j}
\end{equation}

where $f_j(\bb q)$ is the atomic form factor of each atom within the unit cell.

Further applying the periodicity of the crystal restricts the structure factor
to its values at the miller indices $F_{hkl}$ so that
$\bb q\cdot\bb r_j=hx_j+ky_j+lz_j$.



## Electron scattering
In electron diffraction, scattering occurs via Coulomb forces. The nucleus of atoms dominates at large angle scattering angles which corresponds to [Rutherford scattering](/misc/particle_scattering/#coulomb-scattering).

### Inelastic scattering
Inelastic scattering occurs when a particle is created or one of the colliding particles gets excited to a higher state. From the point of view of the incident electron, this may be considered as inelastic if a fraction of its kinetic energy is given off to the deflecting particle.This would manifest by a recoil of the deflecting particle.
This can be neglected when the mass electron is much smaller than the mass of the deflecting particle.

### Atomic form factors
A quantum mechanical treatment within the Born approximation can be used to determine the X-ray atomic scattering amplitude $f^x$ (see
[Mott](/articles/Mott1930_A.pdf) or
[Egerton](/articles/Egerton2009.pdf))
as the Fourier transform of its electron density map.
The latter comes from solving **Relativistic Hartree-Fock** numerical calculation except for Hydrogen and Helium.

In practice, $f^x$ are commonly fitted using
[Gaussian sums](https://it.iucr.org/Cb/ch6o1v0001/) ($q=\sin(\theta)/\lambda$) :
\begin{equation}
  f^x(q) = \sum_{i=1}^{4} a_i\exp\left(-b_iq^2 \right) + c
\end{equation}

Using Poisson equation, the electron scattering factors $f^e$ can be related to the X-ray atomic scattering factors $f^x$, through the **Mott-Bethe formula** :
\begin{equation}
  f^e(q) = \frac{1}{2\pi^2 a_0}\frac{Z-f^x(q)}{q^2}  
\end{equation}

which may be fitted (see for comparison for
[carbon](/figures/MottBethe.svg))
with Gaussian and Lorentzian sums :
\begin{equation}
  f^e(q) = \sum_{i=1}^{3}\frac{a_i}{q^2+b_i} + c_ie^{-d_iq^2}
\end{equation}

Atomic form factors are shown below for $C,H,N,O,S,P$ :

X-ray  | Electron
-------|-----------
[<img src="/figures/xray_atomic_scattering_factors.svg" width="360"/>](/figures/xray_atomic_scattering_factors.svg) | [<img src="/figures/electron_atomic_scattering_factors.svg" width="360"/>](/figures/electron_atomic_scattering_factors.svg)




## Diffraction and resolution

The resolution is determined by the number of pixels $N^2$ of the detector and the distance $D$ of the detector to the crystal.
Since the diffraction image and its DFT contain just as many samples, then the size of the individual pixel $dp$, the wavelength $\lambda$ of the beam and the lattice parameters determine the resolution.

Using Bragg's law $2d_{hkl}\sin\theta=m\lambda$ and $d\theta=\lambda/2\min(d_{hkl})$ as the minimum angular spacing necessary to determine the lattice structure of the crystal, D is determined assuming the scattering angle related with the position $X=(m,n)dp$ on the detector as $\sin\theta\approx\theta\approx X/D$.
The resolution is then obtained from the size of the detector $dx\approx\lambda/\Delta\theta=\lambda D/Ndp$.

For example for a 1D crystal with lattice constant $a=100A$, a $4k\times 4k$ electron detector such as
[DE16](http://www.directelectron.com/products/de-16/)
with $dp=6.5\mu m$ and a 300keV electron beam :

- $D = \frac{a}{\lambda}2dp \approx 20000 dp=13cm$ : shorter wavelength with respect to the lattice constant require the detector to be further away which is mitigated with small pixel size which can accommodate small scattering angles.
- $dx\approx 2a/N=0.05 A$ the maximum achievable resolution with this setup which is also the Shannon-Nyquist theorem.

The reason the wavelength does not appear any more in the resolution is because it has already been used in determining the minimum distance of the detector to the crystal. Moving the detector further away reduces the maximum angle $\Delta\theta$ the detector can intercept and therefore the resolution and the intensity of the detected spots. It is necessary in practice as the finiteness of the crystal broadens the Bragg spots which would overlap them if the reciprocal resolution is too low.
