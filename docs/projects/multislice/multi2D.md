# Multislice 2D

{% set figs2D='/figures/multislice/multi2D/' %}

## 2-beam dynamical diffraction
### Setup
The structure is simple primitive square lattice with unique atom $Z_a=2$.
The crystal is oriented along the [10 1] direction as shown in fig1-a which requires simulating a 10x10 super cell. For this case, the accelerated voltage has been voluntary chosen $E=3.75keV$ to allow for more Ewald sphere curvature.
The configuration of the Ewald sphere is shown in fig1-b where the blue dots correspond to the reciprocal lattice rotated by $0.1rad$ from the zone axis [1 0] and the black dots correspond to the reciprocal lattice of the super cell setup.
The beam intensities for $g=1$ and $g=2$ as a function of crystal thickness is shown in fig1-c.

Potential | Ewald configuration | Diffraction pattern | Beams intensities
--------- | ------------------- | ------------------- | -----------------
[<img src="{{figs2D}}2_beam_fv.png" width="180" />](figures/multi2D/2_beam_fv.png) | [<img src="{{figs2D}}2_beam_E.svg" width="180" />](figures/multi2D/2_beam_E.svg) | [<img src="{{figs2D}}2_beam_Iq.svg" width="180" />](figures/multi2D/2_beam_Iq.svg) |   [<img src="{{figs2D}}2_beam_Iz.svg" width="180" />](figures/multi2D/2_beam_Iz.svg)

### Extinction distance
Below, the same simulation is run for different potential strengths.  
Beam $g_1$ is not at the exact Bragg condition and its intensity with crystal thickness is mostly due to Ewald sphere curvature. Indeed, the oscillation period is independent of the potential strength and mostly depends on excitation error.

On the other hand, the beam $g_2$ being close to the Bragg condition, its extinction distance is sensitive to the strength of the potential.
For this strongly excited beam, dynamical diffraction is present at all potential strengths but the kinematic regime is extended to larger crystal thickness at weaker potential.

$g_1$ | $g_2$ | $\zeta_g$
----- | ----- | ---------
[<img src="{{figs2D}}2_beam_I1.svg" width="400" />](figures/multi2D/2_beam_I1.svg) | [<img src="{{figs2D}}2_beam_I2.svg" width="400" />](figures/multi2D/2_beam_I2.svg) |  [<img src="{{figs2D}}2_beam_xi.svg" width="400" />](figures/multi2D/2_beam_xi.svg)

### Rocking curve
Rocking curves are simulated by running simulations with various beam tilt angles ranging from 0 to 0.08 degrees.

The actual exact Bragg condition is satisfied for the $\theta_c=0.0385^{\circ}$.
At this tilt angle, the Pendullosung thickness can be measured on the $I_b(z)$ giving $\zeta_g=293nm$.
The [analytical](/projects/dynamical_diffraction/#2-beam-configuration) approach would give $\zeta_g=\pi/\sigma f_v(\theta_i,Z_a)$.

The rocking curves around $\theta_c$ are characteristic of 2-beam theory and shown for $z=[0.25,0.5,0.75,1,1.25,1.5]\zeta_g$.

Rocking curves | $I_g(z)$ at $\theta_c$
-------------- | ----------------------
[<img src="{{figs2D}}2_beam_rocking.svg" width="400" />](figures/multi2D/2_beam_rocking.svg) | [<img src="{{figs2D}}2_beam_Itheta_c.svg" width="400" />](figures/multi2D/2_beam_Itheta_c.svg)



## Padding

The purpose of this paragraph is to evaluate the effect of padding with zeros the potential
of the sample in order to model finite size effects. The padding is expressed number of unit cells on each side of the sample.

{% set figpad='/figures/multislice/multi2D/pad' %}

### Increasing padding for one periodic unit cell
$n_{pad}$  | 0  | 5  | 10 | 30  
---------- | -- | -- | -- | --
$T$  | [<img src="{{figpad}}0_nx1Tz.svg" width="200" />]({{figpad}}0_nx1Tz.svg) | [<img src="{{figpad}}1_nx1Tz.svg" width="200" />]({{figpad}}1_nx1Tz.svg) | [<img src="{{figpad}}2_nx1Tz.svg" width="200" />]({{figpad}}2_nx1Tz.svg) | [<img src="{{figpad}}3_nx1Tz.svg" width="200" />]({{figpad}}3_nx1Tz.svg)
$I$  | [<img src="{{figpad}}0_nx1Qz.svg" width="200" />]({{figpad}}0_nx1Qz.svg) | [<img src="{{figpad}}1_nx1Qz.svg" width="200" />]({{figpad}}1_nx1Qz.svg) | [<img src="{{figpad}}2_nx1Qz.svg" width="200" />]({{figpad}}2_nx1Qz.svg) | [<img src="{{figpad}}3_nx1Qz.svg" width="200" />]({{figpad}}3_nx1Qz.svg)

In this set of figures there is only one unit cell. In this case, the amount of padding has the same effect as increasing the size of the unit cell.



### Increasing padding for two periodic unit cells
$n_{pad}$  | 0  | 5  | 10 | 30  
---------- | -- | -- | -- | --
$T$  | [<img src="{{figpad}}0_nx2Tz.svg" width="200" />]({{figpad}}0_nx2Tz.svg) | [<img src="{{figpad}}1_nx2Tz.svg" width="200" />]({{figpad}}1_nx2Tz.svg) | [<img src="{{figpad}}2_nx2Tz.svg" width="200" />]({{figpad}}2_nx2Tz.svg) | [<img src="{{figpad}}3_nx2Tz.svg" width="200" />]({{figpad}}3_nx2Tz.svg)
$I$  | [<img src="{{figpad}}0_nx2Qz.svg" width="200" />]({{figpad}}0_nx2Qz.svg) | [<img src="{{figpad}}1_nx2Qz.svg" width="200" />]({{figpad}}1_nx2Qz.svg) | [<img src="{{figpad}}2_nx2Qz.svg" width="200" />]({{figpad}}2_nx2Qz.svg) | [<img src="{{figpad}}3_nx2Qz.svg" width="200" />]({{figpad}}3_nx2Qz.svg)

In this set, 2 periodic unit cells are used.


### Large padding with increasing number of unit cells

$n_{cells}$ | 1  | 2  | 5  | 10  
----------- | -- | -- | -- | --
$T$  | [<img src="{{figpad}}nx1Tz.svg" width="200" />]({{figpad}}nx1Tz.svg) | [<img src="{{figpad}}nx2Tz.svg" width="200" />]({{figpad}}nx2Tz.svg) | [<img src="{{figpad}}nx3Tz.svg" width="200" />]({{figpad}}nx3Tz.svg) | [<img src="{{figpad}}nx4Tz.svg" width="200" />]({{figpad}}nx4Tz.svg)
$I$  | [<img src="{{figpad}}nx1Qz.svg" width="200" />]({{figpad}}nx1Qz.svg) | [<img src="{{figpad}}nx2Qz.svg" width="200" />]({{figpad}}nx2Qz.svg) | [<img src="{{figpad}}nx3Qz.svg" width="200" />]({{figpad}}nx3Qz.svg) | [<img src="{{figpad}}nx4Qz.svg" width="200" />]({{figpad}}nx4Qz.svg)

In this set, a padding of 20 unit cells is applied while the number of periodic unit cells is increased.




## Real space convolution
{% set figsFresnel='/figures/multislice/fresnel/' %}

Performing the convolution by direct integration, using the small angle approximation :
\begin{equation}
  \Psi(x,z_0+\Delta z) = \int_{-\delta x}^{\delta x} p(X,\Delta z) t(x-X,z_0)\Psi(x-X,z_0) dX
\end{equation}

where $\delta x=\Delta z\theta$ with $\theta=0.1rad$ small angle and the Fresnel propagator $p(x,y,\Delta z)=\frac{e^{i\pi/4}}{i\lambda\Delta z}e^{ik_0\frac{x^2}{2\Delta z}}$, with $k_0=200keV$ and $\Delta z=5A$.

Transmission | Propagator | $\Psi(x,z_0+\Delta z)$
------------ | ---------- | ----------------------
[<img src="{{figsFresnel}}fresnelT.svg" width="400" />]({{figsFresnel}}fresnelT.svg) | [<img src="{{figsFresnel}}fresnelP.svg" width="400" />]({{figsFresnel}}fresnelP.svg) | [<img src="{{figsFresnel}}fresnelX.svg" width="400" />]({{figsFresnel}}fresnelX.svg)


Below the real space transmission function, propagator and convolution product using the above integral and the FFT based multislice approach.
