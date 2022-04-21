#Talk
## Introduction on the topic selection#1
- CCP4 group who has interest in extending their functionalities to tackle ED datasets. We are at an early development stage
- one of our goal has been to get a good understanding of electron diffraction and in particular the frequently mechanism of multiple scattering with the hope of developing a method that could provide additional modelling capabilities than the one already provided by the most commonly used methods.
- I will be presenting an unusual way to model high energy electron diffraction which provides real space information about the extent of multiple scattering in a typical experiment involving light-atoms commonly found in organic macromolecules.

## Plan#2
- Background on multiple scattering and motivations for getting a quantitative description of it.
- How the T-matrix method enables keeping track of multiple scattering events.
- Application to an array of Carbon atoms
- Discussion and perspective

## Multiple scattering#3
The concept of multiple scattering is often represented with its intuitive interpretation from a classical ballistic picture of collisions. Let's consider 3 different particles (here different atoms) and look at how incident electrons would collide with those particles.
If these were solid balls we would see them mostly bouncing off the atoms.
But in quantum mechanics, each incident electron must individually be represented as a wave. For electron diffraction experiments, this wave is often prepared  after collimated into something very close to a plane wave whose momentum can be identified as their incident speed.
So Once an incident electron collides or interacts with the atom, it should technically look something like the following scattered wave.
Now the commonly accepted interpretation in QM if we look at the Fourier transform of this scattered wave, we get the probability that the incident electron is scattered in the different possible directions of space.
Here, I will now use the crystallographic term of reciprocal space to denote the space of this Fourier transform.
We may label the incident as the 0th order in our multiple scattering bookkeeping endeavour.
So let's focus for example on one particular direction and let's label it as 1st order scattering. This single scattering picture due to the immediate response of the atoms to the incident electrons is the framework of X-rays crystallography.
In ED, it is commonly accepted that subsequent scattering contribute to the diffraction pattern and therefore can not be neglected. Here is shown secondary scattering by atom 2 and 3 after scattering from the atom 1 as well as secondary scattering from sphere 3 after scattering from sphere 2, the colour indicating the origin of scattering of the previous level.
It is then even possible to further consider scattering from the blue atom due to the secondary scattering from the green atom which is then labelled as a 3rd level scattering event.

## Multiple scattering#4 - Motivations
The reason it may be interesting to produce an accurate bookkeeping of multiple scattering is because if we consider inelastic scattering, which is significant in ED, the following paper proposed that the order in which the scattering events occur plays an important role in the contribution of dynamical diffraction to diffraction patterns. It also suggested that using energy filtering could actually be detrimental since a larger fraction of the signal is dynamical and therefore makes it harder to solve the structure.
However, these figures were obtained from classical considerations involving the elastic and inelastic interaction cross sections. So it can not be used to produce a diffraction patterns to be compared to experiments.
So our contribution here has been a preliminary attempt at extending this work by providing a way to produce diffraction patterns using this multiple scattering picture which will be restricted to elastic scattering only.
In fact the most commonly used methods for simulating electron diffraction patterns which are blochwave and multislice do not provide such insights.

## T-matrix#5 - Schrodinger’s equation
Whichever way you are looking at dynamical diffraction, one way or another you have to solve Schroedinger's equation where E is the given incident energy of the electron gun(200keV for example). V is the electrostatic potential of the sample under consideration. It is known as far as the equation is concerned and generally deduced from the scattering form factors of the individual atoms of the structure.
In the context of a structure solving procedure it would typically be fed by the refinement algorithm. So the only thing we are trying to find  is the wave function Psi introduced earlier.
Further high energy assumptions are usually used in blochwave and multislice  but the T-matrix natively aims at solving the general form.  
Simply, the momentum is used instead of the energy and the refractive index is considered by analogy to optics as a ratio of the electrostatic potential with respect to the incident kinetic energy.
The biggest approximation

## Tmatrix#6 - The method
The T-matrix method like most scattering matrix methods takes advantage of known analytical solutions of Schrodinger's equation so that your whole problem reduces to finding scalar (or here complex) coefficients.
In this instance the solutions used are those of the homogeneous Schro in spherical coordinates (namely Bessel and Hankel spherical harmonics).
This is where we make our biggest approximation since the ele potential is assumed constant in each spherical regions of space. This means that many shells may be required to fully capture the actual electrostatic potential as shown here for Carbone. This would automatically comes at a computational cost.
But for the sake of just studying the extent of multiple scattering we can see that all shells have a similar overall scattering cross section which means that using only a single shell should not be too crude of an approximation.
The great advantage of the T-matrix is that by using continuity constraints the whole problem can be solved by essentially with a matrix inversion where I-T is the matrix to invert, U vector of unknown coeffs and L represents the external plane wave.

## Tmatrix#7 - Multiple scattering
The beauty of such a scattering matrix approach is to provide great physical insights about multiple scattering. As you can see the matrix to invert is made of the identity matrix and a matrix T(hence the name of the method) which represents the mutual interactions or couplings between the atoms.

Each entry precisely accounts for the response of one sphere to the other sphere. For example T_qp accounts for the wave scattered by sphere q in response to the wave scattered by sphere p while T_pq accounts for the wave scattered by sphere p in response to the wave scattered by sphere q.
So we can see that there is a bit of a chicken and egg situation as the waves emitted by both atoms depend on one another. This is why the rigorous solution requires the inversion of the matrix.
Now we can notice that for high energy electrons, back scattering should be negligible.

## Tmatrix#8 - Forward Multiple scattering
Also, if we remove the coupling matrix T, the identity matrix represents the direct response of the atoms to the incident plane wave that we note b_p0. We can therefore say that Tbp0 represents the secondary scattering from the initial scattering.
With the same logic T^2b0 represents the 3-level scattering and so on...

So not only we now have a detailed way to keep track of multiple scattering from each individual atom but we transformed a rigorous matrix inversion problem into an approximate but fully explicit embarrassingly parallel computational problem. We ll see that we can control the accuracy of our solution by taking higher and higher order n-level scattering terms in our expansion.

## Application#7

## Application#8

## Perspectives#9
To summarize, we have seen that modelling ED involves solving Schrodinger's equation and that we could adapt a simple multiple scattering theory such as the T-matrix into a method that provides us with a rigorous explicit way of keeping track of multiple scattering events in real space.
Now we can draw a comparison with the popular multislice method which takes advantage of the fast electron forward scattering approximation, which we btw also managed to adpat to the T-matrix.
The multislice is also an explicit scheme since we can compute explicitly what the solution looks like at one slice from solely the knowledge of the solution at the previous slice which is inherently made available by the forward scattering nature of the interaction.
In the foundational paper of MS, an interpretation of multiple scattering is also provided but entirely stated in reciprocal space.
While it also provides nice insights, it would not enable us to turn it into a method where the order in which interactions would take place.

## Perspectives#10
