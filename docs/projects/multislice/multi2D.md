# Multislice 2D

## Convolution in 2D
Performing the convolution by direct integration, using the small angle approximation :
\begin{equation}
  \Psi(x,z_0+\Delta z) = \int_{-\delta x}^{\delta x} p(X,\Delta z) t(x-X,z_0)\Psi(X,z_0) dX
\end{equation}

where $\delta x=\Delta z\theta$ with $\theta=0.1rad$ small angle and the Fresnel propagator $p(x,y,\Delta z)=\frac{1}{i\lambda\Delta z}e^{ik_0\frac{x^2}{2\Delta z}}$, with $k_0=200keV$ and $\Delta z=25A$

transmission | propagator | $\Psi(x,z_0+\Delta z)$
------------ | ---------- | ----------------------
[<img src="/projects/multislice/figures/fresnelT.svg" width="400" />](figures/fresnelT.svg) | [<img src="/projects/multislice/figures/fresnelP.svg" width="400" />](figures/fresnelP.svg) | [<img src="/projects/multislice/figures/fresnelX.svg" width="400" />](figures/fresnelX.svg)


## 2-beam dynamical diffraction
### Simple square
Structure is simple square with atom 2 oriented along the [10 1] axis. The configuration of the Ewald sphere and the beam intensities for $g=1$ and $g=2$ is shown below for weak potential and strong potential. In both cases, dynamical diffraction for the strongly excited beam is present but the kinematic regime is broken for lower crystal thickness for strong potential.

Ewald configuration | weak potential | strong potential
------------------- | -------------- | ----------------
[<img src="/projects/multislice/figures/multi2D/fresnelT.svg" width="400" />](figures/multi2D/fresnelT.svg) | [<img src="/projects/multislice/figures/fresnelP.svg" width="400" />](figures/multi2D/fresnelP.svg) | [<img src="/projects/multislice/figures/multi2D/fresnelX.svg" width="400" />](figures/multi2D/fresnelX.svg)


### Centered square tilted
Rocking curves are simulated by running many simulations by increasing tilt from 0 to 1 degree.
