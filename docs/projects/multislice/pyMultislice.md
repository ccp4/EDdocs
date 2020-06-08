# multislice

A Multislice interface to build decks, launch jobs and postprocess multislice simulations

[TOC]

##Example
Create a periodic simulation from data in 'Silicon/Si110',
submit it and monitor its state :
```python
multi=Multislice('Silicon/Si110',mulslice=False,NxNy=512,repeat=[6,6,40],Nhk=2)
p = multi.run()
multi.check_simu_state()
```
Once terminated, get the beams intensities as function of thickness,
forcing to repostprocess in case it was already done in an older simulation :
```python
multi.beam_vs_thickness(bOpt='f')
```

## Multislice
```python
Multislice(self, name, mulslice=False, tail='', data=None, TDS=False, T=300, n_TDS=16, keV=200, repeat=[2, 2, 1], NxNy=[512, 512], slice_thick=1.0, hk=[(0, 0)], Nhk=0, prev=None, opt='d', fopt='w', ppopt='uwP', v=1, ssh=None)
```
**DATA PARAMETERS :**

- `name` : path to the simulation folder
- `tail` : trailing string in the naming convention of outputs
    - name pattern = *name*\_*tail*\_*program_name*
- `data` : data file names
    - if None and mulslice simu : all *[a-zA-Z].dat and stacked alphabetically
    - if None and autoslic simu : first *.xyz found
    - Otherwise paths to filename(s) of the data files to use (must be in name)

**MULTISLICE simulation parameters :**

- `mulslice` : False(autoslic), True(mulslice)=>periodic
- `keV` : float - wavelength in keV
- `repeat` : 3-int-list - super cell size in the x,y,z directions
- `NxNy` : 2-int-list or int : sampling in x and y (same sampling in x and y if only int provided)
- `slice_thick` : float - slice thickness (A)
- `hk` : list of tuple - beams to record as function of depth
- `Nhk`: int - set hk on a grid of multiples of the supercell size. Prevails over hk argument if >0. default(0)

**Thermal parameters**:

- `TDS` : bool - include thermal vibrations (as dictated by wobble parameter in .dat )
- `T`   : Temperature in K if TDS is True
- `nTDS` : Number of runs to average over

**RUN/OUTPUT options:**

- `v`  : verbose - str or bool(all if True) or int(verbose level)
    - n(naming pattern),c(cell params),t(thickness),r(run cmd)
    - d(data),D(Decks),R(full run cmd)
- `opt` : d(save_deck), s(save_obj), r(do_run), p(do_pp)
- `fopt` : f(force rerun), w(warn rerun). If the simulation was previously completed :
    - 'w' is on  (default case) : the user will be asked to confirm whether he wants to rerun it,
    - 'w' is off (fopt='') : The simulation is not rerun
    - 'f' in fopt : The simulation is rerun
- `ppopt` : u(update),w(wait), I(image) B(beam) P(pattern) A(azim_avg)
- `ssh` : ip address or alias of the machine on which to run the job

### make_decks
```python
Multislice.make_decks(self, save=True, datpath=None, prev=None)
```
create the decks from the information provided
### save
```python
Multislice.save(self)
```
save this multislice object
### run
```python
Multislice.run(self, v=1, fopt='w', ssh_alias=None, hostpath=None)
```
run the simulation with temsim
- fopt : f(force rerun), w(warn ask rerun already done)
- ssh : name of the host to run the job

### postprocess
```python
Multislice.postprocess(self, ppopt='uwP', ssh_alias='', tol=0.0001, figpath=None, opt='p')
```
Performs postprocessing with predefined options :

- ppopt:u(update), w(wait till done) I(image), B(beam) P(pattern)
- figpath : Directory to place the figures if saving with automatic naming (default datpath)

### image
```python
Multislice.image(self, opt='I', cmap='jet', **kwargs)
```
Displays the 2D image out of simulation
- opt : I(intensity)

### beam_vs_thickness
```python
Multislice.beam_vs_thickness(self, bOpt='', iBs=[], tol=0.01, **kwargs)
```

- bOpt : O(include Origin),p(print Imax),n or f(force new)
- kwargs : see help(plot_beam_thickness)

### get_beams
```python
Multislice.get_beams(self, iBs=[], tol=0.01, bOpt='')
```
get the beams as recorded during:

- iBs : selected beam indices : default=Ibeams.max()>tol
- bOpt : O(include Origin),p(print Imax),n or f(force new)
hk,t,re,im,Ib = beams

### pattern
```python
Multislice.pattern(self, Iopt='Incsl', out=0, tol=0.0001, Nmax=None, rings=[], **kwargs)
```
Displays the 2D diffraction pattern out of simulation
- Iopt : I(intensity), c(crop I[r]<tol), n(normalize), s(fftshift), l(logscale)
- Nmax : crop display beyond Nmax
- rings : list or array - of resolutions for rings to display
- kwargs : see stddisp
returns : [qx,qy,I]

### azim_avg
```python
Multislice.azim_avg(self, out=0, **kwargs)
```
Display the average azimuthal diffraction pattern intensities

### print_datafiles
```python
Multislice.print_datafiles(self, data=None)
```
show data files *.dat or .xyz depending on mulslice
### print_decks
```python
Multislice.print_decks(self, decks=None)
```
show decks *.in
### print_log
```python
Multislice.print_log(self)
```
print the logfile of running multislice .log
### check_simu_state
```python
Multislice.check_simu_state(self, ssh_alias=None, v=False)
```
see completion state of a simulation
## sweep_var
```python
sweep_var(name, param, vals, df=None, ssh='', tail='', do_prev=0, **kwargs)
```

runs a set of similar simulations with one varying parameter
- name          : path to the simulation folder
- param,vals    : the parameters and values to sweep
- df            :
    - pd.Dataframe to update(since parsed as a reference)
    - int create and save the new dataframe if 1
- do_prev       : Used for iterative fourier transform
- kwargs : see help(Multislice)

## make_xyz
```python
make_xyz(name, pattern, lat_vec, n=[0, 0, 1], fmt='%.4f', dopt='scp')
```
Creates the.xyz file from a given compound and orientation
- name    : Full path to the file to save
- pattern : Nx6 ndarray - Z,x,y,z,occ,wobble format
- lat_vec : 3x3 ndarray - lattice vectors [a1,a2,a3]
- n : beam direction axis
- dopt : p(print file)

