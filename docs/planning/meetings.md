# weekly meeting

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
