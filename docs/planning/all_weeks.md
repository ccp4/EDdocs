# All weeks

# week 07
## Monday
- setup this readthedocs
- compile,run and look at code of nearBragg program
## Tuesday
- summarize multislice, BPM, nearBragg, particle description approaches
- document [multislice](/projects/multislice) method scope and benefits
- induction list day 1
## Wednesday
- document [multislice](/projects/multislice) method scope and benefits
- Started reading review [ClabbersAbrahams2018](/articles/ClabbersAbrahams2018.pdf)
- seek understanding of origin of inelastic scattering in electron interaction : internal state/recoil(norm momentum exchange)
- Learning how to build,distribute,install properly with the [PyPI](file:///home/ronan/Documents/github/packaging/python.md)
## Thursday
    - Cambridge
## Friday
    - Cambridge

# week 08
## Monday
- RCaH inductions
- File system broadcast through http : `python3 -m http.server 8001`
- Set wiktionary firefox toolbar quick search : `wk [search]`
- Read review [ClabbersAbrahams2018](/articles/ClabbersAbrahams2018.pdf)
## Tuesday
- learn to use pydocmd : generates markdown documentation based on code
- Read review [ClabbersAbrahams2018](/articles/ClabbersAbrahams2018.pdf)
- Development on FourierUtils for phase problem info
- Read Zou2011 chap 12 on simu
## Wednesday
- read chap1 [Zou2011](/notes/zou2011.md)
- 1D Fourier transform
- Wallpaper space groups exercises
## Thurdsay
- NearBragg discussion
- Experimenting on pyxtal and crystal python librairies
- Tried to use Kali for wallpaper unsuccessful as too old java program
- Good javascript tool [online](http://math.hws.edu/eck/js/symmetry/wallpaper.html)
## Friday :
- wallpaper generator [script](/src/wallpaper.py)

# week 09
## Monday
- Cleaned up a few things on my main folder
- Explored opensource packages on nanoHub. Only few opensource but rather good for CNT band structure in graphene nanotubes.
- Progress on wallpaper.py package
## Tuesday
- Progress on wallpaper.py package
- Tuto Dorian linux & python3:basics,numpy
## Wednesday
- Completed [wallpaper](http://localhost:8001/src/wallpapers) with nice [doc](http://localhost:8002)
- Tuto Dorian linux & python3:numpy,matplotlib
## Thursday
- Seminar Monte Carlo for Xray Fluorescent spectroscopy tom.schoonjans@diamond.ac.uk
- Install new computer
- Chap3 zou2100 (started and understand Born approximation)
- Looked at python packages for physics : rebound(astrophysics particles),
## Friday
- report CCP4 Keith
- Chap3 zou2100 (started and understand Born approximation)
- resolution and detector distance

# week 10
## Monday
- ED folder papers
- NearBragg : [atomic scattering factors](/projects/nearBragg/dat/scattering_factors.py)
## Tuesday
- Bethe formula and works
- Wrote on [scattering](/projects/scattering)
## Wednesday
- Scattering solution Electromagnetism + Green's functions Balanis Chap14
- investigate 2 beams Bethe theory of diffraction
## Thursday
- Fire safety induction
- Back on Cowley-Moodie
- More investigation on multislice pkg TEMSIM,MULTEM,EDM,PRISM.
## Friday
- compiled TEMSIM succesfully linking with pthread and fftw3
- tried compiling PRISM, checking UTF-8 encoding table(\uXXXX) and HDF
- Investigated mutlislice package JMULTIS/ZMULT with Spence book from library
- progress on Cowley-Moodie

# week 11
## Monday
- Spence,AdvancedTEM Chap1,3
## Tuesday
- meeting with Eugene, David
- Attempts on QSTEM(pyqstem)
- Spence,AdvancedTEM Chap5.1
## Wednesday
- Thoughts on a general Transfer Matrix Method
- Read on general relativity differential geometry
## Thursday
- Manual handling induction
- Set up port and socket for registering static IP address
- Run Kirkland example successfully
- looked at ZuoSpence JMULTIS code (not straightforward)
- Failed compiling PyPrismatic from pip,source,using gcc-4.8,...
## Friday
- Read Kirkland chap6

# week 12
## Monday
- read Kirkland book chap 6,7
- mkdocs Kirkland book chap 6
## Tuesday
- Set up git on brno
- Prepare meeting
- Completed mkdocs Kirkland book chap 6:Multislice formulation
## Wednesday
- python on wine for windows support
- atom custom keybinding
- 2D Fourier transform
## Thursday
- Started Blochwave implement
## Friday
- totara : asbestos,Bytesize
- Added [tables](/misc/tables) Laue class symmetry groups

# week13
## Monday
- Fourier projection theorem and Rotation of Fourier transform
- 2D Fourier and potentials code walkthrough
- mkdocs running temsim
## Tuesday
- Meeting
- Discovered great Berkeley [database](https://www.materialsproject.org/about)
- Good for exploring [space group](http://img.chem.ucl.ac.uk/sgp/large/sgp.htm)
- Document temsim atompot and compute electron atomic scattering factor
## Wednesday
- Updated documentation with wallpapers and nearBragg
- Selected [BN](https://www.materialsproject.org/materials/mp-984/) as 2D candidate
## Thursday
- Fourier transform of complex Gaussian (fft problematic, analytical ok)
- Fresnel convolution ok
## Friday
- [temsim](/projects/multislice/temsim) atompot,mulslice
- kirkland [FFT,aliasing,BW,slicing](/projects/multislice/#misc)
- chap7 quantitative image matching
- failed to compile slicview


# week 14
##Monday
- scattering:
    - [Mott-Bethe fit](/figures/MottBethe.svg) (where q=sin(theta/2)/lam where theta is the scattering angle)
    - scattering integrate and cmp Lenz formula
- automatic pull on ssh brno
##Tuesday
- scattering:
    - Egerton2011 atomic scattering factors Lenz model(integral almost exact but with the small angle approx on [0,pi]!!!)
    - Article Tracey on Z^n(Z,q)
- Meeting
##Wednesday
- Inverse Fourier 1D and 2D of potentials ($r_m\approx 2A$) : window function allows better resolution of potential,symmetry reduce imaginary part
- Structure factor for projected potential
##Thursday
- Structure factors including potential of common wallpapers
- Appraisal course
##Friday
- Document, analyse GaAs multislice
- SubramanianSpence2015


# week 15
## Monday
- read [ClabbersGrueneAbrahams2017](/readings/papers/#clabbersgrueneabrahams2017)
- kirkland2010 autoslic, chap5,
## Tuesday
- Completed first stage appraisal
- Induction list
- kirkland2010 chap7-SiN example
## Wednesday
- Silicon multislice + python import
##Thursday
- [2-beam](/projects/dynamical_diffraction/) theory analysis
- Spence 3-beam theory


#week 16
##Tuesday
- [multislice Silicon](/projects/dynamical_diffraction/#silicon)
##Wednesday
- multislice silicon $I_{20}$ seems exact 2-beam approx.
- autoslic : record beam Intensity + autoslic code walkthrough.
##Thursday
- multislice silicon $I_{hk}(T)$,$I_g(w)$ :
    - autoslic si110 : [vatom,vzatom,vzatomLUT](/projects/scattering/#real-space-potential) + spline walk through doc
##Friday
- slicing exercise of Body centred Fe, primitive CsCl + 2D mulslice
- [Si structure factors](/misc/compounds/#diamond)
- [Common structures](/misc/compounds)
- group theory

#week 17
##Monday
- multislice :
    - Orientation conversion indices check intensities
##Tuesday
- multislice :
    - Fix high order beam intensities issue
##Wednesday
- multislice:
    - [python interface](/projects/multislice/temsim/#python-interface) to setup simulation
##Thursday
- multislice:
    - testing python interface
- misc : markdown extensions for
    - {==critic=>highlight==},
    - [x] tasklists
    - TOC for table of contents
##Friday
- misc : [protein space groups](/misc/tables/#protein-space-groups)
- multislice:
    - py_structure_factor of Silicon


#week 18
##Monday
- multislice:
    - structure_factor library + documentation   
    - check $I_{hk}$ pendullosung thickness value (close but no cigar)
##Tuesday
- multislice:
    - Python postprocess
##Wednesday
- multislice:
    - python run,check_progress  
    - sweep a few slice_thickness Si110 autoslic
##Thursday
- multislice:
    - [Si100 autoslic](/projects/dynamical_diffraction/#si100-simulation)
      - clean slice
      - perfect 2-beam though pendullosung not quite right
##Friday
- multislice:
    - [Si110 mulslice](/projects/dynamical_diffraction/#si110-simulation)


#week 19
##Monday
- Multislice :
    - wall time prediction : Install on asus,dell,brno and run temsim
##Tuesday
- Multislice :
    - walltime prediction :  Run batch and postprocess
    - Paracetamol model with crystals and triecd d gemmi
##Wednesday
- Kirchoff theory and FFT dimensionality aspect
##Thursday  
- Multislice :
    - [diffraction pattern](/projects/applications/#si-diffraction-patterns)
##Friday
- Multislice :
    - walltime : Adapt paths,scripts to run and monitor for remote
##Saturday
- Multislice :
    - git and commit temsim
    - walltime : perform walltime analysis on all
    - get mulslice working on remote + commit mulslice


#week20
##Monday
- Multislice :
    - [auto coords](/projects/multislice/temsim/#datafile-generation)
##Tuesday
- Multislice :
    - postprocess routine
    - [gif patterns](/projects/multislice/applications/#diffraction-patterns)
##Wednesday
- Multislice :
    - [lattice constant effect](/projects/multislice/applications/#lattice-constant-effect)  BCC autoslic
    - [finite size effect article](/articles/Rodriguez2010_SimulaTEM_Multislice_simulations_for_general_objects.pdf)
#Thursday
- Multislice :
    - Paracetamol : visualize unit_cell, slice001
- misc : logs on standardDisplay
    - 3d step rotation arrow keys callback + view[0..6]
    - xylims consistent in 3d
    - ticks, tick_labels and minor ticks enable single float and array parsing
    - 3d remove perspective effect
##Friday
- Multislice :
    - Paracetamol :
        - add trihedron, chose rotation axis(b => z=a..c..-a b,a)
        - [show xyz figs](/projects/multislice/applications/#paracetamol)

#week21
##Monday
- multislice
    - fix orient make_xyz
##Tuesday
- multislice
    - Adapt show_cell for all lattices
##Wednesday
- Paracetamol : orientation issue
    - could not solve it
    - in other papers : bR is orthorombic(Abrahmas,Glaeser altough 120deg from pdb reference + not full) and P4_32_12(Spence)
##Thursday
  - tmm
##Friday
  - tmm

#week22
##Monday
  - tmm
##Tuesday    
  - tmm
##Wednesday
  - tmm
##Thursday
  - tmm
##Friday
  - tmm


#week23
##Monday
- multislice :
    - [Doc](/projects/multislice/scattering/#thermal-effects) + implementation for wobble and long range disorders
    - [Application](/projects/multislice/applications/#wobble-effect)
##Tuesday
##Wednesday
##Thursday
- misc :
    - Bfactor
    - Takanori paper
##Friday
- multislice :
    - biotin 001.xyz + storage file into npy patterns(npy with pickle as light as pd and just as heavy as binary double file without compression)

#week 24
## Monday
- multislice :
    - multiple orientation biotin
    - Slice orientation pb reference in section 6.7+literature research
##Tuesday  
- mosaicity : nearBragg+wiki
##Wednesday
- day off
## Thursday
- Blochwave coding attempt
## Friday
- readings : multislice tilt papers

#week 25
## Monday
- Multislice:
    - change lattice constant slightly
    - Generate 8 rotations biotin xyz
    - run [7deg,45deg,90deg]
## Tuesday
- multislice
## Wednesday
- multislice
    - multislice 2D
    - fft1D and ifft1D solved HF issue with symmetric signal
## Thursday
- multislice 2D
## Friday
- multislice 2D cmp with Fresnel convolution =>PB
