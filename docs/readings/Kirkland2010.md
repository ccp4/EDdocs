# Advanced computing in electron microscopy

## Chap5 Thin specimens

### Phase grating approximation
- The specimen potential is very small compare to the accelerating potential : $k_s\approx k_z(1+\sigma\nu_z(x,y))$ where $k_z=2\pi/\lambda_0$ is the wave number of the accelerating potential and $\sigma=2\pi me\lambda/h^2$ the interaction parameter.
- The specimen is thin enough so that the effect of the potential can be summarized as an accumulated projected potential along the beam direction $\nu_z(x,y)=\int V(x,y,z)dz$.

### weak phase object
Since the interaction parameter $\sigma\approx 0.9$ the phase shift due to the projected potential of light atoms is usually quite small $\approx 0.4rad$ for Carbone at $r\approx 0.1A$. As a result they may be considered as weak phase objects.
However the potential exhibits a singularity in real space due to the atomic nucleus so the phase shift may be large if the incident beam passes very close to the nucleus.

electron density $r^2\rho(r)$ | 3D potential $V(r)$ | projected potential $\nu_z(r)$
------| ------| -----
[<img src="/readings/kirkland2010/5_density.png" width="220">](kirkland2010/5_density.png) | [<img src="/readings/kirkland2010/5_potential.png" width="220">](kirkland2010/5_potential.png) | [<img src="/readings/kirkland2010/5_projected_potential.png" width="220">](kirkland2010/5_projected_potential.png)

The [atomic scattering factor](/projects/scattering/#electron-scattering) can be calculated within the Born approximation which will be obtained from a simple Fourier transform. The projected potential can therefore conveniently be deduced using the Fourier projection theorem.

However, a proper calculation based on Moliere shows that the atomic scattering factor within the Born approximation makes significant errors in the phase of the scattered electrons especially at large scattering angles where the effect of the nucleus dominates which is actually the region where the neglected effect of bonding is most relevant.
Applying the Born approximation for the atomic scattering amplitudes assumes that the atoms are weak phase objects.

Born approximation for C,Si,Cu,Au,U | Moliere vs Born approximation for Gold
-------------------|--------------
[<img src="/readings/kirkland2010/born_fq.png" width="300" />](/readings/kirkland2010/born_fq.png) | [<img src="/readings/kirkland2010/moliere_fq.png" width="300" />](/readings/kirkland2010/moliere_fq.png)


### Image of thin specimens
Projected atomic potentials | Image intensities
------------------          | --------------
[<img src="/readings/kirkland2010/thin_specimen_real.png" width="300" />](/readings/kirkland2010/thin_specimen_real.png) | [<img src="/readings/kirkland2010/thin_specimen_image.png" width="300" />](/readings/kirkland2010/thin_specimen_image.png)





## Chap6 Theory
Electron scattering is accounted for by solving Schrodinger's equation :
\begin{equation}
  \Big\{ \frac{\hbar^2}{2m_0}\grad^2 + V(\bb r) \Big\}\Psi(\bb r) = E\Psi(\bb r)
\end{equation}

which is only an approximation of Dirac's equation the electron spin is neglected and relativistic effects not considered (accurate up to $1MeV$ electron beam if the energy/wavelength of the electron already takes into account relativistic effects).
The magnetic field due to the lenses can be ignored since it affects the electron path over a $1mm$ distance despite being $\approx 1T$.


### ED modelling history
Date      |Name              |Advance
-----     |----              |---------                             
1928      | Davisson,Bethe   | Electron diffraction exp,theory
1957      | Cowley,Moodie    | Multislice approach
1959,1962 | Fujimoto,Sturkey | Scattering matrix Bloch
1961      | Howie,Whelan     | Dynamical theory non crystal based
1972,1979 | O,Keefe          | Multislice:First computer implementation SHRLI
1978      | Glaeser,van Dyck | Path integral formulation
1978,1987 | Cowley,Kirkland  | Multi-slice CBED, ADF-STEM
1983      | Kilaas           | Real space multislice

### Notes
Prop                |Multislice     |Bloch   
-----               |----           |-------
Number of beams $N$ | Fourier components at the FFT stage | Fourier components of the potential
Storage scales as   | $N$           | $N^2$     
Computer time as    | $N\log_2(N)$  | $N^3$     

Bloch(up) vs mutlislice(down) | CPU time
-----               |----
[<img src="/readings/kirkland2010/blochvsmult.png" width="350">](/readings/kirkland2010/blochvsmult.png) | [<img src="/readings/kirkland2010/cpuBlochMultislice.png" width="350">](/readings/kirkland2010/cpuBlochMultislice.png)



### Bloch waves
Assumptions :

- Elastic scattering : $E$ is constant at the incident electron energy.
- High energy approximation of collimated incident beam : $k_0\approx|\bb k_j|\gg|\bb G|$ hence ignoring backscattering.
- Continuity at the interface for individual beams : $\bb k_j=(k_0+\gamma_j)\bb e_z $.
- Small angle approximation : $\gamma_j^2\ll 2\gamma_j(\bb k_0+\bb G)\cdot \bb e_z$

Eigen value equation in $\gamma_j$ :
\begin{eqnarray}
  2k_0S_{\bb G}C_{j,\bb G} + \sum_{\bb G^{'}}V_{\bb G-\bb G^{'}}C_{j,\bb G^{'}} &=& 2k_0\gamma_jC_{j,\bb G} \\
  S_{\bb G}C_{j,\bb G}     + \sum_{\bb G^{'}}\frac{V_{\bb G-\bb G^{'}}}{2k_0} C_{j,\bb G^{'}} &=& \gamma_jC_{j,\bb G}
\end{eqnarray}

where $2k_0S_{\bb G}=k_0^2-|\bb k_0+\bb G|^2=-2\bb k_0\cdot\bb G-|\bb G|^2\approx -2k_0G_z$ is the excitation error and $C_{j,\bb G}$ is the component of eigen vector $j$ related to the contribution of reciprocal lattice vector (or beam) $\bb G$.

Using the boundary conditions that the incident wave is a plane wave solely along the $\bb G=\bb 0$ direction enables to compute the wave function at the other boundary through a transfer matrix formalism :
\begin{equation}
  \Psi(\bb r_{xy},T) = e^{2i\pi k_0T}\sum_{\bb G}\bb S_{\bb G,0}e^{2i\pi G_z T}e^{2i\pi\bb G_{xy}\cdot\bb r_{xy}}
\end{equation}

 where $T$ is the thickness,
 $\bb S=\bb C\bb e^{2i\pi\boldsymbol{\gamma_j}T}\bb C^{-1}$ 
 is the scattering matrix.
 The far field diffraction pattern is then obtained from standard Fourier transform since it corresponds to propagation in free space. As a result $S_{\bb G0}^2$ can readily be identified as the diffraction intensity of beam $\bb G$.  

### Fast electron wave equation
Using constant high energy collimated electrons, i.e. $\Psi_f=\Psi(x,y,z)e^{ik_0z}$ and slow varying envelope, i.e. $\dP^2_{z}\ll 2ik_0\dP_z$ assumptions, Schrodinger's equation reduces to:

\begin{equation}
  \frac{\dP\Psi(x,y,z)}{\dP_z} =
    \Big\{\frac{i\lambda}{4\pi}\grad^2_{xy} + i\sigma V(x,y,z)\Big\} \Psi(x,y,z)
\end{equation}

where $\sigma=2\pi me\lambda/h^2$.

### Howie Whelan
Assuming period potential and looking for solutions $\Psi(\bb r)=\sum_{\bb G}\phi_{\bb G}(z)e^{i\bb G\cdot\bb r}$ reduces to the  system of differential equations :
\begin{equation}
  \frac{\dP\phi_{\bb G}(x)}{\dP_z} =
      2\pi S_{\bb G}\phi_{\bb G}(z)
      + i\sigma\sum_{\bb G^{'}}V_{\bb G-\bb G^{'}}\phi_{\bb G^{'}}(z)
\end{equation}

### Multislice
See [multislice](/projects/multislice/#method)



## Chap7 Applications

see [multislice](/projects/multislice/#application-examples)

## Chap8 The programs
atompot+mulslice | autoslic Si[100]
------|-------
[<img src="/readings/kirkland2010/mulslice.png" width="200"/>](/readings/kirkland2010/mulslice.png) | [<img src="/readings/kirkland2010/autoslic.png" width="200"/>](/readings/kirkland2010/autoslic.png)

### atompot and mulslic
These codes are essentially described in [temsim](/projects/multislice/temsim)
### autoslic
Used for non periodic specimen :

- The slices are computed automatically from the input file *.xyz*.
- The projected potential is directly computed in real space.
