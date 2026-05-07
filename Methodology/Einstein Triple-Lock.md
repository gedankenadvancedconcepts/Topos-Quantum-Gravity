### Notation Key: The Categorical Variables

*   **$c_i$ (The Candidate Cause):** The specific theory, mechanism, or causal variable currently being evaluated by the Triple-Lock.
*   **$\exists ! u$ (The Unique Morphism):** "There exists a unique, structure-preserving map." This guarantees zero degrees of freedom. If $u$ is not unique, the candidate contains hidden variables (confounders) and is rejected.
*   **$\varprojlim$ (The Categorical Limit):** The universal intersection. It extracts the absolute invariant core that survives across all possible transformations, shearing off any coordinate-dependent noise.
*   **$\mathcal{S}$ (The Category of Systems):** The set of all possible physical contexts, environments, or scales in which the phenomenon occurs.
*   **$\mathcal{M}$ (The Category of Measurements):** The set of all possible observer frames, instruments, or coordinate systems used to measure the phenomenon.
*   **$\mathcal{O}(s,m)$ (The Observation Space):** The empirical data or geometric signature yielded by a specific system ($s$) and measurement method ($m$).
*   **$\cong$ (Strict Isomorphism):** Categorical equivalence. It dictates that two objects share the exact same fundamental geometric skeleton, differing only by their superficial labels.
*   **$\times_{\mathcal{R}}$ (The Categorical Pullback):** The "Forge." The mathematical intersection of two domains over a shared base space. It acts as a topological scalpel, shearing off any parameters that fail to commute between the two domains.
*   **$\mathcal{R}$ (Base Reality):** The shared observational manifold or physical substrate where both the empirical data and the universal laws must simultaneously manifest.
*   **$\text{Inv}(\mathbb{U})$ (The Universal Invariant):** The established, universally accepted laws of physics and mathematics (e.g., Thermodynamics, Information Conservation, Exterior Calculus). It is the external "Gold Standard" against which the candidate is structurally mapped.

# 1) The Diffeomorphism Requirement
We only consider what satisfies this equation. If anything does not satisfy it, it is immediately eliminated from analysis.
$$ c_i \xrightarrow{\exists ! u} \varprojlim_{(s,m) \in \mathcal{S} \times \mathcal{M}} \mathcal{O}(s,m)$$
# 2) The Structural Isomorphism Requirement
We formalize mathematically structural isomorphism below. This is the requirement that the structure, dynamics, causes, and higher order relations map exactly to reality.
$$ c_i \cong \left( \varprojlim_{s,m} \mathcal{O}_{s,m} \right) \times_{\mathcal{R}} \text{Inv}(\mathbb{U}) $$
# 3) The Commutativity Requirement
Finally, we require that the results from the diffeomorpism requirement to commute with the structural isomorphism requirement. Thus we require:

$$ u_{Diffeomorphism} \circ \pi_{Structural Isomorphism} = \pi_{Structural Isomorphism} \circ u_{Diffeomorphism} $$


If the commutativity requirement is met we are done and have the answer. If it does not commute we take the pullback. Hence using the equation:
$$ c_{true} \cong \text{Diffeomorphism} \times_{\text{Reality}} \text{Structural Isomorphism} $$


The results of all these steps (i.e. steps 1-3 above) are the only allowable results returned to the user.