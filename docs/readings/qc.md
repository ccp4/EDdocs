# Quantum computing
{% set figs='/figures/readings/peruzzo2014/' %}


- [Peruzzo2014](#variational-quantum-eigenvalue-solver) : A variational eigenvalue solver on a photonic quantum processor.[Nature Communications, 5(May).](https://doi.org/10.1038/ncomms5213)

## Variational Quantum Eigenvalue solver
Algorithm for finding the eigenvalue of an operator using a variational approach.

### Method and Algorithm
- Express the Hamiltonian of a system using creation/annihilation operators :
    - $\bb H = \sum_{pq} h_{pq}\bb a_p^{\dagger}\bb a_q + \sum_{pqrs} h_{pqrs}\bb a_p^{\dagger}\bb a_q^{\dagger}\bb a_r\bb a_s +...$.
- Turn it into a spin-chain Hamiltonian (Pauli operators) using Jordan-Wigner transformation :
    - $\bb H = \sum_{i,\alpha} h^{\alpha}_{i}(R)\sigma^{i}_{\alpha} + \sum_{ij} h_{ij\alpha\beta}\sigma_{\alpha}^{i}\sigma_{\beta}^{j} + ...  = \sum_i \bb H_i$
- compute the expectation value $<\Psi|H|\Psi>/<\Psi|\Psi>$ :
    - where the Hamiltonian has been expressed as a sum of polynomial number of tensor products of Pauli operators $\bb H_i$
    - each module computes the expectation value of the tensor product of Pauli operators $<\Psi|\sigma_i\otimes\sigma_j|\Psi>$
- Use a classical minimizer to determine new parameters for $\Psi$

[![]({{figs}}1.png)]({{figs}}1.png)

**features**

- short coherent evolution compared to QA and standard QPE
- Needs polynomial number of iterations that QPE
- Has computational and storage exponential advantage over classical algorithm


### Prototype Demonstration Implementation
- Reconfigurable photonic quantum processor to evaluate a Pauli matrix tensor product
- Local measurement of each qbit is used to get the expectation value of Pauli matrix tensor products
- The wave vector is parametrized with $\phi$ achieved by phase shifters. A mapping must be defined to get $\phi$ from the optimizer parameters $\theta$.
  - In the case of a 2x2 generic pauli tensor product

[![]({{figs}}2.png)]({{figs}}2.png)



### Application to He-H+ molecule (2 electrons => H is 2x2) the electrons may be entangled.
[![]({{figs}}3-4.png)]({{figs}}3-4.png)

- PSI3 software using the STO-3G basis to obtain coefficients $h_{\alpha}^{i}, h_{ij}^{\alpha\beta}$.
- Nelder-Mead minimizer?
- Bond dissociation curve for HeH+ obtained by successive application of the VQE.


### Questions

I understand that the VQE computes the expectation value of a Hamiltonian operator (or Rayleigh Ritz quotient) according to the standard variational Ritz method. The trial states are prepared by the reconfigurable circuit by assigning values to phase shifters according to some parameters fed by a classical optimizer.
Similar to QPE, the computational quantum advantage boils down to the representation of the quantum state, which for a $n$ q-bit system may be represented in a superposition of $2^n$ basis states. A classical computer working on the $2^n$ amplitude coefficients need $O\bigl((2^n)$ floating operations to evaluate an expectation value. On the other hand, the quantum processor directly operates on the q-bit state for which $O(1/p^2)$ repeated measurements are necessary to get an expectation value with precision $p$.
Considering that the minimizer scales linearly with the number of parameters (Nelder-Mead requiring $N+1$ evaluations at each update step), the overall quantum complexity is $O\bigl(n^r M |h^2|p^{-2}\bigr)$ in the quantum case against $O\bigl(M(2^n)^(1+r)\bigr)$ for classical case.
I wonder if $n$ is the actual number of q-bit?  The prototype works with 2-qbit but 6 parameters are being optimized. I can see from the circuit that the number of physical gates should scale linearly with the number of qbits provided that 4 phase shifters are used per qbit, in which case the number of parameters should also scale linearly with the number of qbits.
This brings me to some questions with respect to the parametrization of the state :
- In the supplementary information, the proposed mapping uses 6 parameters to represent a 2 q-bit state. Do you know (or have references about) how this parametrization evolve for a 3,4,5 q-bit system represented by 8,16,32 amplitudes respectively?
- The coupled cluster is mentioned in the paper and references as a special ansatz intractable classically. Is this ansatz somehow used and related to this mapping ?
- 6 parameters are mapped to 8 physical components, the phase shifters, among which 2 are used to account for the tensor product of Pauli operatiors (in the supplementary information $\phi_5,\phi_6$ are set to $\pi$ to actually represent the identity operator). Do you know how the mapping changes for the different tensor products $\sigma_i$ and $\sigma_i\otimes\sigma_j$ ? Would higher order tensor products require more channels and phase shifters ?


<!-- Optionally, it would help me to have the correct picture of how the expectation value of the tensor product of Pauli operators is obtained? My understanding is that each waveguide has a photon detector and the combined detections gives the overall state of the photon pair after passing through the processor. I wonder if this measured state already encode the expectation  ? The expectation value as the mean of a set of measurements.

### Formulation and implementation
- Following section Applications to k-sparse Hamiltonians
- The phase shifters are used to parametrize both the input state and the tensor product and the mapping is described in the supplementary information. The values $\phi_5,\phi_6$ are set to $\pi$ to represent the identity operator. Do you know what the values are for the different tensor products $\sigma_i$ and $\sigma_i\otimes\sigma_j$ ? -->
