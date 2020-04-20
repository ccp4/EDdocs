# Dynamical diffraction

## Theory
**kinematic approximation**

The intensity of a Bragg spot can be established as :
\begin{equation}
  I_{kin}(S_g;t,v_g) = \left(\sigma v_g t\right)^2 sinc^2\left(S_gt\right)
\end{equation}
where :

- $S_g$ is the excitation error which is another notation for $q=\sin\theta/\lambda$.
- $t$ is the thickness.
- $\sigma$ the interaction parameter (in $rad/kVA$).
- $v_g$ the Fourier components (in $V$).

**2 beam**

In [Bloch theory](/readings/Kirkland2010/#bloch-waves) using 2 beams approximation gives the intensity as :
\begin{equation}
  I_{dyn-2}(w_g;t,\xi_g) = \left(\frac{\pi t}{\xi_g}\right)^2
    sinc^2\left(\frac{t}{\xi_g}\sqrt{1+w_g^2}\right)
\end{equation}
where :

- $\xi_g=k_0/U_g$ is the Pendellosung thickness (in $A$) with $k_0=1/\lambda$ being the wave number.
- $w_g=S_g\xi_g$ is the excitation error scaled by $\xi_g$.
- $U_g=2me/h^2 v_g$ is the form factor Fourier component (in $A^{-2}$).

Since $\sigma v_g=\pi/\xi_g$ one can see that for $S_G=0$ the 2-beam intensity reduces to kinematic limit case for small thickness :
\begin{equation}
  I(0;t,\xi_g) = \left(\frac{\pi t}{\xi_g}\right)^2 sinc^2\left(\frac{t}{\xi_g}\right)
    \underset{t\ll\xi_g}{\rightarrow}
      \left(\frac{\pi t}{\xi_g}\right)^2
\end{equation}

Taking the arbitrary values $K=100A^{-1}$, $U_g=0.1A^{-2}$ gives a Pendullosung thickness $\xi_g=1000 A$ with patterns illustrated below for $t=100 A$ and $t=500A$.

I(0) kin vs dyn 2-beam $\xi_g=1000 A$ | I(w) kin vs dyn 2-beam
-----------------------|-----------------------
[<img src="/figures/kin_dyn0.svg" width="350" /> ](/figures/kin_dyn0.svg) | [<img src="/figures/kin_dyn.svg" width="350" />](/figures/kin_dyn.svg)



## Example
###Silicon
Some info from
[wikipedia](https://en.wikipedia.org/wiki/Silicon),
[semiconductor database](http://www.ioffe.ru/SVA/NSM/Semicond/Si/basic.html) and
[Berkeley database](https://www.materialsproject.org/materials/mp-149/)

- structure : Face-centred diamond-cubic $Fd\bar 3m$, $F4_1/d\bar 3 2/m$
- point group $O_h^7$ $m\bar 3m$
- lattice parameters(A) $a=5.431$ or $a=3.868$, $\alpha=60^{\circ}$

**Silicon atom potential using slicelib**

 Si Fourier coefficients $U_g$ | Si atomic potential | Si Projected potential
------------------------------ | ------------------- | -------------------
[<img src="/projects/multislice/figures/Si_vg.svg" width="250" />](/projects/multislice/figures/Si_vg.svg) | [<img src="/projects/multislice/figures/Si_va.svg" width="250" />](/projects/multislice/figures/Si_va.svg) | [<img src="/projects/multislice/figures/Si_vz.svg" width="250" />](/projects/multislice/figures/Si_vz.svg)


**Structure factor using atompot**

Relative Structure factor and intensities [should be](/misc/compounds/#diamond) :
\begin{equation}
  F_{hkl} = \left\{
    \begin{array}{cc}
      8f,         & h+k+l=4N \\
      4(1\pm i)f, & h+k+l=2N+1 \\
      0,          & h+k+l=4N+2
    \end{array}\right.
\mbox{,}~~~~~    
    S_{hkl} = \left\{
      \begin{array}{cc}
        64f, & h+k+l=4N   \\
        32f, & h+k+l=2N+1 \\
        0,   & h+k+l=4N+2
      \end{array}\right.
\end{equation}
hence the normalized intensities :

$h+k+l$     | Normalized intensity value
----------- | --------------------------
$0,4,8,12$  | Equal to the normalized form factor.
$1,3,5,7,9$ | Twice as small as the normalized form factor
$2,6,10$    | Cancels out

Simulation setup [110] | 2D Intensities (-h,-h,k) |  1D intensities(-h,-h,0)
---------------------- | ------------------------ | -------------------
[<img src="/projects/multislice/figures/orientation.png" width="250" />](/projects/multislice/figures/orientation.png) | [<img src="/projects/multislice/figures/si110_S_2D.png" width="250" />](/projects/multislice/figures/si110_S_2D.png) | [<img src="/projects/multislice/figures/si110_S_1D.svg" width="250" />](/projects/multislice/figures/si110_S_1D.svg) |

**Pendulossung Thickness**

Using $200keV$ corresponds to $K=100A$ and therefore the pendullosung thickness for the pair $[000]$, $[002]$ should then be $\xi=100A$.

Beam intensities

[<img src="/projects/multislice/figures/si100_Ihk.svg" width="250" />](/projects/multislice/figures/si100_Ihk.svg)
