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
