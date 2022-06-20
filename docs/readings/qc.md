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


<!--
### Formulation and implementation
- Following section Applications to k-sparse Hamiltonians
- The phase shifters are used to parametrize both the input state and the tensor product and the mapping is described in the supplementary information. The values $\phi_5,\phi_6$ are set to $\pi$ to represent the identity operator. Do you know what the values are for the different tensor products $\sigma_i$ and $\sigma_i\otimes\sigma_j$ ? -->
