#CowleyMoodie1957

## Formulation
The response to an incident wave of immediately after passing through
slice $z_i$ is in the non relativistic case :
\begin{equation}
    \Psi(x,y,z_j+dz) = \Psi(x,y,z_j)e^{i\sigma\varphi (x,y,z_j) dz}
\end{equation}

where $\sigma=\pi/\lambda_0W_0=2\pi me\lambda/h^2$
is a scattering parameter and
$\lambda_0=h(2mW_0)^{-1}$ the unperturbed wavelength.
The approximation $W_0\gg \varphi$ has been used to simplify
$(1+\varphi(x,y,z)/W_0)^{1/2}-1\approx \varphi(x,y,z)/2W_0$.

The exit wave function in the case of weak potential :

\begin{equation}
  \Psi(x) = P_NQ_N\ast\Bigg( P_{N-1}Q_{N-1}\ast...\ast\Big(P_1Q_1\ast Q_0 \Big)  \Bigg)
\end{equation}

where :
\begin{eqnarray}
  P_n(x) &=& \exp\Big(-j\pi k_0\Delta z\left(\frac{x}{R}\right)^2 \Big) \\
  Q_n(x) &=& Q_n\Big(-2j\pi k_0\left(\frac{x}{R}\right)\Big)   \\
\end{eqnarray}
where
$k_0=1/\lambda$ the wave number,
$Q_i$ are the planar Fourier transforms of the potential in each slice and
$x/R=2\theta$ where $2\theta$ is the inclination angle with the axis.
We can also write $Q_n=i\Delta zF_n$.
<!-- where $F_n$ is the 1D inverse Fourier transform
of the $3D$ structure factor performed along $l$ direction evaluated at position $z_n$. -->

## Diffraction pattern  
- Planar illumination at angle $\alpha$ : $F_0=\delta(\theta+\alpha)$
- Perfect crystal : $Q_n(-2k_s\theta)=i\Delta z\sum_h F_n(h)\delta(\theta+h\lambda/a)$

So :
\begin{eqnarray}
  (_1...)_1 &=& F_1(-2k_s(\theta+\alpha)) \\
  (_2...)_2 &=& \sum_{h_1}\sum_{h_2}F_1(h_1)F_2(h_2)
    e^{j\pi\Delta zk_0(\theta+h_2\lambda/2a)^2}
    \delta\left(\theta+\alpha+\frac{(h_1+h_2)\lambda}{2a}\right)
\end{eqnarray}

Generalizing by considering $h=\sum_{i=1}^N h_i$ in the direction $\theta =-\lambda/2a h - \alpha$ :
\begin{eqnarray}
  U(h) = K\left(i\Delta z\right)^N &&\sum_{h_N}..\sum_{h_1}F_N(h_N)..F_1(h_1) \\
  && \exp\Bigg(-j\pi\Delta zk_0\sum_{n=1}^{N} n\left(\frac{\lambda}{a^2}h_n^2  + \frac{\lambda}{a^2}\sum_{m=1}^{n-1}h_nh_m\right) \Bigg)
\end{eqnarray}

Expanding $F_i(h)=\sum_{l}F(h,l)e^{2j\pi lz/c}$ gives :
\begin{eqnarray}
  U(h) = K\left(i\Delta z\right)^N &&\sum_{h_N}\sum_{l_N}..\sum_{h_1}\sum_{l_1}F_N(h_N,l_N)..F_1(h_1,l_1) \\
  && \exp\Bigg(-j\pi\Delta zk_0\sum_{n=1}^{N} n\left(\frac{\lambda}{a^2}h_n^2  + \frac{\lambda}{a^2}\sum_{m=1}^{n-1}h_nh_m\right) \Bigg)
\end{eqnarray}


Expansion along the dominant terms is based on the number of F(0,0) factors included. F^N(0,0) is the central beam 0th order beam.
The $N$ first order terms are $F^{N-1}(0,0)$ which involves the contributions from individual slice Fourier transforms.


<!-- Using :
\begin{equation}
    \exp\Bigg\{
        -2i\pi\sum_{n=1}^{N} z_n(\zeta_n-\zeta_{n-1})
     \Bigg\}
     =\exp\Bigg\{-2i\pi
            \left(H\zeta_N - \Delta z \sum_{n=1}^{N}\zeta_n\right)
      \Bigg\}
\end{equation} -->

<!-- where $\zeta_n$ represents the distance along the l-direction in reciprocal space
of the paraboloid of reflection from the point
$\left(\sum_{r=1}^{n} h_r, \sum_{r=1}^{n} k_r, \sum_{r=1}^{n} l_r\right)$.

\begin{equation}
  \zeta_n=\lambda/2\Bigg\{
    \left( \sum_{r=1}^{n} h_r/a \right)^2 +
    \left( \sum_{r=1}^{n} k_r/b \right)^2
    \Bigg\}-\sum_{r=1}^{n} \frac{l_r}{c} +\frac{h_r}{a}\alpha_x +\frac{k_r}{b}\alpha_y
\end{equation} -->



## 2-beam approximation
