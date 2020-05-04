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
Multislice(self, name, mulslice, tail='', data=None, keV=200, repeat=[2, 2, 1], NxNy=[512, 512], slice_thick=1.0, hk=[(0, 0)], Nkh=0, v=True, save_deck=True)
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

- `mulslice` : True(mulslice)=>periodic, False(autoslic)
- `keV` : float - wavelength in keV
- `repeat` : 3-int-list - super cell size in the x,y,z directions
- `NxNy` : 2-int-list or int : sampling in x and y (same sampling in x and y if only int provided)
- `slice_thick` : float - slice thickness (A)
- `hk` : list of tuple - beams to record as function of depth
- `Nhk`: int - set hk on a grid of multiples of the supercell size. Prevails over hk argument if >0. default(0)

**OUTPUT options:**

- `v`  : verbose/display option : n(naming pattern),d(data),D(Decks),r(runtime), all if True
- `save_deck` : save the decks to disk

### make_decks
```python
Multislice.make_decks(self, save=True)
```
create the decks from the information provided
### run
```python
Multislice.run(self, v=1)
```
run the simulation with temsim
### get_beams
```python
Multislice.get_beams(self, iBs=[], tol=0.01, bOpt='')
```
get the beams as recorded during:

- iBs : selected beam indices : default=Ibeams.max()>tol
- bOpt : O(include Origin),p(print Imax),n or f(force new)
hk,t,re,im,Ib = beams

### beam_vs_thickness
```python
Multislice.beam_vs_thickness(self, bOpt='', iBs=[], tol=0.01, **kwargs)
```

- bOpt : O(include Origin),p(print Imax),n or f(force new)
- kwargs : see help(plot_beam_thickness)

### save
```python
Multislice.save(self)
```
save this multislice object
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
Multislice.check_simu_state(self, v=True)
```
see comletion state of a simulation
