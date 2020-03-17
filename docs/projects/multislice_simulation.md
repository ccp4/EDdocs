# Multislice simulations

A quick general overview is given on [wiki](https://en.wikipedia.org/wiki/Multislice).
A more in-depth understanding can be found in the original paper by [Cowley&Moodie,1957](/articles/CowleyMoodie1957.pdf).
The main reference for this method is the [book](#https://rd.springer.com/book/10.1007/978-1-4419-6533-2)
*Advanced computing in electron microscopy, Kirkland, 2010* which is behind
the package [TEMSIM](#https://github.com/jhgorse/kirkland/tree/master/temsim).
The method is also available on these opensource [softwares](/notes/multislice_EM_softwares).

## Method

The methods is used to *determine the exit image by solving sucessively Schrodinger
's equation in a series of slices orhogonal to the electrons propagating direction.*

The diffraction pattern is the Fourier transform of the exit image.

Scattering is accounted for through the **interacting electronic potential** 
$\varphi(x,y,z)$ so that the **electrons in the incident beam accelerated at 
potential $W_0$** have energies $W_0+\varphi$.
**Dynamical diffraction** is naturally taken into account with this approach.
**Inelastic scattering** is accounted for through the imaginary part of 
the potential which is also denoted as *inelastic density function* $\chi$.

*The potential plays a similar role in Schrodinger's equation as the atomic 
susceptibility of a medium in response to an incident electromagnetic wave in 
Maxwell's equation.*

The response to an incident wave of imediately after passing through 
slice $z_i$ is : 

\begin{equation}
    \Psi(x,y,z_i+dz) = \Psi(x,y,z_i)e^{i\sigma\varphi dz}
\end{equation}

where $\sigma=\pi/\lambda_0W_0$ is a scattering parameter and
$\lambda_0=h(2mW_0)^{-1}$ the unperturbed wavelength. 
The approximation $W\gg \varphi$ has been used to simplify 
$(1+\varphi(x,y,z)/W_0)^{1/2}-1\approx \varphi(x,y,z)/2W_0$. 

Schrodinger's equation is solved by propagating the output wave from one slice 
to the other using the **parabolic approximation(Fresnel diffraction)**.

## Theory 

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


this gives :



## Application examples