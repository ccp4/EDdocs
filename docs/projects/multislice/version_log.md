# Version log

## multislice.py
### 1.3
- `hostpath` automatically determined by dict path_hosts
- `cluster` option automatically activated for **badb** cluster
- `print_log(head_opt)` available to only print header of the logfile
- `postprocess` automatically saves pattern and beams to `npy` if do not exist or forced
- `structure_factor()` available with automatic `cif_file` recovery
### 1.2
- [x] ssh to cluster
- [x] Include tilt
### 1.1
- [x] Include thermal vibrations

### 1.0
- [x] autoslic and mulslice available
- [x] run jobs via ssh
- [x] monitor simulation state
- [x] record beam vs thickness
- [x] display diffraction pattern
- [x] run from previous simulation

##TODO
- [ ] embedded C multislice

## multi_2D
### 0.2
- [ ] tilt
- [x] variable thickness

### 0.1
- [x] basic implementation tested



## Available Tests
- `test_base` : Basic features
- `test_TDS` : Thermal vibration feature
