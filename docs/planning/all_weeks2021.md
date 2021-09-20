#week 37
## Monday
- manuscript draft completed
## Tuesday
- literature on multiple scattering in crystals
  - [x] application in copper (+Mermin)
## Wednesday
- [x] celullar seitz-wigner methods(point matching method)
## Thursday
- mrp analytics
## Friday
- [x] mermin chap11
- [x] andersen1975

# week 36
## Monday
- article
## Tuesday
- Tamir
- article
## Wednesday
- article fig5,fig1
## Thursday
- article fig8,9
## Friday
- compute 2,3,4,5 multiple scattering approximations (until it is close enough to bp_forward)
- article completed

# week 35
## Monday
- off
## Tuesday
- off
## Wednesday
- recaps on opto
## Thursday
- compute multislice 2,3 level scattering approximation (full expansion with N=3)
## Friday
- definition of dynamical scattering probabilities from cross section
##Sunday
- paper pyscat

## week 34
### Monday
- [x] pyscat :
    - worked on collision picture (feels wrong due to coherent decay)
    - scattering cross section of array of scatterers(N*sigma for kp=1.001)
## Tuesday
- [x] pyscat :
  - [x] direct beam scattering multislice  collision(somehow seems linear but weak scattering regime even at 500A with V0=20keV )
  - demonstrate validity of multislice
  - phase shift for well, Couloumb and Yukawa
  - understand PRISM method
  - read again cowley and moodie
## Wednesday
- [x] Christine's presentation
- started writing article

#week 33
## Monday
- day1 iUCr
- [x] pycat_approx test with more spheres
  - show approx limits with (kd/ka,ka),regimes coupled/forward coupling/uncoupled, for kp=1.1,1.01,1.001, same with (kp,ka)
## Tuesday
- day2 iUCr
- [x] pyscat: Using forward coupled and uncoupled regions,show limits with N->30, ka=10/20,kp=1.01,1.001
## Wednesday
- day3 iUCr
- [x] pyscat : relative error error in cp translated to ff, relative error of selected peaks
## Thursday
- day4 iUCr
- [x] pyscat : Set up test with MS
## Friday  
- day4 iUCr
- [x] pyscat : Fixed calibration with MS(N=1) (Vz was actually wrong and clarified the relativistic effect) and tried example $keV=50, a0=1A(ka=11), V_0=2kV(kp=1.02),kd=60,N=2-10$
- corrected christine's report

#week 32
## Monday
- [x] Christine's internship last week meeting
- [x] started iUCr poster using templates
## Tuesday
- [x] iUCr poster completed
## Wednesday
- [x] idea on nearbragg dev (incident spherical wave on pyScatSpheres)
## Thursday
- [x] pyscat : plot Bp/e(jkdp) + analytical solution to hkl1
## Friday
- [x] pyscat check continuity (approximate solution working now)

#week 31
## Monday
- [x] questaal tuto + plot(DOS and bdns)
- [x] multi2D vs bloch(high Nbeams does not help)
- [x] bloch2D continuous rotation
## Tuesday
- [x] bloch2D : show 17 plane groups diffraction patterns vs kinematic
## Wednesday
- [x] check Felix code : (check structure factors : differences ...)
## Thursday
- Felix :
    - [x] code check atomic coordinates (diff but sf are close now)
    - [x] doc main aspects (LACBED pixels weird/loop on pixels?)
    - [x] Felix on scarf(quite faster with ifort and mpirun -np4)
- pyscat : found possible pb with polar_mesh and spherical harmonics($\phi=3\pi/2$ for y<0)
## Friday
- pyscat :
  - fixed mesh result in plane wave correct over whole mesh
  - implemented incident angle. Tested for single sphere (err>1e-3 for l>8)
  - wrote formulation and incident angle analytical solution
  - check assembling
## weekend
- pyscat : fixed and converged !!!

#week 30
## Monday
- literature
## Tuesday
- bloch wave cleanup + literature
## Wednesday
- christine's internship, bug fixes...
## Thursday
- [x] wallpp : clean generation from x,y,f
## Friday
- wallpp
    - [x] crop image in asym unit cell
    - [x] keep image rgb
    - [x] compute positions by interpolation from preprocessed data (ish very slow nearest neighbour)
## Saturday
- wallpp: [x] orient 2D crystal zone axis
## Sunday   
- [x] space groups from website(fun)

# week 29
## Monday
- pets show_Ihkl
- found diff in dyn/kin intensities and uvw orientations
- several entries for same reflection in Fc (fo=sqrt(Idyn))
- simulated dyn intermediate rotation
## Tuesday
- glycine :
    - [x] check dyn(from frame 3 every 5 frames hence 30 frames only)
    - intermediate frames + integrate rocking curve
## Wednesday
    - [x] check frame reflections manual integration(profile fitting) vs pets (similar to I, correlation Imax vs Iint similar too)
    - [x] integration hkl.I vs f(rpl.I) (strong correlation with rpl.I.mean()) but something not trivial is done
    - [x] bloch minor update
    - [x] I(z) vs rpl.I(F=frame, solution to different at all thicknesses)
## Thursday
    - [x] I(z,u)
    - check bloch with another code (JEMS,Felix)
    - [x] convergence test bloch(read Zuo1995)
## Friday
    - [x] tried Felix : Blochwave from Rchard Beanland, Warwick (replied)

# week 28
## Monday
- Glycine/ireloh experiments
    - [x] Sw,I vs theta
## Tuesday
- pets dynamical diffraction postprocess
## Wednesday
- Glycine/ireloh experiments
    - [x] Iint(z) : identify strong reflections to follow integrate thickness
    - [x] I vs theta at z=100,500,1000
##Thursday
- Glycine/ireloh experiments
- [x] pets postprocess (strong reflections over full and must be included in hkl)
- [x] check reflection broadening profile (and max recorded values)
## Friday
- Glycine experiments    
    - [x] weak reflections
    - [x] rocking curve around important reflections

# week 27
## Monday
- diamond/Glycine generate full exp with Bloch and postprocess
## Tuesday
- Q-Qplot dynamic thickness vs Kinematic
    - [x] zone axis and arbitrary diamond
- diamond full exp with Bloch
    - [x] findpeaks
    - [x] unitcell
- diamond integration/rocking curve
    - [x] 2 beams
    - [x] 3 beams
## wednesday
- diamond integration/rocking curve
    - [x] 4 weak beams
    - [x] 4+2weak beams
## Thursday
- Christine's internship : some changes in doc to help arbitrary spheres formulation
- [x] continuous orientations kinematic excitation error profile random conf
## Friday
- Christine's internship : arbitrary spheres formulation
- diamond integration/rocking curve random conf
    - [x] rocking show_frame option
    - [x] Iint(z)
- Q-Qplot dynamic(thickness dep) vs Kinematic
    - [x] static, integrated reflections glycine

#week 26
- off

# week 25
## Monday
- glycine :
  - [x] regenerate .tif with qx,-qy(flipud) and run pets.unit_cell
##Tuesday
- [x] run on stfc-cloud
- [x] glycine re orientation
## Wednesday
- viewers :
    - [x] clean rotate mode
    - [x] keys in separate file
## Thursday
- [x] develop bloch2D
## Friday
- check consistency bloch vs multi2D (2beams)
  - [x] factor 0.97 still necessary after correction of 2D Ug
  - [x] multislice tilt necessary to get a good match although exact bragg should be met

# week 24
## Monday
- internship : sage.all bug fix update
- EDviewer
  - [x] complete load_config
  - [x] multislice on the fly
## Tuesday
- blochwave jupy :  compare with multislice for diamond
## Wednesday
- transmission function kinematic in random orientation
## Thursday
- bike day
## Friday
- multislice
  - [x] _pp_job
  - [x] multislice interface controls, load multi/xyz_params
- [x] diamond beam_vs_thickness for multislice/bloch(not quite correct)
- integrate reflection

# week 23
## Monday
- viewers
- meeting christine
## Tuesday
- include multi in viewers  EDutils.Viewer
- base class for ED simulators
## Wednesday
- meeting christine
  - optics.scattering gaunt ok
  - identified kd_p bug in issue#2
- viewers : update_frame function
## Thursday
- viewers
  - [x] update d_thick in frame_modes and multi
  - [x] rotations for each display
  - [x] pets Rz(omega)Ry(beta)Rx(alpha) (no better)
  - [x] put show_frames in EDutils
  - [x] allow in lattice/Sg/Vg/ in show_frames
## Friday
- viewers: hold on/off toggle in show_frames + help pets_opts plot
- stfc-cloud setup and openstack. Complete auto installation and volume access

# week 22
## Monday
- bank holiday
## Tuesday
- meeting internship :
  - fixed convergence_test, checked vectorial Legendre, changed randn to rand
  - continuity issue partly fixed
- EDutils development
## Wednesday
- register to iUCr25
- EDutils keybindings
## Thursday
- meeting internship : git branch, merge and allowed Christine to push to origin
- merge viewers into 1 EDutils viewer
- adapt pets
## Friday
- merge viewers into 1 EDutils viewer
- adapt pets


# week 21
## Monday
- meeting : git account+sph_harm working
- bloch : Test 2-beam rocking curve, thickness dependence  
## Tuesday
meeting :
   - install/test pyscat,
   - structural diagram
   - arbitrary distance in linear array
     - implementation
     - validation (psi,dpsi continuous at boundary) (N=3, kd=[0,3,5],ka=1,nref=1.1)
     - test_convergence()
     - application : N=10, ka=1, kd=5+eps*rand(10),  
     - show_ff for all eps
     - show sigma(eps) and compare with sigma(eps=0)
   - poly in compute_f
- simulate multislice rocking Glycine
## Wednesday-Friday
- off

# week 20
## Monday
- Christine meeting :
  - math and physics background
    - initial assignment : demonstration formulation N=1 analytical solution
## Tuesday
- Christine meeting:
  - physics tuto wave equation and its solutions
    - initial assignment : demonstration formulation N=1 analytical solution
## Wednesday
- Christine meeting:
  - math and physics background
  - assignment : implement recurrence Legendre poly for fast spherical harmonics on the fly computation
- pets jupy
- pets 2reciprocal_space finally fixed !
## Thursday
- complete pets jupy(understand why Rz(omega)Rx(alpha))
- pets + mupy_utils update(Fhkl at Sw)
## Friday
- Bloch jupy

#week 19
## Monday
- glycine orientation
## Tuesday
- glycine orientation
    - xyz,pxy need mirroralong 65deg?? (does not depend on unit cell convention)
    - uvw find rotation axis
## Wednesday
- glycine orientation checked indices were correct in Pets.show_frame
- glycine excitation error seems correct now
## Thursday
- [x] mupy_utils show unit cell
- glycine few rotation series + dataprocessing
## Friday
- Pets
    - [x] py library
    - [x] clean tuto jupy
### Saturday
- prepare christine meeting :
  - Generalities : language, internship primarily important for her.
    - admin on your side ? Expectation from ENSTA?
    - Is the organisation clear 2 you, prev meeting?
    - motivations again (background ccp4/ED )
  - Technical part  :
    - WLS(fedID) : install python3(IPython,pip,jupyter), git, ssh
    - git(github account?) : pyscat release,
    - pyscat API in Jupyter
    - Physics/Mathematics  : papers + doc en ligne
    - Latex/Markdown ??

#week 18
- kinda forgot about it but not a week off though
- APR : GDPR , ...

#week 17
## Tuesday
- arbitrary orientation for glycine (ideal padding x supercell)

# week 16
## Monday
- jupyter : padding and orient seem wrong
## Tuesday
- jupyter :- glycine
## Wednesday
- [x] contact Lukas process ireloh
## Thursday
- clean rotations Si
## Friday
- 111_pad0 vs 111_pad1 gif pattern same display options
- compare orientation matrix PETS/DIALS/custom
- hk2D to 3D reciprocal space
- versioning of notebook/multislice + jupy_guest menv
- increasing 4-8 times padding on Si100

# week 15
## Monday
- APR
- jupyter :
    - Silicon : sampling, rocking
## Tuesday
- jupyter :
    - orienting and padding
    - resume simu
## Wednesday
Jupyter :orienting and padding
## Thursday
Jupyter : resume+patterns
## Friday
Jupyter : finish orienting and padding

# week 14
## Monday
- multi3D
- TDS ireloh
## Tuesday
- multi3D
## Wednesday
- Mail to Paul on dataprocessing and refinement for ireloh dataset 2
- fix the token on jupyter
## Thursday
- jupyter :
    - latex try/except error showing (problem was due to jupyter interactive mode) => ugly fixed with isinteractive()
    - Silicon for : slice thickness,
## Friday
- jupyter :sampling
  - Silicon for : slice thickness


# week 13
## Monday
direct method inversion X-ray
near bragg rerun dual scattering  
3D multislice
artificially reduce potential strength temsim
## Tuesday
- PETS2 ireloh :
  - rotation axis preknown (cylindrical projection - difference space )
  - prak analysis(in plane distances and 3D distances)
## Wednesday
- Bonding in Multislice simulation
## Thursday
- Multi3D

# week 12  
- install the setup scripts with jupyter
- Thermal diffuse scattering

# week 11
## Monday
## Tuesday
- comparison padding 3D
## Wednesday
- [x] git branch conflicts
- padding study 2D relative beam intensities integration
- artificially reduce potential strength temsim

# week 10
## Monday
-low prod

# week 09
## Monday
- run ireloh2 full orientation (every 20)
## Tuesday
- [x] multislice pattern as pp to minimize data size
## Wednesday
- savecbf : pb with conversion
## Thursday
- attempt process simulation data
## Friday   
- attempt process simulation data


# week 08
## Monday
## Tuesday
- ireloh :
  - [x] create an experiment with dials

## Wednesday
- ireloh :
  - [x] dials ipython
  - [x] use find spots
## Thursday
-  [x] ireloh : try to identify miller indices
## Friday
-  [x] ireloh : identify miller indices

# week 07
## Monday
ireloh :
- [x] miller indices rsa_.dot(xh)? NO
## Tuesday
- [x] ireloh :
  - compared rsa_ for image_viewer and reciprocal_lattice_viewer(frame is not the right one)
  - extract reciprocal cell in correct frame but indexing not right
## Wednesday
- [x] ireloh : check code for find_spots and indexing
## Thursday
- [x] ireloh : check code for reciprocal lattice viewer, image_viewer
## Friday
- [x] ireloh : finally code the miller index once the spot are known (although do not understand the d matrix in get_lab_coords)


#week 06
## Monday
##Tuesday
- [x] ireloh : orientation and simu for image 900
## Wednesday
- [x] ireloh : Check orientation axis with mupy code and dials.frame_orientations
## Thursday
ireloh :
  - [x] ireloh : fix unconsistency
## Friday

#week 05
## Monday
- ireloh  : [x] crystals import in adapt orientation
## Tuesday
- [x] ireloh : test and commit crystals import in adapt orientation
- [x] website
## Wednesday
- [x] ireloh : test the other orientations
- [x] reading : spence 2020
##Thursday
- reading :
    - [x] Document spence2020
    - [x] shen1998 : 3-beam phase problem  
    - [x] Refs in spence2020
## Friday
- [x] reading :Document allen1998,spence1998,spence2000 &others

# week 04
## Monday
- reading
    - [x] Oleynikov2007 exp vs precessionED SAED with ms
- multi2D :
    - [x] fix Fresnel integral (factor exp(jpi/4) in real space propagator needed!)
## Tuesday
- website on serv7
- document oleynikov
## Wednesday
- website
- meeting
- david's scripts
## Thursday
- ireloh  : gemmi orientation pb => doc not enough info
## Friday
- ireloh : start adapting orientation code


#week 03
## Monday
- run toy simu showing the effect of
    - [x] zero padding
##Tuesday
- ireloh
    - [x] run zone axis simu and get diff pattern P
## Wednesday
- ireloh  
    - [x] checkout davids script  
    - [x] multem : cmake failing to find fftw
    - [x] clean data export by packaging correctly multislice
    - [x] more unit cells
## Thursday
- [x] Bloch wave development
    - [x] dev
    - [x] plot rocking curve
##Friday  
- [x] Bloch wave development
    - [x] redo demo and document
    - [x] check pendullosung for 2 strong beams  (with N=2,3,4)
    - [x] plot thickness dependent beams of 2-beam for few excitation errors


# week 02
## Tuesday
- presentation diffraction methods
## Wednesday
- presentation
- review 2sphere approx
## Thursday
- prepare epicza/ireloh simu :
    - [x] load structure
    - [x] compute structure factor F
## Friday
- prepare epicza/ireloh simu :
  - [x] compute transmission function T from temsim/mulslice (not possible has to be 2d slice)
  - [x] compute transmission function T from temsim/LUVatom

  - [x] prepare fo vs fc plot for F,T,P


# week 01
-off
