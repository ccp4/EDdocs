# Theory of Dynamical Diffraction

## kinematic approximation

The intensity of a Bragg spot can be established as :
\begin{equation}
  I_{kin}(S_g;t,v_g) = \left(\sigma v_g t\right)^2 sinc^2\left(S_gt\right)
\end{equation}
where :

- $S_g$ is the excitation error which is another notation for $q=\sin\theta/\lambda$.
- $t$ is the thickness.
- $\sigma$ the interaction parameter (in $rad/kVA$).
- $v_g$ the Fourier components (in $V$).

## 2-beam approximation

In [Bloch theory](/readings/Kirkland2010/#bloch-waves) using 2 beams approximation gives the intensity as :
\begin{equation}
  I_{dyn-2}(w_g;t,\xi_g) = \left(\frac{\pi t}{\xi_g}\right)^2
    sinc^2\left(\frac{t}{\xi_g}\sqrt{1+w_g^2}\right)
\end{equation}
where :

- $\xi_g=k_0/U_g$ is the Pendellosung thickness (in $A$) with $k_0=1/\lambda$ being the wave number.
- $w_g=S_g\xi_g$ is the excitation error scaled by $\xi_g$.
- $U_g=2me/h^2 v_g$ is the form factor Fourier component (in $A^{-2}$).

Since $\sigma v_g=\pi/\xi_g$ one can see that for $S_G=0$ the 2-beam intensity reduces to kinematic limit case for small thickness :
\begin{equation}
  I(0;t,\xi_g) = \left(\frac{\pi t}{\xi_g}\right)^2 sinc^2\left(\frac{t}{\xi_g}\right)
    \underset{t\ll\xi_g}{\rightarrow}
      \left(\frac{\pi t}{\xi_g}\right)^2
\end{equation}

Taking the arbitrary values $K=100A^{-1}$, $U_g=0.1A^{-2}$ gives a Pendullosung thickness $\xi_g=1000 A$ with patterns illustrated below for $t=100 A$ and $t=500A$.

I(0) kin vs dyn 2-beam $\xi_g=1000 A$ | I(w) kin vs dyn 2-beam
-----------------------|-----------------------
[<img src="/figures/kin_dyn0.svg" width="350" /> ](/figures/kin_dyn0.svg) | [<img src="/figures/kin_dyn.svg" width="350" />](/figures/kin_dyn.svg)
