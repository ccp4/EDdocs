<h1 id="src.lattice">src.lattice</h1>


Defines 2D lattices with some utilities

<h2 id="src.lattice.get_lattice_vec">get_lattice_vec</h2>

```python
get_lattice_vec(lat_type='', wallpp_type=None, a=1, b=1, alpha=90)
```
Computes lattice vectors from :
- a,b,angle : lattice parameters
- lat_type  : lattice type  [hex,square,rect,oblique]
<h2 id="src.lattice.get_miller">get_miller</h2>

```python
get_miller(lattice_vec, nh, nk, ax=None)
```
get the miller indices and correspoding vectors in format :
nh.nk x 2
<h2 id="src.lattice.plot_lattice">plot_lattice</h2>

```python
plot_lattice(lattice_vec, nh=3, nk=3, ax=None, pOpt='th', xylims=None)
```
Plot lattice grid :
- nh,nk : number of cells along each direction
- pOpt : h(additional lines for hexagonal), p(plot), t(ticks), e(equal)
