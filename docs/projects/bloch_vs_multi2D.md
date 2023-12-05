# Comparison of Bloch and Multislice

## Schrodinger's equation
The Schrodinger's equation is :
\begin{equation}
  \left\{-\frac{h^2}{2m}\grad^2 -eV(\bb r) \right \} \Psi_f(\bb r) = E\Psi_f(\bb r)
\end{equation}

where $V$ is the crystal electrostatic potential.

### multislice approach
In multislice, using fast electron assumption $(\lambda|\dP_z^2\Psi|\ll|\dP_z\Psi|)$ and
$\Psi_f(\bb r) = e^{2i\pi k_0z}\Psi(\bb r)$:
\begin{equation}
  \frac{\dP\Psi(\bb r)}{\dP_z} =
    \left\{\frac{i\lambda}{4\pi}\grad^2_{\perp} + i\sigma V(\bb r)\right\} \Psi(\bb r)
\end{equation}

where $\sigma=2\pi me\lambda/h^2$.

### Bloch wave approach

Assuming Bloch waves expansion :
\begin{equation}
  \Psi_{j}(\bb r) = \sum_{\bb g}C_{j\bb g}e^{2\pi i(\bb k_j + \bb g)\cdot\bb r}
\end{equation}

where $k_j=k0+gamma_j$ results in matrix diagonalization for $gamma_j$:

\begin{equation}
  2k_0S_{\bb g} C_{\bb g j} + \sum_{\bb h\neq \bb g} U_{\bb g-\bb h}C_{\bb h j} = 2k_0\gamma_jC_{\bb g j}
\end{equation}

where the excitation error is $2k_0S_{\bb g} = k_0^2 - |\bb k_0+\bb g|^2$ and
the normalized potential
$U_{\bb g}=\frac{\sigma}{\pi\lambda} V_{\bb g}$

And the total wave function is :
\begin{equation}
  \Psi(\bb r) = \sum_{j}\alpha_j \Psi_j(\bb r) = \sum_{\bb g}\Psi_{\bb g}(z)e^{2i\pi(\bb k_0+\bb g)\cdot \bb r)}
\end{equation}

With propagating waves
$\Psi_{\bb g}(z) = \alpha_jC_{\bb g j}e^{2i\pi\gamma_jz}$
and the relative amplitudes of the Bloch waves $\alpha_j$ given by boundary conditions that
$\Psi_{\bb g}(z=0)=\delta_{\bb g,\bb 0}$ so that :

\begin{equation}
  \Psi(\bb r_{\perp},z) = \sum_{\bb g}S_{\bb g}
\end{equation}

## Potential and form factor
### Real space potential
The real space potential at $\bb r$ is :

\begin{equation}
  V(\bb r) = \sum_j V_j(||\bb r - \bb r_j||)
\end{equation}

where the potential contribution from atom $j$ located at $\bb r_j$ is :

\begin{equation}
  V_j(r) = \exp\left\{ \left(-\frac{r}{a_j} \right)^2 \right\}
\end{equation}

where $a_j=0.1,0.25,0.26,0.27,1.5$ for atom type 0 to 5 respectively.

### Form factor and structure factor
The form factor being the Fourier transform of a [Gaussian](https://en.wikipedia.org/wiki/Fourier_transform#Square-integrable_functions,_one-dimensional) from atom $i$ is :
\begin{equation}
  f_j(q) = \sqrt{\pi/\alpha_j}\exp\left(-\big(\pi q\big)^2/\alpha_j \right)
\end{equation}

where $\alpha_j=1/a_j^2$
and the structure factor :
\begin{equation}
  V_{\bb g} = frac{1}{\Omega}\sum_j f_j(\bb q_{hk})
    \exp\left\{ -2i\pi \left(hx_j + ky_j\right)\right\}
\end{equation}

where $\bb g=(h,k)$.

## 2-beam setup
### Theory

In [Bloch theory](/readings/Kirkland2010/#bloch-waves) using 2 beams approximation gives the intensity as :
\begin{equation}
  I_{dyn-2}(w_g;t,\xi_{\bb g}) = \left(\frac{\pi t}{\xi_{\bb g}}\right)^2
    sinc^2\left(\frac{t}{\xi_{\bb g}}\sqrt{1+w_{\bb g}^2}\right)
\end{equation}
where :

- $\xi_{\bb g}=k_0/U_{\bb g}$ is the Pendellosung thickness (in $A$) with $k_0=1/\lambda$ being the wave number.
- $w_{\bb g}=S_g\xi_g$ is the excitation error scaled by $\xi_g$.
- $U_{\bb g}=2me/h^2 v_{\bb g}=F_{\bb g}/\cc V_{cell}$ is the form factor Fourier component (in $A^{-2}$).
