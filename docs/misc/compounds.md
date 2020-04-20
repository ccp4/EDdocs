# Crystal structures of famous compounds
- [Primitive cubic](#simple-cubic) : $O_2,F_2$
- [Body centred](#body-centred) : **metals**($Fe,Cr,Mo,W$), **alkalins** ($Li,Na,K,Cs$)
- [Face centred](#face-centred) : **metals**($Al,Ni,Cu,Ag,Au$)
- [Diamond](#diamond) : $C_{diamond},Si,Ge$
- [Hexagonal close pack](#hexagonal-close-pack) : $C_{graphite},N,Se$ **metals**($Zn,Cd,Co,Ti$), **alkalin-earth**($Mg,Be$).
- [Hexagonal 2D](#hexagonal-2D) : $C_{graphene}$

## links
- [periodic table of structures](https://en.wikipedia.org/wiki/Periodic_table_(crystal_structure))
- [Common structure space groups](https://homepage.univie.ac.at/michael.leitner/lattice/spcgrp/cubic.html)
- [Viewers](http://lampx.tugraz.at/~hadley/ss1/skriptum/outline.php)

Lattice                 | number | Space group  | Name   | Compounds              | view  
---------------         | ------ | ----------   |------- | ---------              | -------
**Monoclinic**(1-2)     | 1      | $P1$         |        | $FeS_2$                |[<img src="/misc/fig/001_0.png" "width"=50>](fig/001.png)
**Triclinic**(3-15)     | 12     | $C2m$        |        | $\alpha O_2$           |[<img src="/misc/fig/012_0.png" "width"=50>](fig/012.png)
                        | 14     | $P2_1/c$     |        | $\alpha Se$            |[<img src="/misc/fig/014_0.png" "width"=50>](fig/014.png)
**Orthorhombic**(16-74) | 58     | $Pnnm$       |        | $CaCl_2$,$Fe_2C$       |[<img src="/misc/fig/058_0.png" "width"=50>](fig/058.png)
                        | 61     | $Pbca$       |        | $Be$,$CdSb$            |[<img src="/misc/fig/061_0.png" "width"=50>](fig/061.png)
**Tetragonal**(75-142)  | 139    | $I4/mmm$     |        | $In$                   |[<img src="/misc/fig/139_0.png" "width"=50>](fig/139.png)
**Trigonal**(143-167)   | ?
**Hexagonal**(168-194)  | 186    | $P6_3mc$     | [Wurtzite](#wurtzite) | $C_{buckled},GaN$ | [<img src="/misc/fig/186_0.png" "width"=50>](fig/186.png)
                        | 191    | $P6_3/mmm$   | [HEX](#hex)     | $H,Li_3N$      | [<img src="/misc/fig/191_0.png" "width"=50>](fig/191.png)
                        | 194    | $P6_3/mmc$   | [HCP](#hcp)     |$C_{graphite},Zn,Cd,Co,Ti$| [<img src="/misc/fig/194_0.png" "width"=50>](fig/194.png)
**Cubic**(195-230)      | 216    | $F\bar{4}3m$ | [Zinblende](#zb) |$GaAs$        | [<img src="/misc/fig/216_0.png" "width"=50>](fig/216.png)
                        | 220    | $I43d$       |              | $Li$             | [<img src="/misc/fig/220_0.png" "width"=50>](fig/220.png)
                        | 221    | $Pm\bar{3}m$ | [PC](#cubic) | $CsCl$           | [<img src="/misc/fig/221_0.png" "width"=50>](fig/221.png)
                        | 225    | $Fm\bar{3}m$ | [FCC](#fcc)  | $NaCl$           | [<img src="/misc/fig/225_0.png" "width"=50>](fig/225.png)
                        | 227    | $Fd\bar{3}m$ | [Diamond](#diamond) | $C_{diamond},Si,Ge$ | [<img src="/misc/fig/227_0.png" "width"=50>](fig/227.png)
                        | 229    | $Im\bar{3}m$ | [BCC](#bcc)  | $Fe$             | [<img src="/misc/fig/229_0.png" "width"=50>](fig/229.png)


## Structure factors
[Common structure factors](https://en.wikipedia.org/wiki/Structure_factor#Perfect_crystals)

### Simple Cubic
- $CsCl$ space group 221 $Pm\bar{3}m$

###Face centred
- $NaCl$ space group 225 $Fm\bar{3}m$
[Face centred cubic](https://en.wikipedia.org/wiki/Structure_factor#Face-centered_cubic_(FCC))

### Body centred
- $Fe$ space group 229 $Im\bar{3}m$
- [CFe_2](http://alloy.phys.cmu.edu/alloydb.copy/alloydb/adbhtml/CFe2.oP6.2C-4Fe.PAW_GGA.html)
[Body centred cubic](https://en.wikipedia.org/wiki/Structure_factor#Body-centered_cubic_(BCC))


###Diamond
- diamond $Si$ space group 227 $Fd\bar{3}m$
- zincblende $GaAs$ space group 216 $F\bar{4}3m$
[Diamond structure factor](https://en.wikipedia.org/wiki/Structure_factor#Diamond_crystal_structure) :
\begin{equation}
  F_{hkl} = \left\{
    \begin{array}{cc}
      8f,         & h+k+l=4N \\
      4(1\pm i)f, & h+k+l=2N+1 \\
      0,          & h+k+l=4N+2
    \end{array}\right.
\mbox{,}~~~~~    
    S_{hkl} = \left\{
      \begin{array}{cc}
        64f, & h+k+l=4N \\
        32f, & h+k+l=2N+1 \\
        0,   & h+k+l=4N+2
      \end{array}\right.
\end{equation}

###Hexagonal close pack
- HCP : graphite flat 194 $P6_3/mmc$
- wurtzite : graphite buckled 186 $P6_3mc$

[interactive unit cell](http://lampx.tugraz.at/~hadley/ss1/crystalstructure/structures/hcp/hcp.php)
[HCP structure factor](https://en.wikipedia.org/wiki/Structure_factor#Hexagonal_close-packed_(HCP))

###Hexagonal 2D
[Graphene structure factor](https://en.wikipedia.org/wiki/Structure_factor#Perfect_crystals_in_one_and_two_dimensions)


## Famous Compounds
### Carbon
- Carbon allotropic forms
    - Graphite : Pure carbon forming naturally at SPT
    - Diamond : Pure carbon forming under high pressure Gibbs energy formation 0.029eV (12GPa)
    - graphene,fullerene : Artificial layered arrangement
- Coal : Carbon as extracted, mixed with other compounds
- Charcoal : Form of ashes(result of incomplete combustion) of carbon specifically produced from burned wooden logs used as an easy combustible.
###Silicate
[many forms](https://en.wikipedia.org/wiki/Silicon_dioxide#Crystalline_forms)
