# Bonding in Crsytals

{% set figs='/figures/readings/bonding/'  %}

## Zuo1997
The theoretical charge density of silicon: experimental testing of exchange and correlation potentials.

Accurate X-ray/ED reflection measurements of exchange and correlation potentials. Since Silicon is monoatomic, the form factor can easily be found from the structure factor and therefore give information on the actual electronic density.

Several Methods are used to compare the th density to experiment   :

- MCFD      : multi-configurational Dirac-Fock)
- MCDF-WBSJ : singly excited configurations
- CI        : doubly excited configurations
- HF-LCAO : Hartree-Fock Linear combination of atomic orbitals
- LAPW : Linearized Augmented Plane Wave (WIEN95) (in-house Vienna)
- DFT :
    - LDA : Local density approximation
    - GGA-PW : Gradient augmented Perdew
    - GGA-EV : Gradient augmented Vosko

tab1 | tab2 | fig4 | fig7
---- | ---- | ---- | --  
[![]({{figs}}zuo1997_1.png)]({{figs}}zuo1997_1.png) |  [![]({{figs}}zuo1997_2.png)]({{figs}}zuo1997_2.png) | [![]({{figs}}zuo1997_4.png)]({{figs}}zuo1997_4.png) |  [![]({{figs}}zuo1997_7.png)]({{figs}}zuo1997_7.png)  

- table 1: Overall LAPW-GGA and LCAO are the best
- Table2 :
    - 22 high order reflections represent core electrons (440) to (880).
    - th structure factor multiplied by $\exp(-Bg^2/4)$ where $B$ is adjustable.
    - LCAO and MCDF are the best. For DFT based, LAPW always better than DS(Dirac-Slatter) with EV functional better.
- figure 4 :
    - Bonding Charge density synthesized from Fourier transform limited experimental resolution  
    - LAPW-LDA/GGA-PW both reproduce the charge density peak in the Si-Si bond region  
    - flat negative distribution should however be found around the Si atomic sites
    - The large fluctuations in the core regions likely due to valence electrons as shown in fig7
    - As opposed to EV, LAPW-GGA-PW fails to capture well high order reflections.
