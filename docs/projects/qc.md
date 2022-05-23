#Quantum Computing

## Qade  

### qa
Ising hamiltonian to find the ground state of :
\begin{equation}
  H = \sum_{ij} \sigma_i J_{ij} \sigma_j + \sum_{i}h_i\sigma_i
\end{equation}

where $\sigma_i$ are binary variables.

Quantum annealer internal hamiltonian of N 1-qubit system:
\begin{equation}
  H_{quantum} = A(s)\sim_{i}\sigma_{ix} +B(s)\Bigl[ \sum_{ij} \sigma_{iz} J_{ij} \sigma_{jz} + \sum_{i}h_i\sigma_{iz} \Bigr]
\end{equation}
where $\sigma_{ia}$ is the $a$th Pauli matrix applied to the $i$th bit, $A(1)=B(0)=0$ where the annealer prepares the system in the ground state for $s=0$.

- $s$ is then changed continuously(schedule time lasts 1$\mu$m-1ms) measuring $\bigotimes_i \sigma_{iz}$ until $s=1$
- Several runs

### method
#### DE
Solving for $x$ in $\Xi_i$ any linear DE of $f$  :

\begin{eqnarray}
  E_i(x)[f]|_{x\in\Xi_i} &=& 0\\
  E_i(x)[f] &=& \sum_{kn} C_{i,n}^{(k)}(x)\cdot\dP^k f_n + B_i(x)
\end{eqnarray}
where $i$ refers to the $i$th equation of coupled system and $n$ to the $n$th function of a vectorial equation.


#### loss function
Encoded as the ground state of an Ising model with :
\begin{equation}
  L[f] = \sum_i\sum_{x\in X_i} \bigl(E_i(x)[f] \bigr)^2
\end{equation}
where $X_i$ are subsets of sample points of $\Xi_i$.

Global minimum obtained for $L[f_{sol}]=0$

Using $f_n=\sum_m w_{nm}\phi_m(x)$ :
\begin{eqnarray}
  E_i(x,w) &=& H_{in}(x)[\phi_m] w_{nm} + B_i(x)\\
  H_{in}(x)[\phi] &=& \sum_{k} C_{in}^{(k)}\dP^k\phi(x)
\end{eqnarray}

so $L$ becomes :
\begin{equation}
  L(w) = \sum_{mnpq}w_{mn}J_{nm,pq}w_{pq} +\sum_{nm}h_{nm}w_{nm}
\end{equation}


#### binary encoding
Binary encoding of the weights into spin variables $w_{mn}^{{\alpha}}$ :

\begin{equation}
  w_{nm} = c_{nm} + s_{nm}\sum_{\alpha=1}^{n_{spin}} \frac{w_{nm^{(\alpha)}} }{2^{\alpha}}
\end{equation}
where the scales $s_{nm}$ and centre values $c_{mn}$ are free parameters and $n_{spin}$ are the number of spin per weight.

#### Ising model size limit
- Precision in weights down to $1/2^{n_{spin}}$
- Improved accuracy with iterative runs (epoch) using centres as the values of the previous run while reducing the scales by a factor $S$.
- hyperparamaters such as initial $c_m$ and shape functions $\phi_m$.


### Example
For wave eq, coupled eq and Laguerre eq, $epoch=10$, $n_{spin}=3$, $N_{basis}=10$, $n_{rep}=200$. $S=0.5$.



## QA faster route to QC
Simulated vs quantum annealing :
- thermal jumps vs tunnelling
- transition time $\tau_c \approx e^{\Delta E/T}$ vs $\tau_c\approx e^{w\sqrt{m\Delta E/2}}$
- suggests an advantage of quantum over thermal annealing

### Known failure modes of QAA
- Thermodynamic phase transition
- MBL : Many body localization (generalization of Anderson localization corresponding to dynamical phase transition where transport is inhibited in disordered lattice )
