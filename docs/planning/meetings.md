# meeting

## 7/04/2020
- structure prediction
- material database : choose spacegroup and minimize energy
- minimize energies optimisation based on crystal structure : nb parameters ?
- ambiguity solving of powder XD using crystal prediction when indexing too hard
- 2 level optimization ? electrostatic density prediction
- fragment approach : 1 order of magnitude cheaper
- in silico design : Landscape mapping to identifying porous material and likely to obtain in the lab
- Crystal growth


## meeting Christine 30/03/2021
- presentation of ourselves(organisation,global project, her) : informal, english
- presentation of the internship project
- Requirements/Motivation/expectations :PhD physics
- few questions on skills
  - programming : linux(ssh,WLS,fedID,Scar), git(version control github), python(Game AI programming), C/C++/Fortran, HPC
  - mathematical side :  pde, spherical harmonics,latex : heat equation, FEM, Laplace equation,    
  - physics side : wave scattering/geometrical optics,  boundary condition pbs, spectral method


#workshop 23/03/2021
vincent & midgley ultramicroscopy 53 1994
techniques : cRED, RED PEDT SCED EDT ADT MicroED
Gemmi 2019 1315-1329
Programs :
   - ADT3D
   - EDTED oleynikov
   - stockholm team
   - PETS 2
Excitation error correcting the intensity during integration?
rocking curve for continuous?single peak rocking curve ? gaussian profile ?
finalize integration dynamical refinement
zone axis deep in scale strong dynamical effect important scaling correction
What is the Rint?
SIR(direct method works),SHELXT,SuperFLIP
need to take integrated intensities
thickness plot!!
structure factor from model(kinematic)
derivatives for least square !
using bloch wave for phasing too?
??
selection data :
  - Rsg:ratio excitation to maximum point(remove high res)
  - Dsg (difference between excitation error)
possible to get absolute structure even with light atoms
Bonding effect !?
Beam damage  ?
shape of the crystal!

##2/03/2021
projection
interpolation
integration : pixel all pixels - background
profile form : better estimate for weak intensities
merge : symmetry reflections brought to the same scale (unmerged )
calculated Ro : refmac, no cycle, source mbelectr

Intensities compared after scaling

gain : sensitivity of the spot finding algorithm
Poisson distribution sampling : nearBragg
mosaicity CBED pattern
EELS plasmon
refinement giving smaller thickness
bad exp with FIB


# 23/02
scale the highest values to the same as experiment
d_matrix reciprocal lattice point to detector plane
developer build
libtbx.pip install

## 13 Jan 2021 Diffraction methods
- approximate inelastic scattering
- density matrix approach
- elena pascal : experience inelastic scattering
- james parkhurst : multem

## Conf 17Dec2020
- JPA : plasmons emphasis
- Zou,hongyi:
  - Instamatic 2.0
  - dynamical refinement
  - SaR2lox
- jana2006,2020

## Abrahams 11Nov2020
- inelastic scattering
    - electron contribute to the bragg spot
    - thinner crystal for inelastic scattering loss of coherency : better crystal
- TDS
- read ED dials
- read Clabbers review
- read dynamical scattering correction


## Tim Gruene 10Nov2020
- power of crystallo ED is we know where the spots should be
- 77K less cracking !
- 0.4A glycine. No positions H since contrast C-H?!
- completeness pb : 90-140deg rotation and low symmetry space group
    - twisted crystals
    - nylon fibers to get 5 crystals to complete the data
- sample preparation :
    - too many crystals mixtures in Diffraction
    - Brush sputter, slide grinder, suspension
- cryo-tomography holder for sensitive samples
- Instrumentations : CM200,
- high coherence FEG is bad !!!
- R values 20% in ED
- radiation damage reduced with cooling, beam intensity
- Lukas Palatinus dynamic scattering (scattering factors...)
- direct method phasing 0.9A
- defects

## week28 notes
- molecular replacement : model comes from different space group  
- defects : affects dynamical diffraction more  
- Experimental ED for proteins established ? (100 PDB ED data):
    - yonekura membrane ED (not as good as X-ray but even then solved with ED )
    - technology not as advanced as X-ray
- Theoretical:
    - broad effect of dynamical diffraction can be corrected for improving structure determination
    - mosaicity ruled out
    - lattice bending (no systematic)
    - radiation damage
    - biotin(no solvent)
- eBIC : real data for biotin

##week23
- difference maps : indicates potential sites where atoms might be missing


## Quantum computer for chemistry 2/06
papers :

- lloyd science 273
- Qphase estimatation algo LLoyd
- Eiegen solver Peruzzo nat commun 5

Hamiltonian :

- for molecules vs DFT
- second quantisation integrals
- H2 Dimer McArdle RMP92


##week 20 APR with SLM
- proteindiffraction.org
- CCP4/DIALS+MPI workshop and tutorial for next year training
- ask for Journal papers
- compulsory trainings done
- make contact with Zou,Homsvoller

##week 19 Questions
- diffraction images format? .smv

##week 17 look ahead
- predict runtimes multislice
- ion scattering potential
- look at intermediate molecule like biotin,paracetamol

##week 15-Questions
- Rocking curve :
    - Historically, crystal was continuously rotated in a rocking manner to increase signal strength.  
- REFMAC5-EXDATA ELECTRON CRYSTALLOGRAPHY :
    - For atomic scattering form factors mostly.
- Structure factor CCP4 : TRUNCATE program
    - Compute structure factor from intensities doing some processing/truncation to remove negative intensities.

# Other
## 02/13-14/20-Cambridge

- Data collection for identifying issues whether engineering or phsyics origin
- good sampling : small/large molecules, good/bad samples, good/bad data, raw
- Data sources : eBIC, Thermofisher, nanoimaging processes,
- Physics based challenges : dynamical scattering, solvent scattering, inelastic scattering, radio vs direct transmission
- Engineering based problems : detector, integration, sample damage
- Methods improvement : point charge refinement

deliverables :

- What level of accuracy can be reached by the different simulation approaches ?
- What are the most appropriate features to account at the scaling stage ?
- Improve the correction factor


## 20/02/20-Discussion on nearBragg

- Use Motte-Bethe formula to get atomic structure factor for ED from that for X-ray
- Adapt Thomson scattering in nearBragg for Coulomb scattering
- Compute path length map for each atoms
- account for inelastic scattering through loss of intensity
- Focus on region of interest [ROI](/misc/Time_complexity_estimates_ED_sim.docx)
