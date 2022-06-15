# meeting
##25/5/22 Richard Beanland
- continuousED
- ask garib refinement software
- non linear least squares in Felix
- data from : tin gruene(albait), rigaku(optimizing the path), eldico()
- which frame excitation error is zero for a given rotation axis
- python into felix with (felix refactoring)
- dials : pets like rocking curve output  
- thickness dependent frame
- shared memory for structure factors
- automate scripts

##18/05/22 Richard Waite
- coh vs incoh(large for H) cross section

## kyle 4/05/2022
- symmetry determination from ED?

## BCA2022
- Tmatrix&2022

## adam qcc diffraction methods 9/05/2022
- triplet rule converging towards 0 with SA.
- difference QA vs AQC
- Dwave number of qbits
- qbit : semi-definite programming!  
- QA : shortcuts may be taken by the physical nature of superposition
- Quantum Fourier transform (QFT) Dan Brown
- grover search to find out structure from QFT
- HHL algorithm for LA
- CCP-Q
- VQE =>

## adam qcc diffraction methods 7/04/2022
hamiltonian done by Energy term(magnetic fields) applied to the quantum system
Cooling to get to minimum, turn T slowly down to get through barrier ?
quantum annealing -> turn on tunnelling
quantum fluctuation turned off ? with the extra bias term ...
linear algebra as quadratic terms in the optimization problem?
nb qbits? 3-4 per reflection
Due to noise several measurements are necessary but can be fast

## nanED 30/11/2021
- Kolb (mainz) on  defects :
  - lattice 3D point defects produce satellite reflections at forbidden reflections
  - stacking faults :
    - every second row as diffuse line if stacking fault is b/2
    - 3 rows as diffuse line if stacking row b/4
  - line defects, dislocations...
    - diffuse planes
  - software DISCUS
  diffuse scattering and defects structure simulations
- JPA
  - protein structures
    - 3 possible(helix,sheets and loops) torsion angles (N amino-acids => 3^N-1) but only very few folds exist (Levinthal paradox)
    - all 2000-10000 proteins folds are known (pdb examples with 3D structure)
    - proteins assemble in domains to form  a functional structure
    - conformations used to understand the movement of the protein related to its function
  - ED
    - single particle cryo-EM
     - exp phasing necessary when there is no initial model for MR (alpha fold)
     - shift focus => single molecule nano-beam ED instead of crystals (how is this helping against alpha fold)
     - better than cryo-EM cause signal-noise ratio better
     - room temperature graphene liquid cell helps against radiation damage
- Hongyi : structure-based drug discovery by 3D-ED
  - outline

## Lukas palatinus : Dials for jana2006
- Rfactor :
  - not inelastic scattering
  - not bonding simulating
  - blochwave with defects and solvent
- refinement small thickness :
  - dataset of known thickness : incoherently diffracting domains (along thickness)
  - partial coherency
  - inelastic JPA
- intensities :
  - reflection leaking over the whole range ? filter
  - reflection not in frame but in simu
  - scaling for dyn(sum=1 or mosaicity !!) vs kin (scaling+lorentz)
  - 15-20 simus per degrees
  - smoothing necessary for alpha,beta,omega curve (usually just nice continuous)
- CBED
- sigmas need be accurate and determination depends on detector

## Alistair ED 07/10/2021
- same  sample : insuline or small peptide
- dynamic vs kinematic
- thickness 100,500,1000nm
- loss of signal to noise
- energy sweet spot (1MeV)
- simulate microED validate

## Alistair ED 09/09/2021
- energies necessary for micrometer sizes crystals
- why microm X-ray, bridging the gap inelastic/elsatic scales almost linearly
- what instruments? what energies achievable?
- detector issues

## Tamir 07/09/2021
- share good data
- Publish processing microED data with dials
- small molecule datasets
- cetaD detector : Tamir thinks it is very good

## meeting Christine 30/03/2021
- presentation of ourselves(organisation,global project, her) : informal, English
- presentation of the internship project
- Requirements/Motivation/expectations :PhD physics
- few questions on skills
  - programming : linux(ssh,WLS,fedID,Scar), git(version control github), python(Game AI programming), C/C++/Fortran, HPC
  - mathematical side :  pde, spherical harmonics,latex : heat equation, FEM, Laplace equation,    
  - physics side : wave scattering/geometrical optics,  boundary condition pbs, spectral method

### Christine's internship assignments
  - issue#1 Integrate custom spherical harmonics in compute_f
  - issue#2 Implement arbitrary distance in linear array and show examples
  - issue#3 Exercise on using the translation theorem

## Workshop 23/03/2021
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
- lloyd science 273
- Qphase estimatation algo LLoyd
- Eiegen solver Peruzzo nat commun 5
### Hamiltonian :
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


## 07/04/2020
- structure prediction
- material database : choose spacegroup and minimize energy
- minimize energies optimisation based on crystal structure : nb parameters ?
- ambiguity solving of powder XD using crystal prediction when indexing too hard
- 2 level optimization ? electrostatic density prediction
- fragment approach : 1 order of magnitude cheaper
- in silico design : Landscape mapping to identifying porous material and likely to obtain in the lab
- Crystal growth
