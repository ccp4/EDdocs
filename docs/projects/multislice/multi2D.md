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
### Setup
The structure is simple primitive square lattice with unique atom $Z_a=2$.
The crystal is oriented along the [10 1] direction as shown in fig1-a which requires simulating a 10x10 super cell. For this case, the accelerated voltage has been voluntary chosen $E=3.75keV$ to allow for more Ewald sphere curvature.
The configuration of the Ewald sphere is shown in fig1-b where the blue dots correspond to the reciprocal lattice rotated by $0.1rad$ from the zone axis [1 0] and the black dots correspond to the reciprocal lattice of the super cell setup.
The beam intensities for $g=1$ and $g=2$ as a function of crystal thickness is shown in fig1-c.

Potential | Ewald configuration | Diffraction pattern | Beams intensities
--------- | ------------------- | ------------------- | -----------------
[<img src="/projects/multislice/figures/multi2D/2_beam_fv.png" width="180" />](figures/multi2D/2_beam_fv.png) | [<img src="/projects/multislice/figures/multi2D/2_beam_E.svg" width="180" />](figures/multi2D/2_beam_E.svg) | [<img src="/projects/multislice/figures/multi2D/2_beam_Iq.svg" width="180" />](figures/multi2D/2_beam_Iq.svg) |   [<img src="/projects/multislice/figures/multi2D/2_beam_Iz.svg" width="180" />](figures/multi2D/2_beam_Iz.svg)

### Extinction distance
Below, the same simulation is run for different potential strengths.  
Beam $g_1$ is not at the exact Bragg condition and its intensity with crystal thickness is mostly due to Ewald sphere curvature. Indeed, the oscillation period is independent of the potential strength and mostly depends on excitation error.

On the other hand, the beam $g_2$ being close to the Bragg condition, its extinction distance is sensitive to the strength of the potential.
For this strongly excited beam, dynamical diffraction is present at all potential strengths but the kinematic regime is extended to larger crystal thickness at weaker potential.

$g_1$ | $g_2$ | $\zeta_g$
----- | ----- | ---------
[<img src="/projects/multislice/figures/multi2D/2_beam_I1.svg" width="400" />](figures/multi2D/2_beam_I1.svg) | [<img src="/projects/multislice/figures/multi2D/2_beam_I2.svg" width="400" />](figures/multi2D/2_beam_I2.svg) |  [<img src="/projects/multislice/figures/multi2D/2_beam_xi.svg" width="400" />](figures/multi2D/2_beam_xi.svg)

### Rocking curve
Rocking curves are simulated by running simulations with various beam tilt angles ranging from 0 to 0.08 degrees.

The actual exact Bragg condition is satisfied for the $\theta_c=0.0385^{\circ}$.
At this tilt angle, the Pendullosung thickness can be measured on the $I_b(z)$ giving $\zeta_g=293nm$.
The [analytical](/projects/dynamical_diffraction/#2-beam-configuration) approach would give $\zeta_g=\pi/\sigma f_v(\theta_i,Z_a)$.

The rocking curves around $\theta_c$ are characteristic of 2-beam theory and shown for $z=[0.25,0.5,0.75,1,1.25,1.5]\zeta_g$.

Rocking curves | $I_g(z)$ at $\theta_c$
-------------- | ----------------------
[<img src="/projects/multislice/figures/multi2D/2_beam_rocking.svg" width="400" />](figures/multi2D/2_beam_rocking.svg) | [<img src="/projects/multislice/figures/multi2D/2_beam_Itheta_c.svg" width="400" />](figures/multi2D/2_beam_Itheta_c.svg)
