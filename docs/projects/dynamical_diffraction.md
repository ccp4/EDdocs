# Theory of Dynamical Diffraction

{% set figs='/figures/dynamical_diffraction/' %}


## Bloch wave
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




## Applications
### 2-beam configuration

In [Bloch theory](/readings/Kirkland2010/#bloch-waves) using 2 beams approximation gives the intensity as :
\begin{equation}
  I_{dyn-2}(w_g;t,\xi_{\bb g}) = \left(\frac{\pi t}{\xi_{\bb g}}\right)^2
    sinc^2\left(\frac{t}{\xi_{\bb g}}\sqrt{1+w_{\bb g}^2}\right)
\end{equation}
where :

- $\xi_{\bb g}=k_0/U_{\bb g}$ is the Pendellosung thickness (in $A$) with $k_0=1/\lambda$ being the wave number.
- $w_{\bb g}=S_g\xi_g$ is the excitation error scaled by $\xi_g$.
- $U_{\bb g}=2me/h^2 v_{\bb g}=F_{\bb g}/\cc V_{cell}$ is the form factor Fourier component (in $A^{-2}$).

### kinematic approximation

The intensity of a Bragg spot can be established as :
\begin{equation}
  I_{kin}(S_g;t,v_g) = \left(\sigma v_g t\right)^2 sinc^2\left(S_gt\right)
\end{equation}
where :

- $S_g$ is the excitation error which is another notation for $q=\sin\theta/\lambda$.
- $t$ is the thickness.
- $\sigma$ the interaction parameter (in $rad/kVA$).
- $v_g$ the Fourier components (in $V$).

### Comparison 2-beam vs kinematic

Since $\sigma v_g=\pi/\xi_g$ one can see that for $S_G=0$ the 2-beam intensity reduces to kinematic limit case for small thickness :
\begin{equation}
  I(0;t,\xi_g) = \left(\frac{\pi t}{\xi_g}\right)^2 sinc^2\left(\frac{t}{\xi_g}\right)
    \underset{t\ll\xi_g}{\rightarrow}
      \left(\frac{\pi t}{\xi_g}\right)^2
\end{equation}

Taking the arbitrary values $K=100A^{-1}$, $U_g=0.1A^{-2}$ gives a Pendullosung thickness $\xi_g=1000 A$ with patterns illustrated below for $t=100 A$ and $t=500A$.

1  | 2
-- | --
[<img src="{{figs}}kin_dyn0.svg" width="350" /> ]({{figs}}kin_dyn0.svg) | [<img src="{{figs}}kin_dyn.svg" width="350" />]({{figs}}kin_dyn.svg)

1) I(0) kin vs dyn 2-beam $\xi_g=1000 A$ and
2) I(w) kin vs dyn 2-beam.


 1  | 2  
--- | ------
[![]({{figs}}Iint_kin_dynR.svg)]({{figs}}Iint_kin_dynR.svg) | [![]({{figs}}Iint_kin_dyn.svg)]({{figs}}Iint_kin_dyn.svg)

1) 2-beam rocking curves as function of thickness and
2) 2-beam(red) and kinematic(blue) integrated rocking curves as function of thickness. $\xi_g=500A$






<!--
#################################################################################
                                      Collison
#################################################################################
 -->
## Collision approach
{% set figsB='/figures/nearBragg/' %}

The probabilities of an electron to undergo $m$ elastic collisions and $n$ inelastic collisions of mean free path $l_i$ after going through a specimen of length $z$ follows the Poisson distribution :
\begin{equation}
  P_{mn}(z) =
    \frac{1}{m!}\left(\frac{z}{l_e}\right)^me^{-z/l_e}
    \frac{1}{n!}\left(\frac{z}{l_i}\right)^ne^{-z/l_i}
\end{equation}
where

- $l_e=1/\sigma_e\rho$ is the average elastic collision mean free path, $\sigma_e=|f^{(e)}_a|^2$ being the interaction cross section and $f^{(e)}_a$ the atomic elastic scattering factor.
- $l_i=1/\sigma_i\rho$ is the average inelastic collision mean free path.
- $\rho$ is the number of atoms per volume area.

[Latychevskaiaabrahams2019](/readings/papers/#latychevskaiaabrahams2019) followed a similar approach where the order of the collisions is considered to determine which sequence of events contribute to Bragg spots. A simplification of her equations considering only 0,1 and more than 1 elastic collisions reads :
\begin{eqnarray}
  P_{coh}(z+dz) &=& (1-P_e(dz))P_{coh}(z) \\
  P_{kin}(z+dz) &=& (1-P_e(dz))P_{kin}+P_e(dz)P_{coh}(z) \\
  P_{dyn}(z+dz) &=& P_{dyn}(z) + P_e(z)P_{kin} \\
\end{eqnarray}

which analytical solutions are the Poisson distribution above. The program [nearBragg](/projects/nearBragg) should follow this statistics. Taking for protein $\rho=106$ atoms per $nm^3$ and $\sigma_e=0.001-0.005A^2$ which covers beam energies $E=100-1000keV$ and protein average scattering powers give mean free paths ranging $l_e=200-1000nm$.

small $\sigma_e$ | medium $\sigma_e$ | large $\sigma_e$
---------------- |------------------ | ----------------
[<img src="{{figsB}}Pcoh_kin_dyn0.svg" width="350" /> ]({{figsB}}Pcoh_kin_dyn0.svg) | [<img src="{{figsB}}Pcoh_kin_dyn1.svg" width="350" /> ]({{figsB}}Pcoh_kin_dyn1.svg) | [<img src="{{figsB}}Pcoh_kin_dyn2.svg" width="350" /> ]({{figsB}}Pcoh_kin_dyn2.svg)
