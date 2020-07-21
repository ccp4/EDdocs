# Particle scattering
## Coulomb scattering

Historically, it has been studied by
[Rutherford](http://hyperphysics.phy-astr.gsu.edu/hbase/rutsca.html)
using a
[classical description](https://en.wikipedia.org/wiki/Rutherford_scattering)
of charged particles.

## Thomson scattering for X-ray diffraction

For X-ray the electric field of the incident photons interact with the electrons. This is known as Thomson scattering.
From a classical point of view, the electrons oscillate along the electric field as $\mathbf p=q\mathbf x=e^2\mathbf E/m\omega^2$
producing a Hertzian dipole radiation $P=\frac{\omega^4}{12\pi\epsilon_0 c^3}|\mathbf p|^2$ leading to a Thomson scattering cross section
$\sigma_{th}=\frac{P}{1/2\epsilon_0c|\mathbf E|^2}$ :

\begin{equation}
    \sigma_{th} = \frac{8\pi}{3}\left(\frac{e^2}{4\pi\epsilon_0 mc^2}\right)^2=\frac{8\pi}{3}r_e^2
\end{equation}

where $r_e=2.818~fm$ is the classical radius of the electron.

<!-- \begin{equation}
    \sigma_{th} = \frac{8\pi}{3}r_e^2 = 66fm^2
\end{equation} -->

\begin{equation}
    \sigma_{th} \approx 1.87\times10^6Z^{4/3}(c/v)^2 = 5\times 10^7 fm^2
\end{equation}

<!--
\begin{equation}
P_{scattered} = \sigma\phi_{incident}
\end{equation} -->

## Classical collision

Scattering can be interpreted as collisions between particles through an interacting potential (or force).
The most basic treatment of colliding particles is the classical billiard ball model which corresponds to the case where there is no interacting potential.
The only constraint is that the energy and momentum of the whole system before and after collision must be conserved.

For point-like particles of mass $m_1$, $m_2$ and initial speed $v_1$, $v_2$ the conservation laws yield in 1D :

\begin{eqnarray}
    v_1^{'} &=& v_1 + \frac{2m_2}{m_1+m_2}(v_2-v_1) \\
            &=& v_2 + \frac{m_2-m_1}{m_1+m_2}(v_2-v_1)\\
            &\underset{m_1=m_2}{\rightarrow} & v_2
\end{eqnarray}


\begin{eqnarray}
    \Delta E_c&=&\frac{2m_2m_1}{m_1+m_2}(v_2-v_1) \frac{m_1v_1+m_2v_2}{m_1+m_2} \\
              &\underset{m_1\ll m_2,v_2=0}{\rightarrow}& -2\frac{m_1^2}{m_2}v_1^2 \\
              &\underset{m_1=m_2}{\rightarrow} & \frac{1}{2}m(v_2^2-v_1^2)
\end{eqnarray}

Since the relations are symmetric for particle $1$ and $2$ we can only focus on
the point of view of particle $1$. Note that :

- $v_2=v_1=v$ there can not be any collision so $v_1^{'}=v_1$.
- $m_1=m_2=m$ velocities are simply exchanged to ensure conservation of momentum.
- $m_2\gg m_1$, $v_2=0$
    - $ v_1^{'} \approx v_2-v_1\underset{v_2=0}\rightarrow -v_1$ the particle is reflected.
    - $\Delta E_c/E_c=-4m_1/m_2$ the fraction of energy lost in the collision.
- Energy exchange :
    - $v_2\gt v_1\gt 0$ the energy goes from the fastest particle to the slowest one.
    - $v_2>0>v_1$, the energy goes from the one with largest momentum to the lowest one.
