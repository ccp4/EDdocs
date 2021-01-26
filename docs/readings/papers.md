#Papers summary

- [ClabbersGrueneAbrahams2017](clabbersgrueneabrahams2017) : Protein structure determination by ED of 3D nanocrystal using Molecular Replacement and standard X-ray protein crystallography software.
- [LatychevskaiaAbrahams2019](#latychevskaiaabrahams2019) : Inelastic scattering and solvent scattering significantly mitigate the effect of dynamical diffraction.
- [SubrimanianSpence2015](#subramanianspence2015) : Simulation predicts dynamical diffraction too strong at thickness above 100-200nm.
- [CowleyMoodie1957](/readings/CowleyMoodie1957) : Original [paper](/articles/CowleyMoodie1957.pdf) on multislice.
- [oleynikov2007](#oleynikov2007) : comparison of ms and exp for precessionED and SAED.

##ClabbersGrueneAbrahams2017
**Protein structure determination by ED of 3D nanocrystal(Experimental) : dimeric polymorph hen egg-white lyzozyme (Diffracting volume $0.14\mu m^3$) using Molecular Replacement from monomeric polylalanine model and standard X-ray protein crystallography software.**

The claim of a successful solution despite [subramanianspence2015](#subramanianspence2015) is due to **lack of inelastic modelling in multislice simulation**. This is backed up by the fact that Friedel pair symmetry is not more violated than for standard X-ray data.

Software/Method  | description
-----     | ------
**Data acquisition**
TEM      | Talos Arctica/Titan Krios, Parallel beam rotation $200keV$
detector | $1024\times 1024$ Timepix pixel($0.05\times0.05 mm$ each)
**Data processing** | XDS
**Structure solution**
XSCALE    | scaling
POINTLESS | MTZ format conversion  
AIMLESS   | merging
TRUNCATE  | Structure factor amplitudes
CHAINSAW  | model creation
PHASER    | Molecular replacement
Buccaneer/REFMAC5 | Side chains placement
COOT      | fitting missing residues
**Refinement**
REFMAC    | EXPDTA ELECTRON CRYSTALLOGRAPHY, SOURCE ELECTRON MB flags
SFTOOLS   | non measured observation removal
FREERFLAG | unique test sets creation


Micrograph (0.2x0.5x1.4nm)| Diffraction data | Fo vs Fc
------|-----|-------
[<img src="/readings/clabbersGrueneAbrahams2017/lyzozyme_micrograph.png" width="250"/>](/readings/clabbersGrueneAbrahams2017/diffraction.png) |   [<img src="/readings/clabbersGrueneAbrahams2017/diffraction_data.png" width="250"/>](/readings/clabbersGrueneAbrahams2017/diffraction_data.png) | [<img src="/readings/clabbersGrueneAbrahams2017/FoFc.png" width="250"/>](/readings/clabbersGrueneAbrahams2017/FoFc.png)   


##LatychevskaiaAbrahams2019
**Inelastic scattering and solvent scattering significantly mitigate the effect of dynamical diffraction.**

Probabilities of scattering events | Inelastic fraction of dynamical scattering | Friedel symmetry violation solvent scattering
-------------------|---------------------|-------------------------
[<img src="/readings/latychevskaia2019/dyna_lengths.png" width="350"/>](/readings/latychevskaia2019/dyna_lengths.png) | [<img src="/readings/latychevskaia2019/pdyn_ptot.png" width="250"/>](<img src="/readings/latychevskaia2019/pdyn_ptot) | [<img src="/readings/latychevskaia2019/Rfriedel.png" width="200"/>](/readings/latychevskaia2019/Rfriedel.png)

##SubramanianSpence2015
**Strong dynamical diffraction prevents single scattering approximation based techniques at crystal thickness above 100-200nm.**

Multislice details (ZMULT package) :

- lysozyme Tetragonal $P4_32_12$ space group (
  [here](http://img.chem.ucl.ac.uk/sgp/large/096az1.htm) or
  [here](https://it.iucr.org/Ac/ch2o3v0001/sgtable2o3o096/)),
  a=b=79.1A, c=37.8A.
- Structure factor from experimentally refined RHF Doyle-Turner data (H not included)
- 90 beams at 200keV

[Friedel symmetry violation](/readings/subramanian2015/intensity.png) $I_{-440}$ | [Omit density map](/readings/subramanian2015/density.png) : threshold error 37%  | MR distinguishable [error limit](/readings/subramanian2015/max_error.png) 34%  | [Thickness limit](/readings/subramanian2015/thickness_limit.png) $T_{R_f=0.3}\approx 100nm$
----------|----------|---------- |----------
<img src="/readings/subramanian2015/intensity.png" width="250" /> | <img src="/readings/subramanian2015/density.png" width="150" /> | <img src="/readings/subramanian2015/max_error.png" width="140" /> | <img src="/readings/subramanian2015/thickness_limit.png" width="200" />

#Oleynikov2007
{% set oley2007='/readings/oleynikov2007/' %}

Comparison of multislice and exp for precessionED and SAED.

figures | description
------- | -----------
[![]({{oley2007}}2.png)]({{oley2007}}2.png)   | Ewald radii during precED. $R_{n,in/out}=\sqrt{K^2-(K_z-nD)^2}\mp K\sin\varphi$ are intersections with ZOLZ and HOLZ.
[![]({{oley2007}}5.png)]({{oley2007}}5.png)   | Integration path of the excitation error during precession ED where $s_g=g^2/2K-g_{xy}\varphi\cos(\alpha-\omega)-g_z$ with $\omega$  azimuthal angle. Oscill is the kinematic rocking curve function $t^2 sinc^2(ts_g)/\xi_g$ where $\xi_g=K/V_g$
[![]({{oley2007}}6.png)]({{oley2007}}6.png)   | integration correction factor $A_{corr}$ where $I_g^{prec}=I\int_o^{2\pi}oscill(s_g(\omega))d\omega=IA_{corr}$ for h=1..30
[![]({{oley2007}}8a.png)]({{oley2007}}8a.png) | Reflections for azim=0  with forbidden reflections h00
[![]({{oley2007}}8c.png)]({{oley2007}}8c.png) | Reflections for azim=90  with forbidden reflections 0k0
[![]({{oley2007}}9.png)]({{oley2007}}9.png)   | Rfactor for precession ED and SAED run with multislice compared with experimental data in the [001] direction for $Cs_{0.44}Nb_{2.54}W_{2.46}O_{14}$. precED simus were run for 28 patterns with thickness in `range(60,600,20)` each of them made of 250 diffraction patterns.
