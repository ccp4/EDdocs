# MultiScat
{% set figs='/figures/nearBragg/' %}

## Formulation



### Primary scattering from direct beam
Scattering from direct beam at pixel $p$ from atom $j$ :
\begin{equation}
  F_j(\bb u_p) = f_j(\theta_{p})e^{2\pi jk_0\big(z_j+R_{jp}\big)}
\end{equation}

The intensity at pixel $l$ is then :
\begin{equation}
  I(\bb u_p) = \Bigg|\sum_{j=1}^{N} F_j(\bb u_p) \Bigg|^2
\end{equation}

The amount of power scattered by atom $j$ is $\sigma_jI_0=f_j^2I_0$ which has to
be taken off the power of the incident beam $I_0$.

### Secondary scattering
Scattering from atom $i$ due to scattering by atom $j$ :
\begin{equation}
  F_{ji}(\bb u_l) = f_j(\theta_{ij})e^{2j\pi k_0\big(z_j+r_{ij}\big)}
     f_i(\theta_{p}-\theta_{ij})e^{2\pi jk_0R_{jp}}
\end{equation}

\begin{eqnarray}
  I(\bb u_p)
  &=&\Bigg|\sum_{j=1}^{N}\Bigg(\tilde F_j(\bb u_p) +
    \sum_{i\neq j}^{N} F_{ij}(\bb u_p) \Bigg)\Bigg|^2 \\
  &=&\Bigg|\sum_{j=1}^{N}e^{2\pi jk_0z_j}\Bigg(
    f_j(\theta_{p})e^{2\pi jk_0R_{jp}} + \sum_{i\neq j}^{N} f_j(\theta_{ij}) f_i(\theta_{p}-\theta_{ij})e^{2j\pi k_0R_{ip}}\Bigg)\Bigg|^2 \\    
\end{eqnarray}

Similarly to scattering from direct beam, secondary scattering should reduce the
amplitude of primary scattering by the amount scattered b

### Path length estimate
The path length may be computed with the following increasing level of approximations:
\begin{eqnarray}
R_{ij}
      &\underset{Greens}{=}& \sqrt{\left(x-x_0\right)^2+\left(z-z_0\right)^2} \\
       &\underset{Fresnel}{\approx}&     \left(z_0-z\right) + \frac{\left(x-x_0\right)^2}{2\left(z_0-z\right)} \\
       &\underset{Fraunhofer}{\approx}&  \left(z_0-z\right) + \frac{x_0^2}{2\left(z_0-z\right)} - \frac{xx_0}{\left(z_0-z\right)}  \\
\end{eqnarray}

Note that the path length from the source the to atom is $z$ for planar illumination.



\begin{eqnarray}
R_{il}
      &\underset{Greens}{=}& \sqrt{\left(x_i-x_l\right)^2+\left(z_i-z_l\right)^2} \\
       &\underset{Fraunhofer}{\approx}&  \left(z_l-z_i\right) + \frac{x_l^2}{2\left(z_l-z_i\right)} - \frac{x_ix_l}{\left(z_l-z_i\right)}  \\
\end{eqnarray}






## NearBragg James Holton
An [algorithm](https://bl831.als.lbl.gov/~jamesh/nearBragg/) computing the interference patterns of an assembly of scatterers based
on their path difference to a detector.

Source file format : x,y,z, O,B,P

### Parameters

Type                | parameters | default (m)
----- --------------|----------- | ----------
**detector**        |distance | 0.1
                    |detsize,detpixels,pixel | 0.1, 0.1e-3
**beam spectral**   |lambda,dispersion,dispteps | 1e-10, 0,-1
**beam spatial**    |divergence,divsteps,hdivrange,vdivrange,hdivsteps,vdivsteps | -1
                    |source_distance,source_depth,depthstep | 10,0,-1
**misc**            |oversample,curvedet,point_pixel, Xbeam,Ybeam
**features**        |coherent, nopolar + occ, bfactor, phase-shift through file parsing
**io**              |file,cosfile,sinfile,floatfile,intifle
                    |scale, roi
**print**           |noprogress, printout, accumulate

### Code structure

```
double fluence = 1.25932015286227e+29;//incident flux in particles/m^2 */
double r_e_sqr = 7.94079248018965e-30;//classical radius of the electron
double steps = divsteps*dispsteps*depthsteps*oversample*oversample;//total number of sub-steps to normalize over
double airpath = sqrt(pixel_X*pixel_X+pixel_Y*pixel_Y+pixel_Z*pixel_Z);//solid angle subtended by a pixel from the origin: (pix/airpath)^2*cos(2theta)
double omega_Rsqr_pixel = pixel*pixel*distance/airpath;//m^2
    DWF = occ[i]*exp(-Bfac[i]*stol**2)
    Fa+=DWF*cos(phase)/source_to_atom_path/atom_to_pixel_path
    I += Fa**2 + Fb**2;// normalized intensity
floatimage[j] += I/steps*omega_Rsqr_pixel*fluence*r_e_sqr;
```

### Monte-Carlo style

Mutliple and inelastic scattering :

- Stochasticly using the theoretical scattering rate.
- The differential scattering cross section can be used for more accurately account for the scattering factor of individual atoms.
- Inelastic scattering loss of coherency and spectral broadening can be represented through rigorous bookeeping.



### mosaicity
[nanobragg]https://bl831.als.lbl.gov/~jamesh/nanoBragg/)

According to [wiki](https://en.wikipedia.org/wiki/Mosaicity), dynamical diffraction is often negligible when high level of mosaicity is involved.

- `mosaic_spread=argv[-mosaic]/RadToDeg` : isotropic mosaic spread in degrees (use 90 for powder)
- `mosaic_domains=argv[-mosaic_dom]` : number of randomly-oriented mosaic domains to render
- `mosaic_seed=argv[mosaic_seed]` : random-number seed for mosaic domain generation (default: 1234567)
- `mosaic_umats` : rotation matrix
- `mosaic_missets` and `missets_seeds`



## pyCode
### Comparison with Holton
- solid_angle detector
- pixel offset
- X/Z reverse
- no scattering form factor

pattern | Intensity
------- | ---------
[<img src="{{figs}}comparisonHoltonPattern.svg" width="350" /> ]({{figs}}comparisonHoltonPattern.svg) | [<img src="{{figs}}comparisonHolton.svg" width="350" /> ]({{figs}}comparisonHolton.svg)


comparison | error
---------- | ---------
[<img src="{{figs}}path_length.svg" width="350" /> ]({{figs}}path_length.svg) | [<img src="{{figs}}path_length_diff.svg" width="350" /> ]({{figs}}path_length_diff.svg)
