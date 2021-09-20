# Band structures

- [Fermi surfaces](http://www.phys.ufl.edu/fermisurface/)

article | citation | year | comment
------- | -------- | ---- | -------
**Multiple scattering theory(MST)**
Rayleigh         |      | 1892 | conductivity of lattice
Kasterin         |      | 1903 | Acoustics
Ewald            |      | 1912 | Optics (birefingence pb)
**Korringa Kohn Rostoker (KKR) - MST** |
Korringa         | 1750 | 1947 |  
[KohnRostoker1954](#kkr1954) | 1900 | 1954 | Green's function, Lithium
HamSegall1961    | ?    | 1961 |
Slater1972       | 1000 | 1972 |  
Beeby1967        | 200  | 1967 |  
**Augmented Plane Wave (APW)**
Slater1937       | 1250 | 1937 | first paper on augmented plane wave
[Burdick1963](#burdick1963) |      | 1963 | Cu with APW
**Reviews**
[Andersen1075](#andersen1075) |      | 1975 | linear methods in bnd



## KKR
### KKR1954
KohnRostoker1954
- **On the calculation of the energy of bloch a wave in a metal**
- **Solution of the schrödinger equation in periodic lattices with an application to metallic lithium**

*keywords* : Schrödinger equation, muffin-tin (crystal), variational, Green's functions

The inhomogeneous Schrödinger equation :
\begin{equation}
  \bigl(\grad_{\bb r}^2 + E\bigr)\Psi(\bb r) = V(\bb r)\Psi(\bb r)
\end{equation}
with boundary conditions in crystals (at Wigner-Seitz unit cell edges) :
\begin{eqnarray}
\Psi(\bb r + \bb R) &=& e^{j\bb k\cdot\bb R} \Psi(\bb r)\\
\dP_{\bb n_{\bb r + \bb R}}\Psi(\bb r + \bb R) &=& e^{-j\bb k\cdot\bb R} \dP_{\bb n_{\bb r}}\Psi(\bb r)
\end{eqnarray}

can be written in terms of Green's functions as :
\begin{eqnarray}
\Psi(\bb r) &=& \int_v G_0^+(\bb r,\bb\rp)V(\bb r)\Psi(\bb r)dv\\
  G_0^+(\bb r,\bb\rp)
    &=& \frac{-1}{4\pi}\sum_{\bb R}e^{j\bb k\cdot\bb R} \frac{e^{j\kappa |\bb r-\bb\rp+\bb R|} }{|\bb r - \bb\rp + \bb R|}\\
    &=& -\frac{1}{v}\sum_{\bb K} \frac{e^{j(\bb k+\bb K)\cdot(\bb r-\bb\rp)} }{(\bb k + \bb K)^2 - E}\\
\end{eqnarray}
where $\kappa=\sqrt E$, $\bb R$ the real space lattice, $\bb K$ is the reciprocal space lattice and $v$ the volume of the unit cell and $G(\bb r, \bb\rp)$ are the solutions to the homogeneous boundary value problem
$(\grad^2 + E)G(\bb r) = \delta (\bb r)$.

A variational formulation can be written by integrated after multiplication by $\Psi V$ and using a linear expansion for the trial functions $\Psi=\sum_i c_i\phi_i$ :
\begin{eqnarray}
  \delta \Lambda &=& \det\bb\Lambda_{ij} = 0 \\
  \Lambda &=& \int_v  \Psis(\bb r) V(\bb r) \Bigl[
      \Psi(\bb r) - \int_v G_0^+(\bb r,\bb\rp)V(\bb\rp)\Psi(\bb\rp) dv^{\prime} \Bigr]dv
          &=& \sum_{i,j}c_i^{*}\Lambda_{ij}c_j
\end{eqnarray}      

Assuming the potential is spherically symmetric, vanishing at $r=r_i$, using Green's divergence theorem, the spherical harmonics expansions for both Green's functions and the trial function
$\Psi(\bb r) = \sum_{l,m} c_{lm}R_l(r)Y_{l,m}(\bb e_r)$ basis :
<!-- \begin{eqnarray}
  \Lambda &=& \int_{r=r_i-2\eps} ds\int_{\rp=r_i-\eps}ds^{'}\bigl[\dP_r\Psis - \Psis\dP_r \bigr] \\
    && ~~~~~~ \times \bigl[ \Psi\dP_{\rp} G_0^+(\bb r,\bb\rp) - G_0^+(\bb r,\bb\rp)\dP_{\rp}\Psi\bigr]\\      
  \det\bb\Lambda_{\lmlmp}&=& \bigl(L_l - j_l\bigl) \Bigl[
      \bigl[A_{\lmlmp}j_{\lp}^{'}+\kappa n_{\lp}^{'}\delta_{\lmlmp}\bigr]
    - \bigl[A_{\lmlmp}j_{\lp}    +\kappa n_{\lp}    \delta_{\lmlmp}\bigr]L_{\lp}
    \Bigr]\\
\end{eqnarray} -->
\begin{eqnarray}
  \det\Lambda_{\lmlmp} &=& \Biggl\lvert
    A_{\lmlmp} +\kappa\delta_{\lmlmp}\frac{\nplp - \nlp\Llp}{\jplp - \jlp\Llp}
  \Biggr\rvert = 0\\
    A_{\lmlmp} &=& 4\pi j^{l-\lp}\sum_{L} D_{L,m-\mp}
      \cc G_{L,m-m^{\prime},l,m,\lp,\mp} ~~~\mbox{,}~L=|l-\lp|,..,l+\lp-2,l+\lp\\
    D_{L,M} &=& -j\kappa\Biggl[
    \sum_{\bb R_n\neq\bb 0}e^{j\bb k\cdot\bb R_n}
      h_L^{(2)}(\kappa R_n)Y_{LM}^{*}(\theta_n,\phi_n)
      + \frac{1}{\sqrt{4\pi}}\delta_{L0,M0}\Biggr]\\
  L_l&=&\frac{\dP_r R_l|_{r=r_i}}{R_l(r_i)}
\end{eqnarray}

where $A_{\lmlmp}$ are the **structure constants** which only depend on energy and lattice type, $z^{\prime} = \dP_{\rho}z(\rho)|_{\rho=\kappa r_i}$, with $j_l=j_l(\kappa r)$ and $n_l=n_l(\kappa r)$ are the spherical Bessel functions and spherical Neumann functions, $h_l^{(2)}$ is the spherical Hankel functions of the second kind, $R_l(r)$ are the Coulomb functions and $\bb G$ are the gaunt coefficients.

### HamSegall1961
**Energy bands in periodic lattices Green's function method**

- $\Psi=\sum_{l,m} j^l C_{lm} R_lY_{lm}$, real angular $Y_{lm}$, $C_{lm}$ real if inversion symmetry, $A_{\lmlmp}=j^{l-\lp}B_{\lmlmp}$, $\cc D_{LM}=j^{-L}D_{LM}$ .
- plane waves outside the inscribed spheres matching $\Psi$ at $r=r_i$.
- Mathieu potential (toy case) GF+ perturbation theory for comparison with exact analytical solutions.



## APW
### Burdick1963
**Energy band structure of copper**
{%set figs='/figures/readings/burdick1963/' %}
fcc with $a=3.6147A$, $r_i=a\sqrt 2/4$, $E_f=-0.38Ry$

a   | b   | c
--- | --- | ---
[![]({{figs}}fcc_brillouin.png)]({{figs}}fcc_brillouin.png)  | [![]({{figs}}Vcu.svg)]({{figs}}Vcu.svg)  | [![]({{figs}}bands.svg)]({{figs}}bands.svg)


## Reviews
### Andersen1975

- linear APW : combines APW and OPW(pseudo-potential)
- LMTO : combines kkr, cellular and tight-binding

transition-metals fermi surfaces 0.01Ry to measured values
