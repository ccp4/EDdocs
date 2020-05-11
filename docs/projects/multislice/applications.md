# Applications
## Effect of parameters 

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
Intensities [100] ($100A$) | Intensities [100] ($225A$) | 2D intensities[1-10] ($400A$)
------------------------- | ------------------------ | -------------------
[<img src="/projects/multislice/figures/Si100_autoslic_pattern100A.png" width="250" />](/projects/multislice/figures/Si100_autoslic_pattern100A.png) | [<img src="/projects/multislice/figures/Si100_autoslic_pattern225A.png" width="250" />](/projects/multislice/figures/Si100_autoslic_pattern225A.png) | [<img src="/projects/multislice/figures/Si110_autoslic_pattern.png" width="250" />](/projects/multislice/figures/Si110_autoslic_pattern.png)


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

**Pendulossung Thickness**

Using $200keV$ electrons (corresponding to $K\approx 40A^{-1}$), considering a 2-beam theory for the pair $[000]$, $[111]$ where $U_{111}=32f_{Si}^2(1/c_z)/\cc V_{cell}\underset{cz=5.431}= 0.115A^{-2}$, the Pendullosung thickness should then be around $\xi=345A$.
