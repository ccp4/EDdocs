# week summary

## week 18
- multislice:
    - python run temsim, check_progress+[doc](/projects/multislice/pyMultislice)
    - python structure factor and pendullosung [utilities](/projects/multislice/temsim/#utilities)
    - [Si100 autoslic](/projects/dynamical_diffraction/#si100-simulation)
    - [Si110 mulslice](/projects/dynamical_diffraction/#si110-simulation)

## week 17
- multislice:
    - [python interface](/projects/multislice/temsim/#python-interface) to setup simulation
    - [python structure factor](/projects/scattering/structure_factor)
    - [Si110 analysis](/projects/dynamical_diffraction/#si110-simulation) :  fixed inconsistencies
    - change parameters : lattice constant, sampling, slice_thick
- misc : markdown extensions such as critic, highlight, tasklist, TOC

## week 16
- multislice :  
    - Python posprocessing $I_{hk}(T)$,$I_g(w)$
    - [multislice Silicon](/projects/dynamical_diffraction/#silicon) [110] and [100]
    - Run [vatom,vzatom,vzatomLUT](/projects/dynamical_diffraction/#silicon) temsim functions with a binary
    - temsim spline interpolation [walk through](/projects/multislice/temsim/#real-space-atomic-projected-potential)

## week 15
- Readings :
    - read [ClabbersGrueneAbrahams2017](/readings/papers/#clabbersgrueneabrahams2017)
    - kirkland2010 autoslic, chap5,chap7-Si3N4 example
- Simulation :
    - [2-beam](/projects/dynamical_diffraction/) theory analysis
    - [multislice Silicon](/projects/dynamical_diffraction/#silicon)

## week 14
- Readings :
    - [Mott-Bethe fit](/figures/MottBethe.svg) (where q=sin(theta/2)/lam where theta is the scattering angle)
    - [Egerton2011](/projects/scattering/#electron-scattering) : Atomic scattering factors integral. Lenz model for which screening parameter accounts for electron cloud density which may be fitted to experiment.
    - [GaAs multislice](/projects/multislice/#application-examples)
    - [SubramanianSpence2015](/readings/papers/#subramanianspence2015)
- Simulation :
    - [Structure factor](/projects/scattering/#structure-factor)

## week13
- Simulation :
    - Document [temsim](/projects/multislice/temsim) atompot, mulslice
    - [Fresnel convolution](/projects/multislice/#kinematic-limit) : fft problematic but analytical exists
    - [Electron atomic scattering potentials](/projects/scattering/#electron-scattering)
    - failed to compile slicview
- Readings :
    - Kirkland Sections  [FFT,aliasing,BW,slicing](/projects/multislice/#misc), quantitative image matching, apxC-scattering
## week 12
- Readings :
    - [Kirkland, Advanced computing in electron microscopy](/readings/Kirkland2010) complete 6 and documented
- Simulation :
    - 2D Fourier transforms and [Laue tables](/misc/tables)
    - Started implemented Bloch wave
- Misc :
    - set up git back up and webserver on brno
    - totara inductions

## week 11
- Readings :
    - [Spence,Zuo, Advanced TEM](/readings/Spence2017) chap1,3,5.
    - [Kirkland, Advanced computing in electron microscopy](/readings/Kirkland2010) chap 6
- Multislice :
    - Successful run of TEMSIM (Kirkland code)
    - Failed attempts at compiling QSTEM(pyQSTEM) and PRISM(pyPrismatic) both pip and gcc-4.8
    - Looked at [JMULTIS](/books/ZuoSpenceJMULTIS.pdf)(ZuoSpenceCode) from
      [electron microdiffraction book](/books/ZuoSpence1992_ElectronMicrodiffraction.pdf)

## week 10
- read ED papers abstracts
- NearBragg : [atomic scattering factors](/projects/nearBragg/dat/scattering_factors.py).
- Documented [scattering](/projects/scattering) processes.
- Downloaded codes on [multislice](/notes/multislice_EM_softwares) and books from Kirkland and Spence.
- Compiled kirkland, failed PRISM(pyPrismatic), weird multem,

## week 09
- Read Zou2011 [chap 3](/readings/zou2011/#chap-3-crystal-structure-factors-and-symmetry)
- Complete 2D [wallpapers](/projects/wallpapers)
- Seminar Monte Carlo for Xray Fluorescent spectroscopy tom.schoonjans@diamond.ac.uk
- Few notes on [resolution](/projects/projects/#diffraction-and-resolution)

## week 08
- Read review [ClabbersAbrahams2018](http://0.0.0.0:8001/ressources/articles/ClabbersAbrahams2019.pdf)
- Read Zou2011 chap 1,2,12 [Zou2011](/readings/zou2011)
- wallpaper generator [script](http://0.0.0.0:8001/src/wallpapers/wallpaper.py) based on online [tool](http://math.hws.edu/eck/js/symmetry/wallpaper.html) where both *pyxtal* and *crystals* do not support 2D wallpaper generation
- NearBragg [discussion](/planning/meetings#200220-discussion-on-nearbragg)
- misc : pydocmd, python3 found how to serve the file system

## week 07
- Simulation approaches [summary](/projects/projects) multislice, BPM, nearBragg, particle description approaches
- summary, detail, scope and benefits of [multislice](/projects/multislice)
- Familiarize with [nearBragg program](http://0.0.0.0:8001/src/nearBragg)
- Started reading review [ClabbersAbrahams2018](http://0.0.0.0:8001/ressources/articles/ClabbersAbrahams2019.pdf)
- Python packaging,distributing and virtual environment in [doc](/misc/python)
- Trip to Cambridge 13-14th February [notes](/planning/meetings#20-02-13-cambridge)

## week 06
Multislice simulations :

- Inelastic scattering and solvent scattering reduce dynamical diffraction in [Abrahams,2019](http://0.0.0.0:8001/ressources/articles/LatychevskaiaAbrahams2019.pdf) with some [numerical applications](http://0.0.0.0:8001/src/Abrahams2019/num_app.py).
- Theoretical background behind the method, [Cowley&Moodie,1957](http://0.0.0.0:8001/ressources/articles/CowleyMoodie1957.pdf)
- Checking available [softwares](/notes/multislice_EM_softwares)
