#week 1
- sick

#week 2
## Monday
- ED pytest 5h :
  - python3 -m pytest to ensure correct python3 installation used
  - run multiple tests in multiple folders
  - skip test
  - save refs and compare to outputs
  - html reports with extra links
## Tuesday
- pyscat : Corrections 0.5h
- pytest :
    - add decorator for image and comparison with ref
    - added felix test
## Wednesday
- FELIX 1h
    - [x] fix printout eigenvec
    - [x] write installer.sh for other machines
    - [x] quick python wrapper
- pytest :
    - [x] fix crontab test issue and http.server on serv7 with crontab launcher
    - [x] install felix test on serv7
    - [x] started test for continuous rotation
## Thursday
- pytest:
    - [x] add rock integration test
    - [x] fix wrong python3 bug on crontab serv7
- rock:
    - [x] fix bug rock get_beam I>0.1 (set_intensities diff than loop over z )
    - [x] remove friedel pairs
- presentation:
    - plane wave isoE vs blochwave : pw requires very large nb of beams (~1e4 beams) to get to K=30(100keV) for lattice constant 3A
##Friday
- [x] TDutils : pytest displayStandards
- [x] TDutils : code coverage
- [x] presentation animations :rotating 2D crystal,bw gamma=Sg weak beams
- pytest:
    - [x] fix felix running with crontab( relative path to blochwave)
    - [x] bloch code coverage (on serv7 too)

#week 03
## Monday
- [x] pytest:fixed serv7 python3 bug again (dont update ptest from ccp4-ED)
- presentation:
    - [x] bw_vs_pw process difference
    - [x] CBED and continuous ED line
## Tuesday
- Slide/poster for gwyndaff
## Wednesday
- Slide for gwyndaff
##Thursday
- freecad :
    - addons and libraries(CAD part library still not working )
    - yt tutorials
    - spreadsheet variables
    - compilation attempt (tries fixing pyqt mess but just used v0.19)
    - sections tech drawing nice
    - scripting a feature and a plugin (fcgears in .FreeCAD/Mod/)
    - doxygen and dev instructions
    - parts-library working now
- 3D printing:
    - Start of with mega S or creative ender3
## Friday
- multi vs bloch 2D


#week 04
## Monday
- bw presentation

#week 05
## Monday
## Tuesday
## Wednesday
- abstract BCA2022
- pyscat fig1-6 corrections
## Thursday
- tests
## Friday
- setup and tests EDutils on serv6

# week 06
## Monday
- pytest
  - bloch increase coverage tests to 95%
## Tuesday
- add EDutils tests
## Wednesday
- gui exploration (Qt sounds good with beampy lib)
## Thursday
- js django tuto a
## Friday
- gui js dev
