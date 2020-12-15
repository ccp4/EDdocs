#week 50
- complete full gui for hard,qdot with varying N

#week 49
- Started comparing qdot to Born/multislice/near bragg

#week 48
- scalar endfired linear array of hard spheres(convergence)
- approximate approach implemented but unsatisfactory
- neat gui pyScatSpheres
- single sphere constant potential implemented and documented

#week 47
- approximate plane wave hamid990 vectorial
- implement scalar endfired linear array of hard spheres (2 spheres success!!!)

#week 46
- presentation James Holton
- presentation Jan Peter Abrahams
- hamid1990 progress 2PEC spheres
#week 45
- hamid1990 solve singlePECsphere mono_rcs,bi_rcs(still issues here) 3d fields, alpha=0,dp=0
- incident vector plane wave using spherical expansion

#week 44
- linear array of EM PEC spheres
- install meep
- smv format

#week 43
- literature review on microED

#week 42
- off

#week 41
- run simu SC_carbone
- run simu biotin

#week 40
- .smv format dials import basic set for bcc  
- Friedel pair symmetry violation mitigation by integrating small rotation angle

#week 39
- Korringa theory and scattering by multiple spheres

#week 38
- work on main [report](/documents/report.pdf)
- nearBragg central beam calculation
- nearBragg double scattering bookkeeping

#week37
- write document summary for 2-beam
- complete implement NB-double scattering  

#week36
- [2 beam](/projects/multislice/multi2D/#2-beam-dynamical-diffraction) rocking curves with tilted runs (pendullosung thickness still an issue)  

#week35
- meeting CCP9
- fixed fig.show issue on tarik-CCP4 due to Qt5 installation pb
- Run tilted simulation with Ewald sphere analysis

#week 33/34
- nearBragg Fraunhofer vs multi_2D beam intensities  
- Near Bragg direct beam intensity prediction
- kinematic multi_2D ewald sphere

#week 32
- coursera finished course

#week 31
- coursera week2,3,4
- CowleyMoodie1957 reread after 6 months
- WG2 meeting
- pyNearBragg_fraunhofer vs multi2D (strenght of potential through form factors hence no curvature)

#week30
- started course on TEM coursera
- qutip Bloch complicated
- [comparison Holton](/projects/nearBragg/#comparison-with-holton) minor differences : solid_angle, pixel offset, X/Z reverse
- pyNearBragg [green vs Fresnel vs Fraunhofer](/projects/nearBragg/#path-length-estimate)

#week29
- multislice
    - [tilts run](/projects/multislice/applications#tilts-run)
    - [angle run](/projects/multislice/applications#full-rotational-study)
- [Abstract](/planning/abstract.pdf) and presentation script.
- Charge flipping algo [Chapuis](https://www.epfl.ch/schools/sb/research/iphys/teaching/crystallography/charge-flipping/) and [SUPERFLIP](/articles/chapuis_superflip.pdf) from physicsToday2017

#week28
- OFF

#week27
- presentation + meetings
- OFF from Thursday

#week26
- nearBragg : attempt 2 layer diffraction
- latychevskaia2019 : analytical for elastic scattering only
- multi_2D + unbound projected potential with varying thickness  

#week25
- Multislice:
    - 2D solver
    - [0,45,90] orientations runs for biotin

#week24
- readings : [multislice literature](/readings/multislice) especially DyckChen1997
- multislice : started simulations with tilt

#week23
- Papers : read Takanori2020 paper
- Multislice :
    - biotin single run
    - misc : diffraction pattern file formats

#week22
- multislice :
    - [Doc](/projects/multislice/scattering/#thermal-effects) + implementation for wobble and long range disorders
    - [Application](/projects/multislice/applications/#wobble-effect)

#week21
- multislice :
    - fix orient make_xyz
    - Adapt show_cell for all lattices
    - orthorhombic lattice pb (SubramanianSpence2015 and LatychevskaiaAbrahams2019 use orthorombic)
##week20
- multislice:
    - [auto coords](/projects/multislice/temsim/#datafile-generation)
    - [gif patterns](/projects/multislice/applications/#diffraction-patterns)
    - [lattice constant effect](/projects/multislice/applications/#lattice-constant-effect)  BCC autoslic
    - [finite size effect article](/articles/Rodriguez2010_SimulaTEM_Multislice_simulations_for_general_objects.pdf)
    - Paracetamol slices [figs](/projects/multislice/applications/#paracetamol)

##week 19
- multislice:
    - [diffraction pattern](/projects/multislice/applications/#si-diffraction-patterns)
    - [walltime](/projects/multislice/temsim/#walltime)

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

## week 13
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
