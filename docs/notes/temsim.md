# TEMSIM

## usage
The whole deck can be executed with `./simuSrTiO3.sh`

which is decomposed as followed :

- Compute the projected atomic potential : `cat pot.in | temsim/atompot`
- Perform a multislice simulation : `cat mul.in | temsim/mulslice`
- Visualize result of simulation : `eog srtrmul.tif`

where the file **atompot.in** contains parameters :
```bash
'''pot.in'''
srta.dat      # structure file (for SrTiO3 here)
srtapot.tif   # output image file(to feed to multislice)
512 512       # real space pixel Nx,Ny
8 8 1         # replicate unit cell
n             # no thermal displacement
```
and  **mul.in** contains multislice simulation parameters :
```bash
'''mul.in'''
12(ab)      # stacking sequence
srtapot.tif # projected potential file a
srtbpot.tif # projected potential file b
srtrmul.tif # out binary file diffraction pattern
n           # include partial coherence
n           # resume from previous run
400         # incident beam energy in keV
0 0         # crystal tilt
0 0         # beam tilt
n           # record as a function of thickness
```

Finally the slice files **srta.dat** and **srtb.dat** read :
```
################# Slices for SrTiO3 ###################
#######################################################
# stra.dat
  3.9051 3.9051 1.9525    #lattice constants ax,bx and slice thickness cz
0                         #no symmetry operation
38                        # Strontium Z=38
  1.0000 0.0000 0.0000    #   corner of the cell

8                         # Oxygen
  1.0000 0.5000 0.5000    #   centre of the cell
#######################################################
# strb.dat
  3.9051 3.9051 1.9525    #lattice constants ax,bx and slice thickness cz
0                         #no symmetry operation
22                        #1 Titanium atom Z=22
  1.0000 0.5000 0.5000    #   centre of the cell

8                         # 2 Oxygen atom Z=8
  1.0000 0.5000 0.0000    #   edge of the cell
  1.0000 0.0000 0.5000    #   edge of the cell
```

#other programs
- non periodic specimen : `cat dat.xyz | temsim/autoslic`
- image formation effects (defocus,aberration,...) : `temsmim/image`
- STEM(scanning => incident probe) : `temsim/stemlic`
- STEM non periodic : `temsim/autostem`

## Meaning of variables
- `iz` : atomic number
- `featom` : [atomic scattering factor](/projects/scattering/#electron-scattering) $\sum a_ie^{-b_iq/4\pi^2}$ at $q^2$.
- `scamp` : basis structure factor $\sum_{j} e^{i\bb k\cdot\bb r_j}$
- `cpix` : spatial potential $V(x,y)=\mathcal F^{-1}(\sum_{j} e^{i\bb k\cdot\bb r_j})$


## Code walk through

```C
//atompot.cpp
int main(){
  k2max = 1.0 / (k2max * k2max);
  scale = ( ((double)nx) * ((double)ny) ) /(ax*by);
  for( iy=0; iy<=iymid; iy++){
    ky2 = ky[iy]*ky[iy] * ry2;
    for( ix=0; ix<nx; ix++){
      k2 = kx[ix]*kx[ix] * rx2 + ky2;
      fe = scale * featom( iz, k2 );
      scamp( kx[ix], ky[iy], &scampr, &scampi ) ;
      cpix(ix,iy) += scampr*fe;
    }
  }
}
void scamp( float kx, float ky, double *scampr, double *scampi ){
  for( i=0; i<natom; i++){
    w1 = pi2 * kx * x[i];
    for( ixc=0; ixc<nsx; ixc++){
        w = w1 + ixc*scalex;
        phasexr += cos(w);
        phasexi += sin(w);
    }
    w1 = pi2 * ky * y[i];
    for( iyc=0; iyc<nsy; iyc++){
        w = w1 + iyc*scaley;
        phaseyr += cos(w);
        phaseyi += sin(w);
    }
    scampr += ( phasexr*phaseyr - phasexi*phaseyi ) * occ[i];
  }
}
//slice.cpp
double featom( int Z, double k2 )
{
    if( feTableRead == 0 ) nfe = ReadfeTable();//fparams,
    sum = 0.0;
    //Gaussians
    for( i=2*nl; i<2*(nl+ng); i+=2 )
        sum += fparams[Z][i]*exp( - k2 * fparams[Z][i+1] );
    return( sum );
}
```
