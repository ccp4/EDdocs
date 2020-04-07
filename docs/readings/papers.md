#Papers summary

- [ClabbersGrueneAbrahams2017](clabbersgrueneabrahams2017) : Protein structure determination by ED of 3D nanocrystal using Molecular Replacement and standard X-ray protein crystallography software.
- [LatychevskaiaAbrahams2019](#latychevskaiaabrahams2019) : Inelastic scattering and solvent scattering significantly mitigate the effect of dynamical diffraction.
- [SubrimanianSpence2015](#subramanianspence2015) : Simulation predicts dynamical diffraction too strong at thickness above 100-200nm.
- [CowleyMoodie1957](#cowleymoodie1957) : Original paper on multislice.

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

##CowleyMoodie1957
The response to an incident wave of immediately after passing through
slice $z_i$ is in the non relativistic case :
\begin{equation}
    \Psi(x,y,z_j+dz) = \Psi(x,y,z_j)e^{i\sigma\varphi (x,y,z_j) dz}
\end{equation}

where $\sigma=\pi/\lambda_0W_0=2\pi me\lambda/h^2$ is a scattering parameter and
$\lambda_0=h(2mW_0)^{-1}$ the unperturbed wavelength.
The approximation $W_0\gg \varphi$ has been used to simplify
$(1+\varphi(x,y,z)/W_0)^{1/2}-1\approx \varphi(x,y,z)/2W_0$.

The wave function in the plane of observation is :

\begin{eqnarray}
  \Psi(x) =
    \Bigg\{_N& &Q_N(-\frac{k_sx}{R})\ast\Big\{_{N-1} ... \\
       &\Big\{_2& Q_2(-\frac{k_sx}{R})\ast
          \big\{_1 Q_1(-\frac{k_sx}{R})\ast Q_0(-\frac{k_sx}{R})e^{\frac{ik_sR_1x^2}{2R^2}}\big\}_1
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
