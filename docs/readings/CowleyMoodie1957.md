#CowleyMoodie1957
{% set figs='/figures/readings/cowley/' %}

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


## Diffraction pattern  

The diffraction pattern in 2D for reflection $h$ is expressed after expansion of the convolutions as :   
\begin{eqnarray}
  U(h) = \left(j\Delta z\right)^Ne^{4\pi jk_0H\theta^2} &&
  \sum_{h_1}\sum_{l_1}..\sum_{h_{N-1}}\sum_{l_{N-1}}\sum_{l}
  F(h_{N-1},l_{N-1})..F(h_1,l_1)\\
  && F\Big(h-\sum_{n}^{N-1}h_n,l-\sum_{n}^{N-1}l_n\Big)
  \exp\Bigg[-2\pi j\big(H\zeta - \Delta z\sum_{n=1}^{N-1}\zeta_n\big)\Bigg]
\end{eqnarray}

where $k_0=1/\lambda$, $H$ is the thickness of the sample, $\theta=x/R=\lambda/a$ is the scattered angle, $F(h,k)=-j/\Delta z + \sigma E(h,k)$, $E(h,k)$ is the structure factor.
$\zeta$ the excitation error of beam $(h,l)$ and $\zeta_n$ is the excitation error for beam $\left(\sum_r^n h_r,\sum_r^n l_r\right)$ :
\begin{equation}
  \zeta_n = \frac{1}{2k_0a^2}\left(\sum_{r=1}^n h_r\right)^2 - \sum_{r=1}^n \frac{l_r}{c}
\end{equation}

Note that $\sum_{r=1}^N h_r=h$.

The Ewald circle (sphere in 3D) being approximated by a parabola (paraboloid in 3D) of equation :
\begin{equation}
  w = \frac{1}{2k_0}u^2
\end{equation}

a  | b
-- | --
[![]({{figs}}parabola.svg)]({{figs}}parabola.svg) | [![]({{figs}}scat3_1.svg)]({{figs}}scat3_1.svg)

a) Distance $\zeta_n^{(MS)}$ to the Ewald paraboloid as approximated by multislice.
$\zeta^{(BW)}$ is the exact distance to the Ewald sphere known as the excitation error in the blochwave theory.
Point P shows the projection of reciprocal point $(u_n,w_n)$ onto the Ewald paraboloid.
The solid curve The paraboloid The dashed blue curve shows the Ewald sphere  to the Ewald sphere is quite accurate due to the large wave vector.
b) Multiple scattering picture in a generic configuration in the case $N=3$ slices located at $z_1$, $z_2$, $z_3$. The beam is scattered by $h_1$, then by $h_2$ and by $h_N$ which results in the overall contribution to reflection $h=h_1+h_2+h_N$ (using $l_1=l_2=l=0$). The subsequent excitation errors $\zeta_i$ are shown as open blue circles.


### Explicit expansion

The diffraction pattern at index $h$ is expanded :

\begin{eqnarray}
  U(h) = \left(j\Delta z\right)^Ne^{4\pi jk_0H\theta^2} &&
  \sum_{h_1}\sum_{l_1}..\sum_{h_{N-1}}\sum_{l_{N-1}}\sum_{l}
  F(h_{N-1},l_{N-1})..F(h_1,l_1)\\
  && F\Big(h-\sum_{n}^{N-1}h_n,l-\sum_{n}^{N-1}l_n\Big)
  \exp\Bigg[-2\pi j\big(H\zeta - \Delta z\sum_{n=1}^{N-1}\zeta_n\big)\Bigg]
\end{eqnarray}

which for $N=3$, ignoring sums over $l_r$, is explicitly expanded as :
\begin{eqnarray}
  U(h)\propto
      & & F_{0,0}\Bigg[
        { F_{0,0}F_{h  ,0}\expj{z_3\zeta}}+..+
        {F_{i,  0}F_{h-i,0}\expj{z_2\zeta_1^{(i  )}+z_3(\zeta-\zeta_1^{(i  )})}} +..+
        { F_{h,0}F_{0  ,0}\expj{z_2\zeta}}
        \Bigg] \\
      &+& F_{i,0}\Bigg[
        {F_{0,0  }F_{h-i,0}\expj{z_1\zeta_1^{(i  )}+z_3(\zeta-\zeta_1^{(i  )})}} +..+
        {F_{h-i,0}F_{0  ,0}\expj{z_1\zeta_1^{(h-i)}+z_3(\zeta-\zeta_1^{(h-i)})}}
        \Bigg] +.. \\
      &+& F_{h-i,0}\Bigg[
        {F_{0,0}F_{i,0}\expj{z_1\zeta_1^{(h-i)}+z_2(\zeta-\zeta_1^{(h-i)})}} +..+
        {F_{i,0}F_{0,0}\expj{z_1\zeta_1^{(i  )}+z_2(\zeta-\zeta_1^{(i  )})}}
        \Bigg] +.. \\
      &+& F_{h,0}\Bigg[
        {F_{0,0}^2\expj{z_1\zeta}}
        + F_{j,0}F_{-j,0}\expj{z_1\zeta_1^{(h+j)}+z_2(\zeta-\zeta_1^{(h+j)})} + ..
        \Bigg]\\
    = & & {F_{0,0}^2F_{h,0}\Bigg[\expj{z_3\zeta}+\expj{z_2\zeta}+\expj{z_1\zeta}\Bigg]}\\
      &+& {F_{0,0}\Bigg[
        \sum_{i\neq 0,h} F_{i,0}F_{h-i} \Big\{
          \expj{z_2\zeta_1^{(i)}+z_3(\zeta-\zeta_1^{(i)})}
          \expj{z_1\zeta_1^{(i)}+z_3(\zeta-\zeta_1^{(i)})}
          \expj{z_1\zeta_1^{(i)}+z_2(\zeta-\zeta_1^{(i)})}
        \Big\}\Bigg]}\\
      &+& \Bigg[
        \sum_{i\neq 0,h}\sum_{j\neq 0,h-i}F_{i,0}F_{j,0}F_{h-i-j,0}
           \expj{ z_1\zeta_1^{(i)}+z_2(\zeta_2^{(i+j)}-\zeta_1^{(i)})+z_3(\zeta-\zeta_2^{(i+j)})}\\
        && +F_{h,0}\sum_{j\neq 0}F_{j,0}F_{-j,0}\expj{z_1\zeta_1^{(h+j)}+z_2(\zeta-\zeta_1^{(h+j)})}
          \Bigg]\\
    = & & {F_{0,0}^2F_{h,0}\sum_m\expj{z_m\zeta} }\\
      &+& {F_{0,0}\Bigg[
        \sum_{i\neq 0,h} F_{i,0}F_{h-i} \sum_m\sum_{n>m}\expj{z_m\zeta_1^{(i)}+z_n(\zeta-\zeta_1^{(i)})}
        \Bigg]}\\
      &+& ..
\end{eqnarray}

a  | b  | c
-- | -- | --
[![]({{figs}}scat2_0.svg)]({{figs}}scat2_0.svg) |  [![]({{figs}}scat2_1.svg)]({{figs}}scat2_1.svg) |  [![]({{figs}}scat2_2.svg)]({{figs}}scat2_2.svg) |

Two level scattering where first and secondary scattering take place in slices a) $z_1$, $z_2$ b) $z_1$, $z_3$ and c) $z_2$, $z_3$.


Expansion along the dominant terms is based on the number of $F(0,0)$ factors included in the sum.
The terms $F_{0,0}^{N-1}$ are the strongest terms corresponding to single scattering, then the $F_{0,0}^{N-2}$ corresponds to 2-scattering events and so on.

If $h=0$, the terms $F_{0,0}^{N_1}F_{h,0}$ becomes $F^N_{0,0}$ which is the zeroth order direct beam,
the second order scattering become first order terms and so on.


### Direct unscattered beam

There is only one term in the expansion containing $F^N(0,0)$. This term corresponds to the unscattered direct beam and only contributes to $U(0)$ component. We can evaluate it when $\Delta z\rightarrow 0$, $N\rightarrow\infty$ maintaining $N\Delta z=H$

\begin{eqnarray}
  U(0)^{(0)}
    &=& \left(j\Delta z\right)^N F^N(0,0)\\
    &=& \left(1 + j\Delta z\sigma E(0) \right)^N \\
    &\underset{\Delta z\rightarrow 0,N\rightarrow\infty}\rightarrow& e^{j\sigma E(0)H}
\end{eqnarray}

### Single scattering
There are $N$ first order terms containing factors $F^{N-1}(0,0)F(h,l)$.
These are all the terms using $h_n=0$ in each sum except for one of the sums for which $h_m=h$. Those terms correspond to single scattering contributions to reflection $h$ :

\begin{eqnarray}
  U(h)^{(1)} &\propto&
    (j\Delta z)^{N-1}F_{0,0}^{N-1}\sum_{l}F_{h,l}\sum_{m}e^{-2j\pi\zeta z_m}\\
    &\underset{\Delta z\rightarrow 0}=&e^{j\sigma E_{0,0}H}
      \sum_{l}jF_{h,l}\int_0^{H} e^{-2\pi j\zeta z}dz\\
    &\approx& je^{j\sigma E_{0.0}H}e^{-j \pi\zeta H}F_{h,l_0}\left(\frac{\sin(\pi\zeta H)}{\pi\zeta}\right)
\end{eqnarray}

where $h,l_0$ is the reciprocal beam that is the closest to the Ewald paraboloid.


### Double scattering

There are $N(N-1)/2$ terms containing
$F_{0,0}^{N-2}\sum_{h_1}\sum_{l_1}F_{h_1,l_1}F_{h-h_1,l-l_1}$ and the cross-coupled excitation exponent expands as
\begin{eqnarray}
  \zeta_n &=& 0       ~\mbox{  if  }~ 0\le n<m_1\\
  \zeta_n &=& \zeta_1 ~\mbox{  if  }~ m_1\le n<m_2\\
  \zeta_n &=& \zeta   ~\mbox{  if  }~ n\ge m_2\\
\end{eqnarray}

so that
$H\zeta - \Delta z\sum_{n=1}^{N-1} \zeta_n=
H\zeta - \Delta z(m_2-m_1)\zeta_1-\Delta z(N-m_2)\zeta=
z_1\zeta_1+z_2(\zeta-\zeta_1)$
and:

\begin{eqnarray}
  U(h)^{(2)} &\rightarrow&
    -j^2e^{j\sigma HE_{0,0}}\sum_{l}\sum_{h_1}\sum_{l_1}F_{h_1,l_1}F_{h-h_1,l-l_1}\\
    && \int_0^H\int_{z_1}^H  e^{-2j\pi \left(z_1\zeta_1+z_2(\zeta-\zeta_1)\right)}dz_1dz_2\\
    &=& -j^2e^{j\sigma HE_{0,0}}\sum_{l}\sum_{h_1}\sum_{l_1}F_{h_1,l_1}F_{h-h_1,l-l_1}\\
    &&\frac{e^{-2j\pi\zeta H}}{2j\pi}
    \Bigg\{
        \frac{e^{j\pi\zeta_1H}\sin(\pi\zeta_1 H)}{\pi\zeta_1(\zeta-\zeta_1)}
      - \frac{e^{j\pi\zeta  H}\sin(\pi\zeta   H)}{\pi\zeta  (\zeta-\zeta_1)}
    \Bigg\}
\end{eqnarray}

## Real space picture

Born approximation :
$\zeta=2k_0\sin^2(\theta/2)=\frac{q^2}{2k_0}$


## 2-beam approximation
