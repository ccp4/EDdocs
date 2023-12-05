# Formulation
{% set figs='/figures/tmm_heed/' %}

Studying the scattering of an electron with high energy $E$ by a 1D array of $N$ slabs with width $a$, identical constant potential energy $V=-eV_0\ll E$ separated by distance $d$.

Schrdinger's equation is written in each slab as :

<!-- Intermediate step in the demo
\left(  \dP_z^2 + \frac{2mE}{\hbar^2}\left(1+\frac{eV_0}{E} \right) \right)\Psi(z) &=& 0\\
-->

\begin{eqnarray}
  \left\{ -\frac{\hbar^2}{2m}\grad^2 + V                         \right\}\Psi    &=& E\Psi \\
  \left(  \dP_z^2 + k^2                                          \right) \Psi(z) &=& 0
\end{eqnarray}

where $k=k_0n$ is the wave number, $k_0$ its value in free space such that $\hbar^2k_0^2=2mE$ and $n$ the refractive index in the slabs :

\begin{equation}
  n = \sqrt{ 1+\frac{eV_0}{E} } \approx 1 + W
\end{equation}

with $W=\frac{eV_0}{2E}$ is the normalized potential.

In each region the solution eq.1 are $e^{\pm ikz}$ and we assume that in the first region we have a forward propagating incident plane wave for which we choose the positive sign convention $e^{+ikz}$.

The transmission and reflection coefficients $T$,$R$ at the slab are :

\begin{eqnarray}
  T &=& \frac{4n}{(1+n)^2}      \approx 1 - \frac{W}{2} \approx 1 \\
  R &=& \frac{(1-n)^2}{(1+n)^2} \approx \frac{W^2}{4}   \approx 0
\end{eqnarray}






## Forward propagation assumption
In the following we will assume full forward transmission, i.e. $T=1$ and $R=0$.

### Single slab transmission
Since $T=1$, the wave in free space after after passing the slab can simply be expressed as :

\begin{eqnarray}
  \Psi_1(z) &\approx& e^{ik_0na}e^{ik_0(z-a)} \\
            &\approx& e^{ik_0Wa}e^{ik_0z} \\
            &=& e^{i\delta}e^{ik_0z}
\end{eqnarray}
where $\delta=k_0Wa=eV_0/2E k_0a$ is the phase shift introduced by the slab which seems independent of the location of the slab with respect to the origin (where its phase equals 0) of the incident wave.
Note that $\delta=\pi/\lambda E=\sigma V_0a$ where $\sigma$ is the interaction parameter in multislice. As a results, a good estimate for $V_0a$
can be obtained by taking the average of the projected potential.
In practice, $E=200keV$,$\lambda\approx 0.025$,$k_0=2\pi/\lambda\approx 250$, $V_0a\approx 0.04-0.14kV.A$, $\sigma(E=200keV)\approx 0.75 kV^{-1}.A^{-1}$ in the relativistic case,  so that $\delta=0.03-0.1$.

Let's decompose this wave $\Psi=\Psi_{coh}+\Psi_{kin}$ where $\Psi_{coh}$ is the unaffected incident wave and $\Psi_{kin}$ the scattered wave :

\begin{eqnarray}
  \Psi_{kin} &=& e^{ik_0z}\left(e^{i\delta} - 1 \right)     \\
             &=& e^{ik_0z}e^{i\delta/2}2i\sin(\delta/2)     \\
             &\approx& \delta e^{i(k_0z + \pi/2+\delta/2) } \\
             &=& se^{ik_0z} \mbox{,} s=i\delta e^{i\delta/2}
\end{eqnarray}
<!-- \begin{eqnarray} old demo
  \Psi_{kin} &=& e^{ik_0(z-a)}\left(e^{ik_0na} - e^{ik_0a} \right) \\
             &=& e^{ik_0z}\left(e^{ik_0Wa} - 1  \right)\\
             &=& e^{ik_0z}e^{ik_0Wa/2}2i\sin(k_0Wa/2)\\
             &\approx& e^{ik_0z}e^{i\delta/2}2i\sin(\delta/2) \\
             &\approx& \delta e^{i(k_0z + \pi/2+\delta/2) } \\
\end{eqnarray} -->

The scattered wave produced by the slab is a plane wave with a small amplitude $\delta$ shifted from the incident plane wave by a constant phase term $\pi/2+\delta/2$.
This is a common result that can also be obtained with a more general transmission function such as the phase grating and applying the weak potential approximation.
It is also a 1D version of the Born approximation which states that, for weak potential, the scattered wave is proportional to the potential times

#### Scattering probabilities

The probability current is defined as $J=\hbar/2mi(\Psi^{\ast}\grad\Psi - \Psi\grad\Psi^{\ast})$.
For a plane wave $Ae^{ikz}$ the expression $\Psi^{\ast}\grad\Psi - \Psi\grad\Psi^{\ast} = 2ik|A|^2$ so $J=\hbar k/m|A|^2$.

One can express $J_1$ as the sum of probability current of the incident and scattered waves as :
\begin{eqnarray}
  J_1 &=& \frac{\hbar}{2mi} \left( \Psi_1^{\ast}\grad\Psi_1 - \Psi_1\grad\Psi_1^{\ast} \right) \\
      &=& \frac{\hbar}{2mi} \left( 2ik_0 + 2i\delta^2k +
        \Psi_{coh}^{\ast}\grad\Psi_{kin} - \Psi_{coh}\grad\Psi_{kin}^{\ast} +
        \Psi_{kin}^{\ast}\grad\Psi_{coh} - \Psi_{kin}\grad\Psi_{coh}^{\ast} \right) \\
      &=& J_0 \left( 1 + \delta^2 + \cc I(\Psi_{coh},\Psi_{kin}) \right)\\
      &=& J_{coh} + J_{kin}
\end{eqnarray}

where we attribute the interference term $\cc I(\Psi_{coh},\Psi_{kin})$ to $J_{coh} = J_0 + \cc I(\Psi_{coh},\Psi_{kin})$ and can consider
$J_{kin}=J(\Psi_{kin})= J_0\delta^2$.

To compute the interference term, note the relevance of the phase factor $e^{i\delta/2}$ in the expression of $\Psi_{kin}(z)$ :
\begin{eqnarray}
  \cc I(\Psi_{coh},\Psi_{kin})    
    &=& \frac{1}{2ik_0}\left(
      \Psi_{coh}^{\ast}\grad\Psi_{kin} - \Psi_{coh}\grad\Psi_{kin}^{\ast} +
      \Psi_{kin}^{\ast}\grad\Psi_{coh} - \Psi_{kin}\grad\Psi_{coh}^{\ast} \right) \\
    &=& i\delta\left( e^{i\delta/2} - e^{-i\delta/2}  \right) \\
    &=& i\delta 2i\sin(\delta/2) \\
    &\approx& - \delta^2 \\
\end{eqnarray}
<!-- \begin{eqnarray} Full demo with n still there
  \cc I(\Psi_{coh},\Psi_{kin})    
    &=& \frac{1}{2ik_0}\left(
      \Psi_{coh}^{\ast}\grad\Psi_{kin} - \Psi_{coh}\grad\Psi_{kin}^{\ast} +
      \Psi_{kin}^{\ast}\grad\Psi_{coh} - \Psi_{kin}\grad\Psi_{coh}^{\ast} \right) \\
    &=& \frac{1}{2ik_0}\left(
      ik_0n i\delta e^{i\delta/2} - (-i\delta)(-ik_0n)e^{-i\delta/2} + (-i\delta)e^{-i\delta/2}ik_0 - (i\delta)e^{i\delta/2}(-ik_0) \right) \\
    &=& \frac{1}{2}\left(i\delta ne^{i\delta/2} - (-i\delta)(-1)n e^{-i\delta/2} + (-i\delta)e^{-i\delta/2} - (i\delta)e^{i\delta/2}(-1) \right) \\
    &=& \frac{i\delta}{2}\left( ne^{i\delta/2} - n(-1)(-1)e^{-i\delta/2} + (-1)e^{-i\delta/2} - (1)e^{i\delta/2}(-1) \right) \\
    &=& \frac{i\delta}{2}(n+1)\left( e^{i\delta/2} - e^{-i\delta/2}  \right) \\
    &=& \frac{n+1}{2}i\delta 2i\sin(\delta/2) \\
    &\approx& -\delta^2 \\
\end{eqnarray} -->

Due to conservation of the electron density, the probability current $J_1$ after the slab should be the same as before the slab $J_0=\hbar k_0/m$.
Following the derivation above, one can check that this relation holds. By normalizing the current probability by $P_i = J_i/J_0$ it is
then clear that the $P_{coh} + P_{kin} = 1$ which rigorously define $P_{kin}$ and $P_{coh}$ as the respective probability of the electron being scattered by the slab and the electron being coherent with the incident beam.



### Multiple slabs

From the above section one can infer the general rule.
The incident plane wave passes from one interstitial region to the other through the effect of the slab so that in the interstitial region after slab $N$, the wave function can be written as :

\begin{equation}
  \Psi_N(z) = \Pi_{p=1}^{N}(1+s_p)\Psi_0
\end{equation}
Note that due to the commutation of the natural product, it seems that the order scatterer do not matter. We have also seen earlier that their location is also unimportant with this simplified model.


Assuming $s_1=..=s_p=..=s_N=s$ and expanding the products, the binomial theorem allows to identify each of the multiple scattering terms through :  
\begin{eqnarray}
  \Psi_N
    &=& \Psi_0\sum_{p=1}^N \left(\begin{array}{c}N\\p\end{array}\right) s^p \\
    &=& (1+s)^N\Psi_0 \\
    &=& e^{iN\delta}e^{ik_0z}
\end{eqnarray}

where the 0th-order term the expansion corresponds to the coherent incident plane wave, the 1st order term to kinematic scattering, 2nd order term to secondary scattering and so on.
Decomposing this wave into incident, kinematically scattered and multiply scattered wave as $\Psi=\Psi_{coh} + \Psi_{kin} + \Psi_{dyn}$ and using notation $\Psi_i=S_i e^{ik_0z}$ gives :

\begin{eqnarray}
  S_{coh} &=& 1 \\
  S_{kin} &=& Ns\\
  S_{dyn} &=& e^{iN\delta}-Ns-1\\
\end{eqnarray}

#### Scattering probabilities

Following the same reasoning as above, one may compute $P_{coh}$, $P_{kin}$ and $P_{dyn}$ as :

\begin{eqnarray}
  P_{coh} &=& 1 + \cc I(\Psi_{coh},\Psi_{kin}) + \cc I(\Psi_{coh},\Psi_{dyn}) \\
  P_{kin} &=& J_{kin}/J_0 + \cc I(\Psi_{kin},\Psi_{dyn})  \\
  P_{dyn} &=& J_{dyn}/J_0
\end{eqnarray}

Since $|1+s|=1$ it is clear that $J_N=J_0$ so that $P_{coh} + P_{kin} + P_{dyn}=1$.
Let's use the normalized probability $\tilde J_i=J_i/J_0$ current in the following.

Let's note that
$|s|^2=\delta^2$,
$s+s^{\ast}\approx-\delta^2$,
$se^{-iN\delta}+s^{\ast}e^{iN\delta} = 2\delta\sin\left(\delta\left(N-\frac{1}{2}\right)\right)$.


We can readily find the kinematic probability current $\tilde J_{kin}$ :
\begin{equation}
  \tilde J_{kin} = N^2\delta^2
\end{equation}

And for the dynamical current $\tilde J_{dyn}$,
\begin{eqnarray}
  \tilde J_{dyn}
    &=& \left(e^{iN\delta} - Ns -1 \right)\left(e^{-iN\delta} - Ns^{\ast} -1\right)\\
    &=& 2 - \left(e^{iN\delta} + e^{-iN\delta}\right) + N^2|s|^2 + N\left(s+s^{\ast}\right) - N\left(se^{-iN\delta}+s^{\ast}e^{iN\delta}\right)\\
    &=& 2\left(1-\cos(N\delta)\right) - N\delta^2 + N^2\delta^2 - 2N\delta\sin\left(\delta\left(N-\frac{1}{2}\right)\right)\\
\end{eqnarray}
<!-- &\approx& N^2\delta^2 + \cc O(N^2\delta^2) + N^2\delta^2 - N\delta^2 - 2N\delta\sin\left((N-\frac{1}{2})\delta\right)\\ -->



Note that all the waves solely depend on $z$ through $e^{ik_0z}$
any term $\Psi_i^{\ast}\grad\Psi_j$ brings a factor $ik_0$ while
any term $\Psi_i\grad\Psi_j^{\ast}$ brings a factor $-ik_0$.
The $z$ dependence also cancels out as a result of $e^{ik_0z}e^{-ik_0z}$ leaving only the wave amplitudes in the calculation.
As a result, any interference term can be computed as :
\begin{equation}
  \cc I(S_i,S_j) = S_iS_j^{\ast} + S_i^{\ast}S_j
\end{equation}



The interference term between the coherent and kinematic waves is therefore :
\begin{eqnarray}
\cc I(\Psi_{coh},\Psi_{kin})
  &=& 2N\cc (s+s^{\ast}) \\
  &=& -2N\delta\sin(\delta/2) \\
  &\approx& -N\delta^2
\end{eqnarray}
which is not quite the opposite of $J_{kin}$ as anticipated.

The interference term between the coherent and dynamic waves is therefore :
\begin{eqnarray}
\cc I(\Psi_{coh},\Psi_{dyn})
  &=&  e^{-iN\delta}-Ns^{\ast}-1 + e^{iN\delta}-Ns-1\\
  &=&  2\left(\cos\left(N\delta\right)-1\right) + N\delta^2\\
\end{eqnarray}

An interesting well known feature of dynamical diffraction is already apparent in $P_{coh}$ :
\begin{eqnarray}
P_{coh}
  &=& 1 + \cc I(\Psi_{coh},\Psi_{kin})+\cc I(\Psi_{coh},\Psi_{dyn})
  &=&  2\cos\left(N\delta\right) - 1 \\
\end{eqnarray}
known as a pendullosung effect. The coherent power goes back to 1 at $N\delta=2m\pi$.
Writing $N\delta=\sigma V_0 Na=\sigma V_0 z$ where $z$ is the thickness of the sample if the slabs are contiguous.
This provides a pendullosung thickness of $\zeta=2\pi/\sigma V_0$  is the same expression in the 2 beam configuration.
This probability goes negative which suggests that the concept of probability for individual wave component loses its physical meaning when the components have similar magnitude as interference effects become strong.

The interference term between the kinematic and dynamic waves is therefore :
\begin{eqnarray}
\cc I(\Psi_{kin},\Psi_{dyn})
  &=&  Ns\left(e^{-iN\delta} -Ns^{\ast} -1 \right) + Ns^{\ast}\left(e^{iN\delta} - Ns -1\right)\\
  &=&  -N(s+s^{\ast}) -2N^|s|^2 + N\left(se^{-iN\delta}+s^{\ast}e^{iN\delta}\right)\\
  &=&  N\delta^2 - 2N^2\delta^2 + 2N\delta\sin\left(\delta\left(N-\frac{1}{2}\right)\right)\\
  &=&  2N\delta\left( \sin\left(x\right) - x \right)\\
  &\approx& 2x(-x^3/3 + \cc O(x^5))
\end{eqnarray}

where $x=\delta (N-1/2)$.

### figures
Choosing an inter distance of $d$ the thickness of the sample in simply $z=Nd$. Note that the mean free path is easily calculated as when $N_c\delta=1$ resulting in $l=N_cd=d/\delta=30nm$ for $d=3A$ and $\delta=0.01$.

a  | b  | c
-- | -- | --
[![]({{figs}}P_Ns.png)]({{figs}}P_Ns.png) | [![]({{figs}}P_Ns_zoom.png)]({{figs}}P_Ns_zoom.png) | [![]({{figs}}P_Ns_pendul.png)]({{figs}}P_Ns_pendul.png)

a) Probabilities of scattering for the different terms as a function of thickness $z=Nd$ using $d=3A$. b) close up view. c) Highlighting the pendullosung effect.


<!-- a  | b  
-- | --  -->

[![]({{figs}}psi_k.png)]({{figs}}psi_k.png)

a) Square amplitude of the different terms of the expansion up to $k=10$ for a a few thicknesses.

At the mean free path secondary scattering starts competing with the kinematic term. For larger thicknesses the higher order starts dominating with the strongest order increasing with crystal thickness. Note that the highest order term always vanish keeping the whole integral converging.
