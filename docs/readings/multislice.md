#Papers Multislice orientation

- [chenDyck1997](#chendick1997) : Multislice Method for Large Beam Tilt with Application to HOLZ Effects in Triclinic and Monoclinic Crystals
- [Ishizuka 1982](#multislice-formula-for-inclined-illumination) : Multislice Formula for Inclined Illumination  
- [xHREM](https://www.hremresearch.com/index.html) with [manual](/books/xHREM_manual.pdf) and [p32](/books/xHREM_inclined.pdf) for inclined illumination implementation.

## Ishizuka1982
Multislice Formula for Inclined Illumination

## ChenDyck1997
- MS no-tilt : $\Psi(x,y,z)=\varphi(x,y,z)e^{2\pi ikz}$ where $k=k_z$
- MSSBT : $\Psi(x,y,z)=\varphi(x,y,z)e^{2\pi ik_zz}$ max 3 deg
- MSMBT : mix MSLBT and MSSBT max 6 deg
- MSLBT : $\Psi(x,y,z)=\varphi(x,y,z)e^{2\pi ikz}$ max 12 deg

[Kirkland](/readings/Kirkland2010/#fast-electron-wave-equation) no beam tilt :
\begin{equation}
  \frac{\dP\varphi(x,y,z)}{\dP_z} =
    \Big\{\frac{i\lambda}{4\pi}\grad^2_{xy} + i\sigma V(x,y,z) \Big\} \varphi(x,y,z)
\end{equation}

with beam-tilt
\begin{equation}
  \frac{\dP\varphi(x,y,z)}{\dP_z} =
    \Big\{\frac{i}{4\pi k_z}\grad^2_{xy} + \frac{k}{k_z}i\sigma V(x,y,z) + \frac{i\pi\bb K_u^2}{k_z} \Big\} \varphi(x,y,z)
\end{equation}
