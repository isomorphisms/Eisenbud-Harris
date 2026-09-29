# Dependency map and route to intersection theory

Many commutative-algebra books can feel like a sequence of technical lemmas. Eisenbud's title supplies the correct organizing principle: ask which geometric operation each algebraic tool makes possible.

## Dependency graph

### Local structure

`Noetherianity`

`→ localization`

`→ local rings / support`

`→ associated primes`

`→ primary decomposition`

`→ components + embedded structure`

Primary decomposition needs finiteness. Localization then lets us discard irrelevant components and inspect the ones passing through a selected prime.

### Finite maps and normalization

`integral dependence`

`→ finite/integral extensions`

`→ lying over / going up`

`→ normalization`

`→ codimension-one valuation behavior in normal domains`

This chain eventually feeds divisor theory and intersection theory.

### Infinitesimal neighborhoods

`I-adic filtration`

`→ associated graded ring/module`

`→ Artin–Rees`

`→ completion`

`→ formal neighborhoods / Hensel lifting`

Associated graded objects often turn nonlinear local behavior into homogeneous algebra. Completion retains all infinitesimal orders at once.

### Families

`tensor product`

`→ flatness`

`→ controlled base change`

`→ generic freeness`

`→ fiberwise dimension/rank statements`

Flatness becomes essential whenever a geometric object varies with parameters.

### Dimension and intersections

`prime chains`

`→ height / dimension`

`→ principal ideal theorem`

`→ systems of parameters`

`→ multiplicity`

`→ proper-intersection bookkeeping`

Dimension supplies expected codimension. Multiplicity supplies the correction when “one intersection point” carries more than unit weight.

### Equations to algorithms

`term orders`

`→ initial ideals`

`→ Gröbner bases`

`→ elimination / Hilbert data / degenerations`

`→ machine-checkable examples`

Gröbner theory should feed the Macaulay2 side of this repository directly.

### Equations to infinitesimals

`I/I²`

`→ conormal sequence`

`→ Ω`

`→ m/m²`

`→ tangent space / Jacobian`

`→ singularity and relative differential tests`

### Equations to homology

`regular sequences`

`→ Koszul complexes`

`→ depth`

`→ Cohen–Macaulay`

`→ controlled codimension`

`→ free resolutions / syzygies`

`→ canonical modules / duality`

`→ Gorenstein rings`

## Route into Fulton

### 1. Cycles and components

Primary decomposition distinguishes minimal components from embedded structure. Intersection cycles care about components and multiplicities, while embedded components warn that the scheme carries more structure than its reduced support.

### 2. Codimension

Height and dimension provide the grading used by Chow groups. Principal ideal theorems explain why one equation has codimension at most one and `r` equations have codimension at most `r` at minimal components.

### 3. Cartier-divisor behavior

Height-one primes in normal Noetherian domains lead to DVRs and orders of vanishing. This is local algebra behind Weil divisors; locally principal non-zero-divisors provide the Cartier side.

### 4. Regular embeddings

A regular embedding is locally cut out by a regular sequence. The conormal module `I/I²` becomes locally free of the expected rank. Its dual is the normal bundle.

This links three Eisenbud chapters at once:

- regular sequences;
- differentials/conormal sequence;
- depth/Cohen–Macaulay structure.

### 5. Multiplicity

Hilbert–Samuel multiplicity gives a local algebraic measure of thickness. Intersection multiplicities refine this idea when several subspaces meet.

### 6. Degeneracy loci

Fitting ideals and minors cut out rank-drop loci. Fulton and *3264 and All That* later attach cycle classes to such loci, with Porteous-type formulas under suitable hypotheses.

### 7. Flat deformation

Flat families let one replace a difficult fiber by a more computable one while controlling invariants such as Hilbert polynomial in projective settings. Gröbner degeneration is one constructive realization of this strategy.

## Route into *The Geometry of Schemes*

Carry these objects forward explicitly:

- `Spec A` with points equal to prime ideals;
- `D(f)` and localization;
- nilpotents and nonreduced structure;
- associated points;
- local rings;
- residue fields;
- `I/I²` and `Ω`;
- tangent spaces;
- finite/integral morphisms;
- flat morphisms;
- completion as formal local information.

## Route into *The Geometry of Syzygies*

Carry forward:

- graded modules over polynomial rings;
- Hilbert functions/polynomials;
- Gröbner bases and initial ideals;
- regularity of sequences;
- minimal graded free resolutions;
- Betti numbers `β_{i,j}`;
- projective dimension;
- Fitting/determinantal ideals;
- duality and canonical modules.

## Questions worth keeping open

These should become explicit notes or exercises as the reading deepens:

1. Precisely which multiplicity used in local intersection theory is recovered from Hilbert–Samuel data, and under which proper-intersection hypotheses?
2. How does the normal cone arise from an associated graded algebra, and how does this generalize the normal bundle of a regular embedding?
3. Which Gröbner degenerations preserve enough data to compute intersection numbers safely?
4. How do Fitting ideals of differentials compare with Jacobian ideals and singular loci in finite type over a field?
5. How do embedded primes affect naive intersection calculations?
6. Which Cohen–Macaulay hypotheses make expected codimension statements exact rather than merely inequalities?
7. How do canonical modules in commutative algebra become canonical sheaves/divisors on schemes?

These questions provide the working agenda for reciprocal notes in `walnut-burgundy/fulton`.
