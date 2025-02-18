#Python

##Packaging
### Running a module locally as a package
Having *\__init__.py* in each of the package folders, the module can be run from command line using (without .py extension ):

`python3 -m pkg.module `

Note that the working directory must contain folder `pkg`.
This allows for example relative import such as :

`from .. import parent_module`


### Installing a package locally
A package can be installed with :

`pip3 install -e .`

where the working directory contains a [setup.py](https://packaging.python.org/tutorials/packaging-projects/#creating-setup-py).
Detailed description on who to specify every field (version number,url, etc...) can be found [here](https://packaging.python.org/guides/distributing-packages-using-setuptools/).
For example :

    -py_modules=['module_name'] : External module files that are needed and can run
    -install_requires=['pkg_name'] : External package

After running setup.py a *pkg*.egg-info folder will be created containing information about the package.
Note that the new package can be edited in place and used by other libraries.

To prevent any incompatibilies, it is therefore best to provide a release for those libraries,
but in this case it is necessary to create an [virtual environment](#virtual-environment) as normal python installation
do not handle multiple versions of the same package.




### Build the package for distribution
For distributing the package it is necessary to run the setup with some options :

`python3 setup.py sdist bdist_wheel`

where
**sdist** builds the library in *build/lib* and puts the archive in *dist/pkg.tar.gz*.
**bdist_wheel** compiles the binary(wheel) and distributes it in *dist/pkg.whl*



### Distributing the package
After registering an account with username and password on [PyPI](https://pypi.org) or on [testPyPI](https://test.pypi.org/),
the package can be distributed to the Python index PyPI with

`twine upload dist/*`

To avoid being prompted with a username and password, it is possible to specify them a .pypirc configuration file $HOME/[.pypirc](file:///home/ronan/.pypirc).
Alternatively, it is also possible to create a more secure [token](https://test.pypi.org/help/#apitoken) and replace username by *\__token__* and password by the provided token (contains the pypi- prefix).

For test purposes, the testPyPI index repository can be used instead :

`twine upload --repository testpypi dist/*`

where *testpypi* is defined in the .pipyrc file.



### Installing from the PyPI index
- pulling from the PyPI index :
`pip3 install pkg_name `
- pulling from the testPyPI index :
`pip3 install --index-url https://test.pypi.org/simple pkg_name`
- updating the latest version (replacing the older version) :
`pip3 install --upgrade pkg_name`

where *pkg_name* is one of the names of the package as specified in the setup.py file (which may be different from the master folder name of the package).

- Testing the installation package :
`python3 -c "import pkg"`
- Testing a module :
`python3 -c "from pkg.subfolder import module"`


### Virtual environment

Create a [virtual environment](#https://docs.python.org/3/library/venv.html)
to control the versions of the packages installed.

- create a virtual environment *.venv* :
`python3 -m venv ~/.venv`
- activate the environment :
`~/.venv/bin/activate`
- back to default environment : `deactivate`
now the list of packages installed in this environment are seen with :
- check list of environment packages : `pip3 list`



##Documenting
### mkdocs
mkdocs is a simple web framework to build site from markdown files.
copy [mkdocs.yml](#https://www.mkdocs.org/user-guide/configuration/) need be copied and filled it accordingly in the parent directory of the **docs** containing the **.md** files.

- Install mkdocs with pip and not apt : `pip3 install mkdocs`
- Install useful extensions with : `pip3 install pymdown-extensions`
- serve at local IP on port 8000  : `mkdocs serve -a 0.0.0.0:8000`  

###Generating markdown doc
<!-- Since pydoc is not very good as it struggles with import packages, -->
[pydocmd](https://pypi.org/project/pydoc-markdown/)
to generate a markdown documentation based on *__doc__* member of the module.

- write doc of module to markdown file :
` pydocmd simple pkg.module+ > module.md`
- replace '/' by '.' :
`pyhelp [linux_module_path]`
- build documentation from [pydocmd.yml](https://github.com/NiklasRosenstein/pydoc-markdown#usage):
`pydocmd build`

where **+** generates documentation within function headers.


## Python features
- get an element from an **iterable** like a `set` : `list(iterable)[index]`
