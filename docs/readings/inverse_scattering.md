# Inverse scattering problem
- [allen1998](#allen1998) : Allen, L. J., Josefsson, T. W., & Leeb, H. (1998). Obtaining the Crystal Potential by Inversion from Electron Scattering Intensities. Acta Crystallographica Section A: Foundations of Crystallography, 54(4), 388–398. [doi](https://doi.org/10.1107/S0108767398003560)
- [spence2020](#spence2020) : Donatelli, J. J., & Spence, J. C. H. (2020). Inversion of Many-Beam Bragg Intensities for Phasing by Iterated Projections: Removal of Multiple Scattering Artifacts from Diffraction Data. Physical Review Letters, 125(6), 65502. [doi](https://doi.org/10.1103/PhysRevLett.125.065502)
- [shen1998](#shen1998) : Shen, Q. (1998). Solving the phase problem using reference-Beam X-ray diffraction. Physical Review Letters, 80(15), 3268–3271. [doi](https://doi.org/10.1103/PhysRevLett.80.3268)




## Allen1998
{% set allen1998='/figures/readings/allen1998/' %}

Allen, L. J., Josefsson, T. W., & Leeb, H. (1998). Obtaining the Crystal Potential by Inversion from Electron Scattering Intensities. Acta Crystallographica Section A: Foundations of Crystallography, 54(4), 388–398. [doi](https://doi.org/10.1107/S0108767398003560)


Non linear system to solve from imposing the **unitarity** of $\bb S$ and imposing diagonal relationship of $\bb S=e^{2j\pi\bb A t}$ :
\begin{eqnarray}
  \sum_f |S_{gf}||S_{hf}|\cos(\theta_{gf}-\theta_{hf}) &=& \delta_{g,h}   ~\mbox{,}~ g \neq h\\   
  \sum_f |S_{gf}||S_{hf}|\sin(\theta_{gf}-\theta_{hf}) &=& 0              ~\mbox{,}~ g \neq h\\   
  \big(2K/jt\big)\big(ln S\big)_{gg} &=& -\big( \bb k_t+\bb g \big)^2 \\
  \gamma^{(i)} t &=& \big(\theta^{(i)}+2n^{(i)}\pi\big)
\end{eqnarray}

Where $S_{gf}=|S_{gf}|e^{j\theta_{gf}}$ and $ln S = \bb C \Gamma \big[j\gamma^{(i)}t\big] \bb C^{\dagger}$ and $t$ the thickness (assuming it is known). There are $2N^2+2N$ equations, $N(N-1)+2N$ independent equations and $N^2+N$ unknowns $\theta_{gf}$, $\theta_{gg}$ and $n^{(i)}$.


The measured intensity matrix $\bb M$ = $|\bb S|^2$ is simulated.
The inverse scattering problem is then solved through the non linear equations using **global Newton's method** for :

- systematic row ZnS[111] at 100keV@100A (and 400A) for  5, 7 and 13 beams.
- zone axis case GaAs[110] at 400keV@112A.

0  | 1  | 2  | 3
-- | -- | -- | --
[![]({{allen1998}}eq25.png)]({{allen1998}}eq25.png) | [![]({{allen1998}}fig1.png)]({{allen1998}}fig1.png) | [![]({{allen1998}}fig2.png)]({{allen1998}}fig2.png) | [![]({{allen1998}}fig3.png)]({{allen1998}}fig3.png)




## Spence2020
{% set spence2020='/figures/readings/spence2020/' %}

Inversion of Many-Beam Bragg Intensities for Phasing by Iterated Projections

[![]({{spence2020}}flowchart0.png)]({{spence2020}}flowchart0.png) [![]({{spence2020}}flowchart1.png)]({{spence2020}}flowchart1.png)
The flowcharts for recovering the electrostatic potential from magnitude data $\bb M$. The methods differ from how the amplitude matrix $\bb S$ is computed from the lambda matrix $\bb A$ and from how the structure matrix $\tilde{\bb A}$ is updated from the corrected matrix $\tilde{\bb S}$.

Tests were conducted on $GaAs$ and spinel showing Pearson correlation coefficients with reference structure factors above 0.85 for 100keV and 100nm thickness.  


## Shen1998
{% set shen1998='/figures/readings/shen1998/' %}

Solves the phase problem for three-beam interaction in a 2-beam rotation experiment.
The main beam is $\bb D_0$ the bragg excited beam is $\bb D_G$ and the measured diffracted beams are $\bb D_H$. $F_G, F_H, F_{H-G}$ are the structure factors and $R(\theta)$, $\nu(\theta)$ are measured amplitude and phase of $D_G/D_0$ with $\theta$ the rocking curve angle about $\bb G$. The anomalous integrated diffracted intensities I_H can be used to work out the phase $\delta_{HG}$.      

1  | 2
-- | --
[![]({{shen1998}}fig1.png)]({{shen1998}}fig1.png) |  [![]({{shen1998}}fig2.png)]({{shen1998}}fig2.png) |
![]({{shen1998}}eq1.png) | ![]({{shen1998}}eq4.png)
