# Advanced computing in electron microscopy

## Chap 6 Theory

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
-----               |----           |---------                             
Number of beams $N$ | Fourier components at the FFT stage | Fourier components of the potential
Storage scales as   | $N$           | $N^2$     
computer time as    | $N\log_2(N)$  | $N^3$     

![bloch_vs_MS](/figures/Kirkland2010_BlochvsMS.png)


### Bloch waves

Assumptions :

- Elastic scattering : $E$ is constant at the incident electron energy.
- High energy approximation of collimated incident beam : $k_0\approx|\bb k_j|\gg|\bb G|$ hence ignoring backscattering.
- Continuity at the interface for individual beams : $\bb k_j=(k_0+\gamma_j)\bb e_z $.
- Small angle approximation : $\gamma_j^2\ll 2\gamma_j(\bb k_0+\bb G)\cdot \bb e_z$

Eigen value equation in $\gamma_j$ :
\begin{equation}
  2k_0S_{\bb G}C_{j,\bb G} + \sum_{\bb G^{'}}V_{\bb G-\bb G^{'}}C_{j,\bb G^{'}} = 2k_0\gamma_jC_{j,\bb G}
\end{equation}

where $S_{\bb G}= k_0-|\bb k_0+\bb G|$ is the excitation error and $C_{j,\bb G}$ is the component of eigen vector $j$ related to the contribution of reciprocal lattice vector (or beam) $\bb G$.

Using the boundary conditions that the incident wave is along $\bb G=\bb 0$ gives :

\begin{equation}
  \Psi(x,y,z) = \sum_{\bb G}S_{\bb G,0}\exp^{(\bb G+\bb k_0)\cdot\bb r}
\end{equation}

 where $\bb S=\bb C\bb e^{2i\pi\boldsymbol{\gamma}}\bb C^{-1}$ is known as the scattering matrix.

### Howie Whelan
