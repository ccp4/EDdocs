<h1 id="src.plane_group">src.plane_group</h1>


<h2 id="src.plane_group.Wallpaper">Wallpaper</h2>

```python
Wallpaper(self, pp_type, a=1, b=1, angle=90, pattern=None, gen=True, ndeg=0, nh=1, nk=1, pOpt='', name='', path='.')
```
Class for creating wallpapers
<h3 id="src.plane_group.Wallpaper.init_lattice">init_lattice</h3>

```python
Wallpaper.init_lattice(self, a, b, angle)
```
init lattice assigning attributes :
lat_type    : lattice type
lattice_vec : lattice vectors
a,b,angle   : lattice parameters enforcing lattice constraints

<h3 id="src.plane_group.Wallpaper.init_unit_cell">init_unit_cell</h3>

```python
Wallpaper.init_unit_cell(self)
```
init unit cell defining :
sym_ops   : symmetry operations
asym_cell : asymmetric unit cell (matplotlib.patches.Polygon)
<h3 id="src.plane_group.Wallpaper.add_pattern">add_pattern</h3>

```python
Wallpaper.add_pattern(self, pattern, pOpt='')
```
add a pattern from :
Nx3 np.array : x y f coordinates within asymetric unit cells
txt file     : contains  x y f
where f : list of tags for atoms
<h3 id="src.plane_group.Wallpaper.generate_wallpp">generate_wallpp</h3>

```python
Wallpaper.generate_wallpp(self, nh, nk, ndeg=0)
```
Generate wallpaper applying symmetry operations :
ndeg   : order for generating potential map              (see build_potential)
nh,nk  : number of unit cells to be displayed
ndeg   : number of discretization points along one the direction for building the potential map
<h3 id="src.plane_group.Wallpaper.build_potential">build_potential</h3>

```python
Wallpaper.build_potential(self, ndeg=10)
```
Build the potential map :
ndeg : number of discretization points along one the direction for building the potential map
<h3 id="src.plane_group.Wallpaper.plot_unit_cells">plot_unit_cells</h3>

```python
Wallpaper.plot_unit_cells(self, pOpt='', nh=3, nk=4, xylims=[])
```
Display the wallpaper
pOpt :  A(Atom), V(potential), p(plot), u(unit_cell), a(asym_unit)
     :  x(lims),g(grid),t(ticks),e(equal),s(setPos)
<h2 id="src.plane_group.mirr">mirr</h2>

```python
mirr(x, u, A)
```
Symmetry with respect to line :
u : direction
A : Point belonging to the line

<h2 id="src.plane_group.glax">glax</h2>

```python
glax(x, u, A)
```
Glide axis transformation
u : direction of the glide axis
A : Point belonging to the line

