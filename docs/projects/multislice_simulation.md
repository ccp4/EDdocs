# Multislice simulations

**A method used to determine the exit wave function(exit image) of an incident electron beam by solving  Schrodinger's equation. The diffraction pattern is obtained as the Fourier transform of the exit image.**

## Links
  - [wiki](https://en.wikipedia.org/wiki/Multislice) :
    A general overview.
  - [Cowley&Moodie,1957](/articles/CowleyMoodie1957.pdf) :
    original paper with in-depth analysis of the method.
  - [Kirkland,2010](/readings/Kirkland2010) :
    *Advanced computing in electron microscopy, 2010*
    is the main book reference for the implementation of the method available in the [TEMSIM](#https://github.com/jhgorse/kirkland/tree/master/temsim) package.
  - [opensource softwares](/notes/multislice_EM_softwares) :
    Other available opensource implementation of multislice.

## Assumptions and features
- Scattering is accounted for through the **interacting electronic potential $\varphi(x,y,z)$** so that the **electrons in the incident beam accelerated at potential $W_0$** have energies $W_0+\varphi$.
- **Dynamical diffraction** is naturally account for with this approach.
- **Inelastic scattering** is accounted for through the imaginary part of
the potential which is also denoted as *inelastic density function $\chi$*.
- The sample is divided in a series of slices orthogonal to the electrons propagation direction.
- Schrodinger's equation is solved by propagating the output wave function from one slice to the other using the **parabolic approximation(Fresnel diffraction)**.
- The potential plays a similar role in Schrodinger's equation as the atomic susceptibility of a medium in response to an incident electromagnetic wave in Maxwell's equation.


## Method

The multislice approach solves the [fast electron Schrodinger's equation](/readings/Kirkland2010/#fast-electron-wave-equation) in real space by direct integration along $z$ (incident beam direction) :
\begin{equation}
  \Psi(z+\Delta z) = \Psi(z)e^{i\lambda/4\pi\Delta z\grad^2_{xy}
      + i\sigma\nu_{\Delta z}(x,y,z)}
\end{equation}
where $\nu_{\Delta_z}=\int_z^{z+\Delta z}V(x,y,z^{'})dz^{'}$.

Due to the exponentiation operator this must be approximated as :
\begin{equation}
  \Psi(z+\Delta z) = p(x,y,\Delta z)\star \Big(t(x,y,z)\Psi(z)\Big) +\mathcal O(\Delta z^2\nu_{\Delta z})
\end{equation}

where $t(x,y,z)=e^{i\sigma/4\pi\nu{\Delta z}}$ is the transmission function, $p(x,y,\Delta z)\star = e^{i\lambda/4\pi\Delta z\grad^2_{xy}}$ is the propagator operator, $p(x,y,\Delta z)=\frac{1}{i\lambda\Delta z}e^{2ik_0\frac{x^2+y^2}{\delta z}}$ is the propagator function which can be interpreted as the **Fresnel propagator**.

A great visual description of differences between Fresnel and Fraunhofer
from  [Jacopo Bertolotti](https://twitter.com/j_bertolotti/status/1199661806538633216)
![](/figures/Fresnel.gif)



## Theory Cowley&Moodie
The response to an incident wave of imediately after passing through
slice $z_i$ is :

\begin{equation}
    \Psi(x,y,z_i+dz) = \Psi(x,y,z_i)e^{i\sigma\varphi dz}
\end{equation}

where $\sigma=\pi/\lambda_0W_0$ is a scattering parameter and
$\lambda_0=h(2mW_0)^{-1}$ the unperturbed wavelength.
The approximation $W\gg \varphi$ has been used to simplify
$(1+\varphi(x,y,z)/W_0)^{1/2}-1\approx \varphi(x,y,z)/2W_0$.

The wave function in the plane of observation is :

\begin{eqnarray}
\Psi(x) =
    \Bigg\{_N& &Q_N(-\frac{k_sx}{R})\star\Big\{_{N-1} ... \\
       &\Big\{_2& Q_2(-\frac{k_sx}{R})\star
          \big\{_1 Q_1(-\frac{k_sx}{R})\star Q_0(-\frac{k_sx}{R})e^{\frac{ik_sR_1x^2}{2R^2}}\big\}_1
       e^{\frac{ik_sR_2x^2}{2R^2}} \Big\}_2 \\
    &...&\Big\}_{N-1} e^{\frac{ik_sR_Nx^2}{2R^2}} \Bigg\}_N e^{\frac{-ik_sx^2}{2R}}
\end{eqnarray}

where $Q_i$ are the planar Fourier transforms of the potential in each slice and
$R_2=R_3=..=R_N=\Delta z$ and $x/R=2\theta$ where $2\theta$ is the scattering angle.
We can also write $Q_n=i\Delta zE_n$ where $E_n$ is the 1D inverse Fourier transform
of the $3D$ structure factor performed along $l$ direction evaluated at position $z_n$.

For :

- an incident plane wave with $\alpha$ the angle of incidence :
    $E_0=\delta(\theta+\alpha)$
- a perfect crystal
    $Q_n(-2k_s\theta)=i\Delta z\sum_h E_n(h)\delta(\theta+h\lambda/a)$

So :

- $\{_1...\}_1=F_1(-2k_s(\theta+\alpha))$
- $\{_2...\}_2=\sum_{h_1,h_2}F_1(h_1)F_2(h_2)e^{ik_s\Delta z(\theta+h_2\lambda/2a)^2}\delta(\theta+\alpha+\frac{(h_1+h_2)\lambda}{2a})$

Using :
\begin{equation}
    \exp\Bigg\{
        -2i\pi\sum_{n=1}^{N} z_n(\zeta_n-\zeta_{n-1})
     \Bigg\}
     =\exp\Bigg\{-2i\pi
            \left(H\zeta_N - \Delta z \sum_{n=1}^{N}\zeta_n\right)
      \Bigg\}
\end{equation}

where $\zeta_n$ represents the distance along the l-direction in reciprocal space
of the paraboloid of reflection from the point
$\left(\sum_{r=1}^{n} h_r, \sum_{r=1}^{n} k_r, \sum_{r=1}^{n} l_r\right)$.

\begin{equation}
\zeta_n=\lambda/2\Bigg\{
    \left( \sum_{r=1}^{n} h_r/a \right)^2 +
    \left( \sum_{r=1}^{n} k_r/b \right)^2
    \Bigg\}-\sum_{r=1}^{n} \frac{l_r}{c} +\frac{h_r}{a}\alpha_x +\frac{k_r}{b}\alpha_y
\end{equation}

## Application examples
