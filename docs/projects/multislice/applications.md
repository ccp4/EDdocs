# Applications


[<img src="/projects/multislice/figures/biotin_vesta.png" style="float: right;" width="250" /> ](/projects/multislice/figures/biotin_vesta.png)
## Biotin
Main info :

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
- discrete angles :[ 0.          7.12501635 14.03624347 26.56505118 36.86989765 45. 56.30993247 63.43494882 71.56505118 80.53767779]


### Full rotational study
102=07.12deg | 201=26.56deg | 801=56.30deg
------------- | ------------ | ------------
[<img src="/projects/multislice/figures/biotin102.png" width="250" />](/projects/multislice/figures/biotin102.png) | [<img src="/projects/multislice/figures/biotin201.png" width="250" />](/projects/multislice/figures/biotin201.png) | [<img src="/projects/multislice/figures/biotin801.png" width="250" />](/projects/multislice/figures/biotin801.png)

102=07.12deg | 201=26.56deg | 801=56.30deg
------------- | ------------ | ------------
[<img src="/projects/multislice/figures/biotin_0_autoslic_pattern.png" width="250" />](/projects/multislice/figures/biotin_0_autoslic_pattern.png) | [<img src="/projects/multislice/figures/biotin_1_autoslic_pattern.png" width="250" />](/projects/multislice/figures/biotin_1_autoslic_pattern.png) | [<img src="/projects/multislice/figures/biotin_2_autoslic_pattern.png" width="250" />](/projects/multislice/figures/biotin_2_autoslic_pattern.png)



## BCC-Li test structure
The test structure is Cubic Body Centred with Lithium atoms and the beam  direction is along $[001]$ axis.

### Diffraction patterns
first 5 slice | last slice | animation
------------- | ---------- | ----------
[<img src="/projects/multislice/figures/bcc_pattern00.png" width="250" />](/projects/multislice/figures/bcc_pattern00.png) | [<img src="/projects/multislice/figures/bcc_pattern19.png" width="250" />](/projects/multislice/figures/bcc_pattern19.png) | [<img src="/projects/multislice/figures/bcc_pattern.gif" width="250" />](/projects/multislice/figures/bcc_pattern.gif)


### Lattice constant effect
The lattice constant is artificially multiplied by a factor of
$2^i, i=1..3$ i.e $a_x=3.4910A,6.9820A,13.9640A$ respectively.
Only one transverse cell is used but the number of longitudinal cells are adjusted so all cases reach a thickness of $3500A$.

Beam $1,1$ | Beam $2,0$ | Beam $4,0$
------ | ------ | -------
[<img src="/projects/multislice/figures/lattice_effect0.svg" width="250" >](/projects/multislice/figures/lattice_effect0.svg) | [<img src="/projects/multislice/figures/lattice_effect1.svg" width="250" />](/projects/multislice/figures/lattice_effect1.svg) | [<img src="/projects/multislice/figures/lattice_effect2.svg" width="250" />](/projects/multislice/figures/lattice_effect2.svg)

The Pendullosung thickness seems to depend linearly on the lattice constant but larger lattice constants result in higher intensity maxima and larger Pendullosung thickness.
<!-- Note that the most prominent beams are not in the same order for the different structures since their Pendullosung phase are different. -->


### Wobble effect

The wobble parameter is the RMS of the random displacement of atoms in the frozen phonon approximation.
Several runs are needed to provide an accurate picture of thermal effects.
Below the average azimuthal intensity is plotted for different amount of wobble. All simulation took 15 runs.

pattern 0 | pattern 1 | avg Intensity
--------- | --------- | -------------
[<img src="/projects/multislice/figures/wobble_effect0.png" width="250" />](/projects/multislice/figures/wobble_effect0.png) | [<img src="/projects/multislice/figures/wobble_effect1.png" width="250" />](/projects/multislice/figures/wobble_effect1.png) | [<img src="/projects/multislice/figures/wobble_effectIavg.svg" width="250" />](/projects/multislice/figures/wobble_effectIavg.svg) |


<!-- ###############################################################
                            Silicon
#################################################################### -->
## Silicon
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
[<img src="/projects/multislice/figures/Si_vg.svg" width="250" />](/projects/multislice/figures/Si_vg.svg) | [<img src="/projects/multislice/figures/Si_va.svg" width="250" />](/projects/multislice/figures/Si_va.svg) | [<img src="/projects/multislice/figures/Si_vz.svg" width="250" />](/projects/multislice/figures/Si_vz.svg)


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
[<img src="/projects/multislice/figures/Si_Shkl.png" width="250" />](/projects/multislice/figures/Si_Shkl.png) | [<img src="/projects/multislice/figures/Si_S100.png" width="250" />](/projects/multislice/figures/Si_S100.png) | [<img src="/projects/multislice/figures/Si_S110.png" width="250" />](/projects/multislice/figures/Si_S110.png)



#### Si Diffraction patterns
Intensities [100] ($100A$) | Intensities [100] ($326A$) | 2D intensities[1-10] ($400A$)
------------------------- | ------------------------ | -------------------
[<img src="/projects/multislice/figures/Si100_autoslic_pattern_109A.png" width="250" />](/projects/multislice/figures/Si100_autoslic_pattern_109A.png) | [<img src="/projects/multislice/figures/Si100_autoslic_pattern_326A.png" width="250" />](/projects/multislice/figures/Si100_autoslic_pattern_326A.png) | [<img src="/projects/multislice/figures/Si110_autoslic_pattern.png" width="250" />](/projects/multislice/figures/Si110_autoslic_pattern.png)


#### Si100 simulation

Beam intensities       | Beam $I_{022}$
---------------------- | -----------------
[<img src="/projects/multislice/figures/Si100_Ihk.svg" width="300" />](/projects/multislice/figures/Si100_Ihk.svg) | [<img src="/projects/multislice/figures/Si100_I22.svg" width="300" />](/projects/multislice/figures/Si100_I22.svg)


#### Si110 Simulation
Simulation setup [110] | Intensities autoslic | mulslice
---------------------- | -------------------- | --------
[<img src="/projects/multislice/figures/orientation.png" width="250" />](/projects/multislice/figures/orientation.png) | [<img src="/projects/multislice/figures/Si110_Ihk.svg" width="250" />](/projects/multislice/figures/Si110_Ihk.svg) | [<img src="/projects/multislice/figures/Si110_Ihk_mulslice.svg" width="250" />](/projects/multislice/figures/Si110_Ihk_mulslice.svg)

<!-- Simulation setup [110] | 2D Intensities (-h,-h,k) |  1D intensities(-h,-h,0)
---------------------- | ------------------------ | -------------------
[<img src="/projects/multislice/figures/orientation.png" width="250" />](/projects/multislice/figures/orientation.png) | [<img src="/projects/multislice/figures/si110_S_2D.png" width="250" />](/projects/multislice/figures/si110_S_2D.png) | [<img src="/projects/multislice/figures/si110_S_1D.svg" width="250" />](/projects/multislice/figures/si110_S_1D.svg) -->

<!-- **Pendulossung Thickness**
Using $200keV$ electrons (corresponding to $K\approx 40A^{-1}$), considering a 2-beam theory for the pair $[000]$, $[111]$ where $U_{111}=32f_{Si}^2(1/c_z)/\cc V_{cell}\underset{cz=5.431}= 0.115A^{-2}$, the Pendullosung thickness should then be around $\xi=345A$. -->





<!-- ## Paracetamol
### orientation [100]
transverse to the beam | along the beam | 3D
---------------------- | -------------- | ---
[<img src="/projects/multislice/figures/APAP100_xy.png" width="250" />](/projects/multislice/figures/APAP100_xy.png) | [<img src="/projects/multislice/figures/APAP100_xz.png" width="250" />](/projects/multislice/figures/APAP100_xz.png) | [<img src="/projects/multislice/figures/APAP100_3D.png" width="250" />](/projects/multislice/figures/APAP100_3D.png)

### orientation [001]
transverse to the beam | along the beam | 3D
---------------------- | -------------- | ---
[<img src="/projects/multislice/figures/APAP001_xy.png" width="250" />](/projects/multislice/figures/APAP001_xy.png) | [<img src="/projects/multislice/figures/APAP001_xz.png" width="250" />](/projects/multislice/figures/APAP001_xz.png) | [<img src="/projects/multislice/figures/APAP001_3D.png" width="250" />](/projects/multislice/figures/APAP01_3D.png) -->
