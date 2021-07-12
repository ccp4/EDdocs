# Bloch

## Usage example
```python
from blochwave import bloch
b = bloch.Bloch(cif_file='diamond',keV=200,u=[0,2,1],
  Smax=0.05,Nmax=8)
b.show_beams_vs_thickness(thicks=(0,1000,1000))
```

where :

- `cif_file` is a path to the structure ('diamond' being a built-in structure available)
- `keV`  : beam wavelength
- `u`    : incident beam direction
- `Smax` : maximum excitation error to consider  
- `Nmax` : highest reflection order
- `thicks` : thickness at which beam intensities are computed


## Applications
### N-beam configurations
{% set figs='/figures/bloch/diamond_' %}

Bloch wave simulations performed for diamond with max excitation error $S_{max}=0.01$, $N_{max}=8$.

$N$ denotes the configuration :
N=2 for 2 strongly excited beams,
N=4+2w for 4 strongly exited beams and 2 weak contributing beams,
r1 for a random orientation.


N   | a  | b  | c
--- | -- | -- | --
2   | [![]({{figs}}2beam_Sw.svg)]({{figs}}2beam_Sw.svg)     | [![]({{figs}}2beam_Iz.svg)]({{figs}}2beam_Iz.svg) | [![]({{figs}}2beam_beams0.svg)]({{figs}}2beam_beams0.svg)
3   | [![]({{figs}}3beam_Sw.svg)]({{figs}}3beam_Sw.svg)     | [![]({{figs}}3beam_Iz.svg)]({{figs}}3beam_Iz.svg) | [![]({{figs}}3beam_beams0.svg)]({{figs}}3beam_beams0.svg)
3+1w| [![]({{figs}}3_1beam_Sw.svg)]({{figs}}3_1beam_Sw.svg) | [![]({{figs}}3_1beam_Iz.svg)]({{figs}}3_1beam_Iz.svg) | [![]({{figs}}3_1beam_beams0.svg)]({{figs}}3_1beam_beams0.svg)
4   | [![]({{figs}}4beam_Sw.svg)]({{figs}}4beam_Sw.svg)     | [![]({{figs}}4beam_Iz.svg)]({{figs}}4beam_Iz.svg) | [![]({{figs}}4beam_beams0.svg)]({{figs}}4beam_beams0.svg)
4+2w| [![]({{figs}}4_2beam_Sw.svg)]({{figs}}4_2beam_Sw.svg) | [![]({{figs}}4_2beam_Iz.svg)]({{figs}}4_2beam_Iz.svg) | [![]({{figs}}4_2beam_beams0.svg)]({{figs}}4_2beam_beams0.svg)
r1  | [![]({{figs}}r1_Sw.svg)]({{figs}}r1_Sw.svg) | [![]({{figs}}r1_Iz.svg)]({{figs}}r1_Iz.svg) | [![]({{figs}}r1_beams0.svg)]({{figs}}r1_beams0.svg)

a) Setup displaying excitation errors (orange map) and structure factor (diamond) at this beam orientation.
b) Intensity $I_z$ as function of thickness for selected beams.
c) Rocking curve for selected beam at various thicknesses.



## Rocking curves analysis
Analysing excitation error and rocking curve over a range of angles.

a  | b
-- | --
[![]({{figs}}r1_theta_Sw.svg)]({{figs}}r1_theta_Sw.svg) | [![]({{figs}}r1_theta_I.svg)]({{figs}}r1_theta_I.svg)

a) excitation error of selected beams.
b) rocking curves at $z=250 A$ for selected beams.

a  | b
-- | --
[![]({{figs}}r1_Iint.svg)]({{figs}}r1_Iint.svg) | [![]({{figs}}r1_QQ.svg)]({{figs}}r1_QQ.svg)

a) Integrated rocking curve as function of thickness for selected beams.
b) Integrated dynamical intensities vs integrated kinematic intensities for a set of selected thicknesses.


1 | 2 | 3 | 4
--- | --- | --- | ---
[![]({{figs}}r1_beams0.svg)]({{figs}}r1_beams0.svg)  | [![]({{figs}}r1_beams1.svg)]({{figs}}r1_beams1.svg)  | [![]({{figs}}r1_beams2.svg)]({{figs}}r1_beams2.svg)  | [![]({{figs}}r1_beams3.svg)]({{figs}}r1_beams3.svg)

Thickness dependent rocking curves for selected beams.
