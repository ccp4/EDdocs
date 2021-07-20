# IRELOH

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

Ireloh dataset 2

a  | b  | c  | d
-- | -- | -- | --
[![]({{ireloh}}ireloh2_xy.gif)]({{ireloh}}ireloh2_xy.gif) | [![]({{ireloh}}ireloh2_yz.gif)]({{ireloh}}ireloh2_yz.gif) | [![]({{ireloh}}ireloh2_xz.gif)]({{ireloh}}ireloh2_xz.gif) | [![]({{ireloh}}ireloh2_abc.gif)]({{ireloh}}ireloh2_abc.gif)

The full $15\times 15\times 15$ crystal as it is rotated around the goniometer in real space.
a)$(x,y)$ and b)$(x,z)$ and c)$(y,z)$ planes.   
d) Crystal rotation in reciprocal space.


imag | 000 | 100 | 200 | 300 | 400 | 500  
---- | --- | --- | --- | --- | --- | ---
sim  | [![]({{ireloh}}ireloh2_0000sim.png)]({{ireloh}}ireloh2_0000sim.png) | [![]({{ireloh}}ireloh2_0100sim.png)]({{ireloh}}ireloh2_0100sim.png) | [![]({{ireloh}}ireloh2_0200sim.png)]({{ireloh}}ireloh2_0200sim.png) | [![]({{ireloh}}ireloh2_0300sim.png)]({{ireloh}}ireloh2_0300sim.png) | [![]({{ireloh}}ireloh2_0400sim.png)]({{ireloh}}ireloh2_0400sim.png) | [![]({{ireloh}}ireloh2_0500sim.png)]({{ireloh}}ireloh2_0500sim.png)
=exp  |  [![]({{ireloh}}ireloh2_0000exp.png)]({{ireloh}}ireloh2_0000exp.png) | [![]({{ireloh}}ireloh2_0100exp.png)]({{ireloh}}ireloh2_0100exp.png) | [![]({{ireloh}}ireloh2_0200exp.png)]({{ireloh}}ireloh2_0200exp.png) | [![]({{ireloh}}ireloh2_0300exp.png)]({{ireloh}}ireloh2_0300exp.png) | [![]({{ireloh}}ireloh2_0400exp.png)]({{ireloh}}ireloh2_0400exp.png) | [![]({{ireloh}}ireloh2_0500exp.png)]({{ireloh}}ireloh2_0500exp.png)


<!-- ### setup

rep | 10  | 15  | 20
--- | --- | --- | ---
pad=1 | [![]({{ireloh}}pad1-rep10log.png)]({{ireloh}}pad1-rep10log.png) |  [![]({{ireloh}}pad1-rep15log.png)]({{ireloh}}pad1-rep15log.png) | [![]({{ireloh}}pad1-rep20log.png)]({{ireloh}}pad1-rep20log.png)
pad=2 | [![]({{ireloh}}pad2-rep10log.png)]({{ireloh}}pad2-rep10log.png) |  [![]({{ireloh}}pad2-rep15log.png)]({{ireloh}}pad2-rep15log.png) | [![]({{ireloh}}pad2-rep20log.png)]({{ireloh}}pad2-rep20log.png)
pad=3 | [![]({{ireloh}}pad3-rep10log.png)]({{ireloh}}pad3-rep10log.png) |  [![]({{ireloh}}pad3-rep15log.png)]({{ireloh}}pad3-rep15log.png) | [![]({{ireloh}}pad3-rep20log.png)]({{ireloh}}pad3-rep20log.png) -->




<!--
a  | b  | c
-- | -- | --
[![]({{ireloh}}1_484_xyz.png)]({{ireloh}}1_484_xyz.png) | [![]({{ireloh}}1_484_rot.png)]({{ireloh}}1_484_rot.png) | [![]({{ireloh}}1_484_dav.png)]({{ireloh}}1_484_dav.png)

a) Real space unit cell with the atoms inside. The beam orientation for image 484 is $[-1.52, -0.51, 0.65]$ as given by `uvw zone axis` using `dials.frame_orientations ` in the $[\bb x,\bb y,\bb z]$ base.
b) Same as a) after re-orienting the crystal in such a way that the beam coincides with the $z$ axis as assumed by the multislice implementation.
c) Reorientation using `scan_orientations.py` code. -->

<!-- Ireloh dataset 01

a  | b  | c  | d
-- | -- | -- | --   
[![]({{ireloh}}ireloh1_xy.gif)]({{ireloh}}ireloh1_xy.gif) | [![]({{ireloh}}ireloh1_yz.gif)]({{ireloh}}ireloh1_yz.gif) | [![]({{ireloh}}ireloh1_xz.gif)]({{ireloh}}ireloh1_xz.gif) | [![]({{ireloh}}ireloh1_abc.gif)]({{ireloh}}ireloh1_abc.gif)

The full $15\times 15\times 15$ crystal as it is rotated around the goniometer in real space.
a)$(x,y)$ and b)$(x,z)$ and c)$(y,z)$ planes.   
d) Crystal rotation in reciprocal space. -->

<!--
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
 c) Experimental diffraction pattern with projection of the reciprocal lattice vectors. -->


<!-- ### Zone axis simulation

xy | zx | zy
-- | -- | --
[![]({{ireloh}}001_xy.png)]({{ireloh}}001_xy.png) |  [![]({{ireloh}}001_zx.png)]({{ireloh}}001_zx.png) | [![]({{ireloh}}001_zy.png)]({{ireloh}}001_zy.png)

Simulation domain : $8\times 8$ super cell with padding corresponding to the blue domain shown in the $(x,y)$, $(z,x)$ and $(z,y)$ planes.

001  | 001   | 001
---- | ----- | -----
[![]({{ireloh}}001_SC.png)]({{ireloh}}001_SC.png) |  [![]({{ireloh}}001_SC.png)]({{ireloh}}001_SC.png) | [![]({{ireloh}}001_SC.png)]({{ireloh}}001_SC.png)

Typical simulated diffraction patterns after propagating through 100 unit cells thick crystal $\approx 1770A$. -->
