# pyMultislice

[TOC]

##Example
```python
multi=Multislice(name,mulslice=False,v='ndD',tail='Test',save=True)
multi.run()

```
## Multislice
```python
Multislice(self, name, mulslice, tail='', data=None, keV=200, repeat=[2, 2, 1], NxNy=[512, 512], slice_thick=1.0, hk=[(0, 0)], v=True, save=True)
```

- `name`     : path to the simulation folder
- `mulslice` : True(mulslice)=>periodic, False(autoslic)
- `tail`     : trailing string in the naming convention of outputs
    - name pattern = *name*\_*tail*\_*program_name*
- `data`     : data file names
    - if None and mulslice simu : all *[a-zA-Z].dat and stacked alphabetically
    - if None and autoslic simu : first *.xyz found
    - Otherwise paths to filename(s) of the data files to use (must be in name)
- `keV,repeat,NxNy,slice_thick` : multislice simulation parameters
- `hk` : beams to record as function of depth
- `v`  : verbose/display option : n(naming pattern),d(data),D(Decks),r(runtime), all if True
- `save` : save the decks to disk

### run
```python
Multislice.run(self, quiet=True)
```
run the simulation with temsim
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
