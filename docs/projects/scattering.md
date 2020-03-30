# Scattering


## Theory of scattering

### Quantum mechanical theory

The quantum mechanical theory of scattering is developed by expanding the general
solutions of Schrodinger's equation using the Green's functions. This is derived
into the [Lippmann-Schwinger](https://en.wikipedia.org/wiki/Lippmann%E2%80%93Schwinger_equation)
equation :

\begin{equation}
    \displaystyle\vert{\Psi_{\bb {p} }^{(\pm )}}\rangle =\vert {\phi_{\mathbf {p} }}\rangle +G(E_{p}\pm i\epsilon )V\vert{\Psi_{\bb p}^{(\pm )}}\rangle
\end{equation}

where $\vert\phi_{\bb p}\rangle$ is the original incident state and
$\vert\Psi_{\bb p}\rangle$ is the scattered
state after the particule in state has interacted via the potential $V$.
The Green's function operator $G(E)=(E-H_0)^{-1}$ is obtained from the free
particle Hamiltonian where $H_0\phi_p=E_p\phi_p$.

The [Born approximation](https://en.wikipedia.org/wiki/Born_approximation) is
used as a quantum perturbation technique to simplify this equation where $\phi$
is used in place of $\Psi$ in the right hand side so that the scattering
equation becomes :

\begin{equation}
    \Psi(\bb r)=e^{ikz} + f(\theta)\frac{e^{i\bb k\cdot\bb r}}{|\bb r|}
\end{equation}

where :

\begin{equation}
    f(\theta) = -\frac{2m}{4\pi\hbar^2}\int d^3re^{i\bb q\cdot\bb r}V(r)
\end{equation}

is the [scattering amplitude](https://en.wikipedia.org/wiki/Scattering_amplitude)
obtained as the Fourier transform of the potential.Therefore, in the far field
the diffraction pattern of the deflected incident particles is proportinal to
the scattering amplitude.

The scattering amplitude is related to the differential cross section as :

\begin{equation}
    \frac{d\sigma}{d\Omega} = |f(\theta)|^2
\end{equation}



## Scattering in crystals

### Perfect lattice

For a crystal, the potential is periodic as :

\begin{equation}
    V(\bb r)=\varphi(\bb r)*\sum_{j}\delta(\bb r-\bb r_j)
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

### Lattice with a basis

If the unit cell is made of groups of $N$, located at fractional coordinates
$\bb r_j(x_j,y_j,z_j)$ within the unit cell,
they may arrange in a structure with additional symmetries known as the basis

\begin{equation}
    \phi(\bb r)=\sum_{j=1}^{N} \phi_j(\bb r-\bb r_j)
\end{equation}

In this case the $\varphi(\bb q)=F(\bb q)$ is known as the **structure factor**
and expands as :

\begin{equation}
    F(\bb q)=\sum_{j=1}^{N} f_j(\bb q) e^{-2\pi i\bb q\cdot\bb r_j}
\end{equation}

where $f_j(\bb q)$ is the atomic form factor of each atom within the unit cell.

Further applying the periodicity of the crystal restricts the structure factor
to its values at the miller indices $F_{hkl}$ so that
$\bb q\cdot\bb r_j=hx_j+ky_j+lz_j$.



## Electron scattering

In electron diffraction, scattering occurs via Coulomb forces.

### Coulomb scattering

Historically, it has been studied by [Rutherford](http://hyperphysics.phy-astr.gsu.edu/hbase/rutsca.html) using a [classical description](https://en.wikipedia.org/wiki/Rutherford_scattering) of charged particles.

### Inelastic scattering

Inelastic scattering occurs when a particle is created or one of the colliding particles gets excited to a higher state. From the point of view of the incident electron, this may be considered as inelastic if a fraction of its kinetic energy is given off to the deflecting particle.This would manifest by a recoil of the deflecting particle.
This can be neglected when the mass electron is much smaller than the mass of the deflecting particle.


### quantum mechanics

A quantum mechanical treatment within the Born approximation can be used to determine the X-ray atomic scattering amplitude $f^x$ (see
[Mott](/articles/Mott1930_A.pdf) or [Egerton](/articles/Egerton2009.pdf)) as the Fourier transform of its electron density map.
The latter comes from solving Relativistic Hartree-Fock numerical calculation except for Hydrogen and Helium.
In practice, $f^x$ are commonly fitted using [Gaussian sums](https://it.iucr.org/Cb/ch6o1v0001/) :
\begin{equation}
  f^x(q) = \sum_{i=1}^{4} a_i\exp\left(-b_i\left(\frac{q}{4\pi}\right)^2 \right) + c
\end{equation}

Using Poisson equation, the electron scattering factors $f^e$ can be related to the X-ray atomic scattering factors $f^x$, through the Mott-Bethe formula :
\begin{equation}
  f^e(q) = \frac{1}{2\pi^2 a_0}\frac{Z-f^x}{q^2}  
\end{equation}

Those may be fitted with Gaussian and Lorentzian sums :
\begin{equation}
  f^e(q) = \sum_{i=1}^{3}\frac{a_i}{q^2+b_i} + c_ie^{-d_iq^2}
\end{equation}

Both
[x-ray](/figures/xray_atomic_scattering_factors.svg)
and
[electron](/figures/electron_atomic_scattering_factors.svg)
atomic form factors are shown below for $C,H,N,O,S,P$ :
![](/figures/atomic_form_factors.png)








## Other instances of scattering

### Thomson scattering for X-ray diffraction

For X-ray the electric field of the incident photons interact with the electrons.
This is known as Thomson scattering.
From a classical point of view, the electrons oscillate along the electric field
as $\mathbf p=q\mathbf x=e^2\mathbf E/m\omega^2$
producing a Hertzian dipole radiation $P=\frac{\omega^4}{12\pi\epsilon_0 c^3}|\mathbf p|^2$
leading to a Thomson scattering cross section
$\sigma_{th}=\frac{P}{1/2\epsilon_0c|\mathbf E|^2}$ :

\begin{equation}
    \sigma_{th} = \frac{8\pi}{3}\left(\frac{e^2}{4\pi\epsilon_0 mc^2}\right)^2=\frac{8\pi}{3}r_e^2
\end{equation}

where $r_e=2.818~fm$ is the classical radius of the electron.


### Classical collision

Scattering can be interpreted as collisions between particles through an interacting potential (or force).
The most basic treatment of colliding particles is the classical billiard ball model which corresponds to the case where there is no interacting potential.
The only constraint is that the energy and momentum of the whole system before and after collision must be conserved.

For point-like particles of mass $m_1$, $m_2$ and initial speed $v_1$, $v_2$ the conservation laws yield in 1D :

\begin{eqnarray}
    v_1^{'} &=& v_1 + \frac{2m_2}{m_1+m_2}(v_2-v_1) \\
            &=& v_2 + \frac{m_2-m_1}{m_1+m_2}(v_2-v_1)\\
            &\underset{m_1=m_2}{\rightarrow} & v_2
\end{eqnarray}


\begin{eqnarray}
    \Delta E_c&=&\frac{2m_2m_1}{m_1+m_2}(v_2-v_1) \frac{m_1v_1+m_2v_2}{m_1+m_2} \\
              &\underset{m_1\ll m_2,v_2=0}{\rightarrow}& -2\frac{m_1^2}{m_2}v_1^2 \\
              &\underset{m_1=m_2}{\rightarrow} & \frac{1}{2}m(v_2^2-v_1^2)
\end{eqnarray}

Since the relations are symmetric for particle $1$ and $2$ we can only focus on
the point of view of particle $1$. Note that :

- $v_2=v_1=v$ there can not be any collision so $v_1^{'}=v_1$.
- $m_1=m_2=m$ velocities are simply exchanged to ensure conservation of momentum.
- $m_2\gg m_1$, $v_2=0$
    - $ v_1^{'} \approx v_2-v_1\underset{v_2=0}\rightarrow -v_1$ the particle is reflected.
    - $\Delta E_c/E_c=-4m_1/m_2$ the fraction of energy lost in the collision.
- Energy exchange :
    - $v_2\gt v_1\gt 0$ the energy goes from the fastest particle to the slowest one.
    - $v_2>0>v_1$, the energy goes from the one with largest momentum to the lowest one.



## Diffraction and resolution

The resolution is determined by the number of pixels $N^2$ of the detector
and the distance $D$ of the detector to the crystal.
Since the diffraction image and its DFT contain just as many samples,
then the size of the individual pixel $dp$, the wavelength $\lambda$ of the
beam and the lattice parameters determine the resolution.

Using Bragg's law $2d_{hkl}\sin\theta=m\lambda$ and $d\theta=\lambda/2\min(d_{hkl})$
as the minimum angular spacing necessary to determine the lattice structure
of the crystal, D is determined assuming the scattering angle related with the
position $X=(m,n)dp$ on the detector as $\sin\theta\approx\theta\approx X/D$.
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
