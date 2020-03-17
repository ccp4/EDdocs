# week summary

To see extra links served by the [file system](http://0.0.0.0:8001/) with : `cd $CCP4; python3 -m http.server 8001`


## week 11
- Readings :
    - [Spence,Zuo,Advanced TEM](/readings/Spence2017) chap1,3,5.
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
- summary, detail, scope and benefits of [multislice](/projects/multislice_simulation)
- Familiarize with [nearBragg program](http://0.0.0.0:8001/src/nearBragg)
- Started reading review [ClabbersAbrahams2018](http://0.0.0.0:8001/ressources/articles/ClabbersAbrahams2019.pdf)
- Python packaging,distributing and virtual environment in [doc](/misc/python)
- Trip to Cambridge 13-14th February [notes](/planning/meetings#20-02-13-cambridge)

## week 06
Multislice simulations :

- Inelastic scattering and solvent scattering reduce dynamical diffraction in [Abrahams,2019](http://0.0.0.0:8001/ressources/articles/LatychevskaiaAbrahams2019.pdf) with some [numerical applications](http://0.0.0.0:8001/src/Abrahams2019/num_app.py).
- Theoretical background behind the method, [Cowley&Moodie,1957](http://0.0.0.0:8001/ressources/articles/CowleyMoodie1957.pdf)
- Checking available [softwares](/notes/multislice_EM_softwares)
