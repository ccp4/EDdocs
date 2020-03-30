# TEMSIM

- [Usage](#usage)
- [Code](#code-walk-through)
    - [atompot](#atompot)
    - [mulslice](#mulslice)

## Usage
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

### other programs
- non periodic specimen : `cat dat.xyz | temsim/autoslic`
- image formation effects (defocus,aberration,...) : `temsmim/image`
- STEM(scanning => incident probe) : `temsim/stemlic`
- STEM non periodic : `temsim/autostem`


## Code walk through

## atompot
Computes the projected potential of a slice
###variables
- `iz` : atomic number
- `nsx,nsy` : $(N_x,N_y)$ cell to replicate
- `featom` : [atomic scattering factor](/projects/scattering/#electron-scattering) of atom `iz` from Gaussian+Lorentzian fits at $k^2$,
  $f^e_j(k^2)=\sum_{i=1}^{3}a_i/(k^2+b_i) + c_ie^{-d_ik^2}$
- `scamp` : scattering amplitude  structure factor due to atoms `iz`,
  $\sum_{j} e^{i\bb k\cdot\bb r_j}$
- `cpix` : projected potential of the slice
  $V(x,y)=\int_{Slice} V(x,y,z')dz'
         =\mathcal F^{-1} \left(
            \sum_{iz} f_{iz}^e(k^2)\sum_{j\in j(iz)}e^{i\bb k\cdot\bb r_j}\right)$

###Code
```C
//atompot.cpp
int main()
  //get parameters
  k2max = 1.0 / (k2max * k2max);
  scale = ( ((double)nx) * ((double)ny) ) /(ax * by);
  for( i=0; i<=n_atom_types; i++)
    ns = sscanf( cline, "%d", &iz);
    while( ReadLine( fp, cline, NCMAX, filein ) > 2)
      ns = sscanf( cline, "%f %f %f %f", &occ[j], &x[j], &y[j], &wobble[j];
      natom++;    
    //projected potential contribution
    for( iy=0; iy<=iymid; iy++)
      ky2 = ky[iy] * ky[iy] * ry2;
      for( ix=0; ix<nx; ix++)
        k2 = kx[ix] * kx[ix] * rx2 + ky2;
        fe = scale * featom( iz, k2 );
        scamp( kx[ix], ky[iy], &scampr, &scampi ) ;
        cpix(ix,iy) += scampr*fe;
  cpix.ifft(); // inverse fourier transform
```
```C
//
void scamp( float kx, float ky, double scampr, double scampi ){
  for( i=0; i<natom; i++){
    w1 = pi2 * kx * x[i];
    for( ixc=0; ixc<nsx; ixc++){
        w = w1 + ixc * scalex;
        phasexr += cos(w);
        phasexi += sin(w);
    }
    w1 = pi2 * ky * y[i];
    for( iyc=0; iyc<nsy; iyc++){
        w = w1 + iyc * scaley;
        phaseyr += cos(w);
        phaseyi += sin(w);
    }
    scampr += ( phasexr * phaseyr - phasexi * phaseyi ) * occ[i];
  }
}
//slice.cpp
double featom( int Z, double k2 )
{
    if( feTableRead == 0 ) nfe = ReadfeTable();//fparams,
    sum = 0.0;
    //Lorentzians
    sum += fparams[Z][i]/( k2 + fparams[Z][i+1] );
    //Gaussians
    for( i=2 * nl; i<2 * (nl+ng); i+=2 )
        sum += fparams[Z][i] * exp( - k2 * fparams[Z][i+1] );
    return( sum );
}
```


## mulslice
### variables
- `wave` :  Transverse wave function $\Psi(x,y)$
- `trans[j]` : Transmission function of layer $j$, $e^{i\sigma v_{z,j}}$
- `prop[j]` : Fourier transform of the propagator at layer $j$,
$e^{-i\pi\lambda\Delta z_j k^2}$
- `vz[j]` : Projected potential of layer $j$, $v_{z,j}=\int_{z_j}^{z_j+\Delta z_j} V(x,y,z')dz'$
- `cz[j]` : Thickness of layer $j$, $\Delta z_j$

### parsing parameter
```C
ns = scanf("%s", filein[ilayer] );
lstart = askYN("Do you want to start from previous result");
if (lstart) ns = scanf("%s", filestart);
else ns = scanf("%g", &v0);
/*  calculate relativistic factor and electron wavelength */
mm0 = 1.0F + v0/511.0F;
wavlen = (float) wavelength( v0 );
scale = wavlen * mm0;
myFile.read( filein[ilayer])
vz=scale*myFile(ix, iy);
trans[ilayer].re(ix,iy) = (float) cos(vz);
trans[ilayer].im(ix,iy) = (float) sin(vz);
/*  calculate the total specimen thickness and echo */
cztot += cz[ layer[islice] ];
/*  calculate spatial frequencies and positions for future use */
rx = 1.0F/ax;rx2= rx*rx;
ry = 1.0F/by;ry2= ry*ry;
ixmid = nx/2;iymid = ny/2;
/*initialize wavefunction if resuming*/
if ( lstart == 1 ) {
  for( ix=0; ix<nx; ix++) for( iy=0; iy<ny; iy++) {
    wave0r[ix][iy] = myFile(ix,iy);
    wave0i[ix][iy] = myFile(ix+nx,iy);
    wave.re(ix,iy) = wave0r[ix][iy];
    wave.im(ix,iy) = wave0i[ix][iy];  
  }
  else
  // add incident beam tilt
  qx = btiltx / wavlen;qy = btilty / wavlen;
  wave.re(ix,iy) = (float) cos( t );
  wave.im(ix,iy) = (float) sin( t );
}
/* bandwidth limit the transmission function for anti-aliasing*/
const float BW= (2.0F/3.0F);
k2max = min(nx/(2.0F*ax),ny/(2.0F*by))
k2max *= BW * k2max;
/*set to zero outside sampling circle*/
trans[ilayer].fft();
for( ilayer=0; ilayer<nlayer; ilayer++) {
  for k2=kx+ky; if (k2 > k2max) trans[ilayer].re=trans[ilayer].im=0;
  trans[ilayer].ifft();
}
/*  calculate propagator function*/
scale = pi * cz[ilayer];
for( ix=0; ix<nx; ix++) {
    t = scale*( kx2[ix] * wavlen);
    propxr[ilayer][ix] = (float)  cos(t);
    propxi[ilayer][ix] = (float) -sin(t);
}
for( iy=0; iy<ny; iy++) {
    t = scale*( ky2[iy] * wavlen);
    propyr[ilayer][iy] = (float)  cos(t);
    propyi[ilayer][iy] = (float) -sin(t);
}
```

### propagate
Propagation is performed as  :
\begin{equation}
  \Psi_{n+1}(x,y)=FT^{-1}\Bigg\{
    P(k^2,\Delta z_n)FT\Big(t_n(x,y)\Psi_n(x,y)\Big)
  \Bigg\}
\end{equation}

```C
// mulslice.cpp
/* ------------------- coherent method --------------------*/
for( islice=0; islice<nslice; islice++ ){
  ilayer=layer[islice];
  wave = wave*trans[ilayer]; // transmit
  wave.fft();
  propagate(wave,
            propxr[ilayer], propxi[ilayer],propyr[ilayer],propyi[ilayer],
            kx2,  ky2,  k2max, nx, ny );
  wave.ifft();
  // transverse intensity integral
  sum = abs(wave)^2.sum()/(nx * ny)
  printf("layer = %c, integrated intensity = %f\n",cname[ilayer], sum );
}
/*  multiplied by the propagator function */
//slicelib.cpp
void propagate( cfpix &wave,
    float* propxr, float* propxi, float* propyr, float* propyi,
    float* kx2, float* ky2, float k2max, int nx, int ny )
  for( ix=0; ix<nx; ix++){
    if( kx2[ix] < k2max ){
      pxr = propxr[ix];
      pxi = propxi[ix];
      for( iy=0; iy<ny; iy++) {
        if( (kx2[ix] + ky2[iy]) < k2max ) {
          pyr = propyr[iy];
          pyi = propyi[iy];
          wr = wave.re(ix,iy);   // real
          wi = wave.im(ix,iy);   // imag
          tr = wr*pyr - wi*pyi;
          ti = wr*pyi + wi*pyr;
          wave.re(ix,iy) = tr*pxr - ti*pxi;
          wave.im(ix,iy) = tr*pxi + ti*pxr;
        }
      }
    }
  }
```

## results
![](/projects/multislice/figures/srtrmul-0.png)
