# Applications


## IRELOH
{% set ireloh='/figures/multislice/ireloh/' %}

Structure : $P2_12_12_1$

Lattice parameters:

- a=8.065Å, b=9.997Å, c=17.729Å
- $\alpha$=90.000°, $\beta$=90.000°, $\gamma$=90.000°
- reciprocal lattice parameters : 0.779Å, 0.629Å, 0.354Å
- Chemical composition: C(41.026%) H(46.154%) O(12.821%)
- Chemical formula : $C_{16} H_{18} O_5$
- atoms in a unit cell : $(16+5+26)\times 4 = 156$
- atoms in a $15\times15\times15$ crystals : 526500

a    | b     | c
---- | ----- | -----
[![]({{ireloh}}vestaA.png)]({{ireloh}}vestaA.png) |  [![]({{ireloh}}vestaB.png)]({{ireloh}}vestaB.png) | [![]({{ireloh}}vestaC.png)]({{ireloh}}vestaC.png)

1 unit cell of IRELOH in 3 configurations shown in the $(b,c)$, $(a,c)$ and $(a,b)$ planes.


### Experiment
000  | 002   | 216
---- | ----- | -----
[![]({{ireloh}}exp_000.png)]({{ireloh}}exp_000.png) |  [![]({{ireloh}}exp_002.png)]({{ireloh}}exp_002.png) | [![]({{ireloh}}exp_216.png)]({{ireloh}}exp_216.png)

Typical experimental diffraction patterns for images 000, 002, 216.

data 1  | data 2   | data 3
------- | -------- | --------
[![]({{ireloh}}spot1_484.png)]({{ireloh}}spot1_484.png) |  [![]({{ireloh}}spot2_150.png)]({{ireloh}}spot2_150.png) | [![]({{ireloh}}spot3_484.png)]({{ireloh}}spot3_484.png)

spot finding procedure for typical diffraction patterns for dataset 1,2 and 3.

1  | 2  | 3
-- | -- | --
[![]({{ireloh}}dials_viewer1.png)]({{ireloh}}dials_viewer1.png) |  [![]({{ireloh}}dials_viewer3.png)]({{ireloh}}dials_viewer3.png) |  [![]({{ireloh}}dials_viewer2.png)]({{ireloh}}dials_viewer2.png)

Reciprocal space configuration using `dials.reciprocal_lattice_viewer` for 1) indexed reflections (116). 2) integrated reflections and 3) zoom around reciprocal unit cell.
The rotation axis is `phi` and the other axis is the beam axis (z direction).

### Simulation and comparison


a  | b  | c
-- | -- | --
[![]({{ireloh}}1_484_xyz.png)]({{ireloh}}1_484_xyz.png) | [![]({{ireloh}}1_484_rot.png)]({{ireloh}}1_484_rot.png) | [![]({{ireloh}}1_484_dav.png)]({{ireloh}}1_484_dav.png)

a) Real space unit cell with the atoms inside. The beam orientation for image 484 is $[-1.52, -0.51, 0.65]$ as given by `uvw zone axis` using `dials.frame_orientations ` in the $[\bb x,\bb y,\bb z]$ base.
b) Same as a) after re-orienting the crystal in such a way that the beam coincides with the $z$ axis as assumed by the multislice implementation.
c) Reorientation using `scan_orientations.py` code.


a  | b  | c  | d
-- | -- | -- | --   
[![]({{ireloh}}1_xy.gif)]({{ireloh}}1_xy.gif) | [![]({{ireloh}}1_yz.gif)]({{ireloh}}1_yz.gif) | [![]({{ireloh}}1_xz.gif)]({{ireloh}}1_xz.gif) | [![]({{ireloh}}1_abc.gif)]({{ireloh}}1_abc.gif)

The full $15\times 15\times 15$ crystal as it is rotated around the goniometer in real space.
a)$(x,y)$ and b)$(x,z)$ and c)$(y,z)$ planes.   
d) Crystal rotation in reciprocal space.

image | a  | b  | c  | d
----- | -- | -- | -- | --
484 | [![]({{ireloh}}ireloh_rotated484xy.png)]({{ireloh}}ireloh_rotated484xy.png) | [![]({{ireloh}}ireloh_rotated484xz.png)]({{ireloh}}ireloh_rotated484xz.png) | [![]({{ireloh}}ireloh_rotated484yz.png)]({{ireloh}}ireloh_rotated484yz.png) | [![]({{ireloh}}spot1_484_viewer.png)]({{ireloh}}spot1_484_viewer.png)
900 | [![]({{ireloh}}ireloh_rotated900xy.png)]({{ireloh}}ireloh_rotated900xy.png) | [![]({{ireloh}}ireloh_rotated900xz.png)]({{ireloh}}ireloh_rotated900xz.png) | [![]({{ireloh}}ireloh_rotated900yz.png)]({{ireloh}}ireloh_rotated900yz.png) | [![]({{ireloh}}spot1_900_viewer.png)]({{ireloh}}spot1_900_viewer.png)

Crystal setup for images 484 and 900 in the a)$(x,y)$ and b)$(x,z)$ and c)$(y,z)$ planes.   $z$ is the beam axis and the blue rectangle represents the simulation domain.
d) Experimental diffraction pattern with projection of the reciprocal lattice vectors.

The diffraction patterns 484 and 900 are simulated and compared to experimental one.

image | a  | b  | c  
----- | -- | -- | --
484 | [![]({{ireloh}}484_B.svg)]({{ireloh}}484_B.svg) | [![]({{ireloh}}484_I.png)]({{ireloh}}484_I.png) | [![]({{ireloh}}spot1_484_viewer.png)]({{ireloh}}spot1_484_viewer.png)
900 | [![]({{ireloh}}900_B.svg)]({{ireloh}}900_B.svg) | [![]({{ireloh}}900_I.png)]({{ireloh}}900_I.png) | [![]({{ireloh}}spot1_900_viewer.png)]({{ireloh}}spot1_900_viewer.png)

 a) Evolution of main beams with thickness.
 b) Diffraction pattern at thickness $z=309A$.
 c) Experimental diffraction pattern with projection of the reciprocal lattice vectors.


### Zone axis simulation

xy | zx | zy
-- | -- | --
[![]({{ireloh}}001_xy.png)]({{ireloh}}001_xy.png) |  [![]({{ireloh}}001_zx.png)]({{ireloh}}001_zx.png) | [![]({{ireloh}}001_zy.png)]({{ireloh}}001_zy.png)

Simulation domain : $8\times 8$ super cell with padding corresponding to the blue domain shown in the $(x,y)$, $(z,x)$ and $(z,y)$ planes.

001  | 001   | 001
---- | ----- | -----
[![]({{ireloh}}001_SC.png)]({{ireloh}}001_SC.png) |  [![]({{ireloh}}001_SC.png)]({{ireloh}}001_SC.png) | [![]({{ireloh}}001_SC.png)]({{ireloh}}001_SC.png)

Typical simulated diffraction patterns after propagating through 100 unit cells thick crystal $\approx 1770A$.






<!-- ###############################################################
                            Silicon
#################################################################### -->
## Biotin
{% set figsBiotin='/figures/multislice/biotin/' %}

[<img src="{{figsBiotin}}biotin_vesta.png" style="float: right;" width="250" /> ]({{figsBiotin}}biotin_vesta.png)

- Structure : $P2_12_12_1$
- Lattice constants : $a=5.24A$, $b=10.35A$, $c=21.04A$ (change to 20.960)
- Angle : $\alpha=90^{\circ},\beta=90^{\circ},\gamma=90^{\circ}$
- Unit cell volume : $1141.41A^3$
- Chemical formula : $C_{10}H_{16}N_2O_3S$
- Composition :
    - $H:50$%
    - $C:31$%
    - $O:10$%
    - $N:6$%
    - $S:3$%
- Atoms per unit cell : 128

Waiting for experimental data ...


### Full rotational study
$07^{\circ}$ |$14^{\circ}$ |$26^{\circ}$
------------ |------------ |------------
[<img src="{{figsBiotin}}biotin102.png" width="250" />]({{figsBiotin}}biotin102.png) | [<img src="{{figsBiotin}}biotin101.png" width="250" />]({{figsBiotin}}biotin101.png) | [<img src="{{figsBiotin}}biotin201.png" width="250" />]({{figsBiotin}}biotin201.png)
[<img src="{{figsBiotin}}biotin_m1_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m1_autoslic_pattern.png) | [<img src="{{figsBiotin}}biotin_m2_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m2_autoslic_pattern.png) | [<img src="{{figsBiotin}}biotin_m3_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m3_autoslic_pattern.png)

$36^{\circ}$ | $45^{\circ}$ | $56^{\circ}$
------------ | ------------ | ------------
[<img src="{{figsBiotin}}biotin301.png" width="250" />]({{figsBiotin}}biotin301.png) | [<img src="{{figsBiotin}}biotin401.png" width="250" />]({{figsBiotin}}biotin401.png) | [<img src="{{figsBiotin}}biotin601.png" width="250" />]({{figsBiotin}}biotin601.png)
[<img src="{{figsBiotin}}biotin_m4_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m4_autoslic_pattern.png) | [<img src="{{figsBiotin}}biotin_m5_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m5_autoslic_pattern.png) | [<img src="{{figsBiotin}}biotin_m6_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m6_autoslic_pattern.png)

$63^{\circ}$ | $71^{\circ}$ | $80^{\circ}$
------------ | ------------ | ------------
[<img src="{{figsBiotin}}biotin801.png" width="250" />]({{figsBiotin}}biotin801.png) | [<img src="{{figsBiotin}}biotin1201.png" width="250" />]({{figsBiotin}}biotin1201.png) | [<img src="{{figsBiotin}}biotin2401.png" width="250" />]({{figsBiotin}}biotin2401.png)
[<img src="{{figsBiotin}}biotin_m7_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m7_autoslic_pattern.png) | [<img src="{{figsBiotin}}biotin_m8_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m8_autoslic_pattern.png) | [<img src="{{figsBiotin}}biotin_m9_autoslic_pattern.png" width="250" />]({{figsBiotin}}biotin_m9_autoslic_pattern.png)



### tilted simulations
The tilt parameter can be used to simulate small crystal tilt [below $10^{\circ}$](/readings/multislice/#chendyck1997).
Below, 10 simulations in the $[001]$ configuration with a tilt step of $1^{\circ}$.

0 |1 |2 |3 |4
--|--|--|--|--
[<img src="{{figsBiotin}}tilts_tilt0_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt0_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt1_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt1_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt2_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt2_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt3_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt3_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt4_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt4_autoslic_pattern.png)

5 |6 |7 |8 |9
--|--|--|--|--
[<img src="{{figsBiotin}}tilts_tilt5_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt5_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt6_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt6_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt7_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt7_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt8_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt8_autoslic_pattern.png) | [<img src="{{figsBiotin}}tilts_tilt9_autoslic_pattern.png" width="250" />]({{figsBiotin}}tilts_tilt9_autoslic_pattern.png)







<!-- ###############################################################
                            Silicon
#################################################################### -->
## Silicon

{% set figsSi='/figures/multislice/Silicon/' %}

Some info from
[wikipedia](https://en.wikipedia.org/wiki/Silicon),
[semiconductor database](http://www.ioffe.ru/SVA/NSM/Semicond/Si/basic.html) and
[Berkeley database](https://www.materialsproject.org/materials/mp-149/)

- structure : Face-centred diamond-cubic $Fd\bar 3m$, $F4_1/d\bar 3 2/m$
- point group $O_h^7$ $m\bar 3m$
- lattice parameters(A) $a=5.431$ or $a=3.868$, $\alpha=60^{\circ}$

#### Silicon atom potential
Using slicelib

 Si Fourier coefficients $U_g$ | Si atomic potential | Si Projected potential
------------------------------ | ------------------- | -------------------
[<img src="{{figsSi}}Si_vg.svg" width="250" />]({{figsSi}}Si_vg.svg) | [<img src="{{figsSi}}Si_va.svg" width="250" />]({{figsSi}}Si_va.svg) | [<img src="{{figsSi}}Si_vz.svg" width="250" />]({{figsSi}}Si_vz.svg)


#### Si Structure factor

Relative Structure factor and intensities [should be](/misc/compounds/#diamond) :

- mixed parity : **0**
- same parity (all odd or all even) :
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

$h,k,l$           | $h+k+l$     | Normalized intensity value
----------------- | ----------- | --------------------------
**mixed parity**  |  irrelevant | Cancels out
**same parity**   | $0,4,8,12$  | Equal to the normalized form factor
                  | $1,3,5,7,9$ | Twice as small as the normalized form factor
                  | $2,6,10$    | Cancels out

Which is shown in 3D and for [100],[110] plane cuts (where the color indicate $log_{10}(S_{hkl}+1)$):

3D structure factor   | 2D Intensities [100] (0,h,k) | 2D intensities[1-10] (h,h,k)
---------------------- | ------------------------ | -------------------
[<img src="{{figsSi}}Si_Shkl.png" width="250" />]({{figsSi}}Si_Shkl.png) | [<img src="{{figsSi}}Si_S100.png" width="250" />]({{figsSi}}Si_S100.png) | [<img src="{{figsSi}}Si_S110.png" width="250" />]({{figsSi}}Si_S110.png)



#### Si Diffraction patterns
Intensities [100] ($100A$) | Intensities [100] ($326A$) | 2D intensities[1-10] ($400A$)
------------------------- | ------------------------ | -------------------
[<img src="{{figsSi}}Si100_autoslic_pattern_109A.png" width="250" />]({{figsSi}}Si100_autoslic_pattern_109A.png) | [<img src="{{figsSi}}Si100_autoslic_pattern_326A.png" width="250" />]({{figsSi}}Si100_autoslic_pattern_326A.png) | [<img src="{{figsSi}}Si110_autoslic_pattern.png" width="250" />]({{figsSi}}Si110_autoslic_pattern.png)


#### Si100 simulation

Beam intensities       | Beam $I_{022}$
---------------------- | -----------------
[<img src="{{figsSi}}Si100_Ihk.svg" width="300" />]({{figsSi}}Si100_Ihk.svg) | [<img src="{{figsSi}}Si100_I22.svg" width="300" />]({{figsSi}}Si100_I22.svg)


#### Si110 Simulation
Simulation setup [110] | Intensities autoslic | mulslice
---------------------- | -------------------- | --------
[<img src="/figures/orientation.png" width="250" />](/figures/orientation.png) | [<img src="{{figsSi}}Si110_Ihk.svg" width="250" />]({{figsSi}}Si110_Ihk.svg) | [<img src="{{figsSi}}Si110_Ihk_mulslice.svg" width="250" />]({{figsSi}}Si110_Ihk_mulslice.svg)






<!-- ###############################################################
                            Test
#################################################################### -->
## Test structure

{% set figsTest='/figures/multislice/test/' %}


The test structure is Cubic Body Centred with Lithium atoms and the beam  direction is along $[001]$ axis.

### Diffraction patterns
first 5 slice | last slice | animation
------------- | ---------- | ----------
[<img src="{{figsTest}}bcc_pattern00.png" width="250" />]({{figsTest}}bcc_pattern00.png) | [<img src="{{figsTest}}bcc_pattern19.png" width="250" />]({{figsTest}}bcc_pattern19.png) | [<img src="{{figsTest}}bcc_pattern.gif" width="250" />]({{figsTest}}bcc_pattern.gif)


### Lattice constant effect
The lattice constant is artificially multiplied by a factor of
$2^i, i=1..3$ i.e $a_x=3.4910A,6.9820A,13.9640A$ respectively.
Only one transverse cell is used but the number of longitudinal cells are adjusted so all cases reach a thickness of $3500A$.

Beam $1,1$ | Beam $2,0$ | Beam $4,0$
------ | ------ | -------
[<img src="{{figsTest}}lattice_effect0.svg" width="250" >]({{figsTest}}lattice_effect0.svg) | [<img src="{{figsTest}}lattice_effect1.svg" width="250" />]({{figsTest}}lattice_effect1.svg) | [<img src="{{figsTest}}lattice_effect2.svg" width="250" />]({{figsTest}}lattice_effect2.svg)

The Pendullosung thickness seems to depend linearly on the lattice constant but larger lattice constants result in higher intensity maxima and larger Pendullosung thickness.


### Wobble effect

The wobble parameter is the RMS of the random displacement of atoms in the frozen phonon approximation.
Several runs are needed to provide an accurate picture of thermal effects.
Below the average azimuthal intensity is plotted for different amount of wobble. All simulation took 15 runs.

pattern 0 | pattern 1 | avg Intensity
--------- | --------- | -------------
[<img src="{{figsTest}}wobble_effect0.png" width="250" />]({{figsTest}}wobble_effect0.png) | [<img src="{{figsTest}}wobble_effect1.png" width="250" />]({{figsTest}}wobble_effect1.png) | [<img src="{{figsTest}}wobble_effectIavg.svg" width="250" />]({{figsTest}}wobble_effectIavg.svg) |


### Simple Cubic Carbone

tilt | Iz | Iz int
---- | ---------- | ----------
[<img src="{{figsTest}}SC_tilt.svg" width="250" />]({{figsTest}}SC_tilt.svg) | [<img src="{{figsTest}}SC_Iz.svg" width="250" />]({{figsTest}}SC_Iz.svg) | [<img src="{{figsTest}}SC_Iz_int.svg" width="250" />]({{figsTest}}SC_Iz_int.svg)
