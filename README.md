# Eisenbud–Harris

Reading and synthesis around David Eisenbud, Joe Harris, commutative algebra, and algebraic geometry.

The main target is David Eisenbud's *Commutative Algebra: with a View Toward Algebraic Geometry*. This repository should use that book as the algebraic spine rather than treating the surrounding books as an unstructured bibliography.

## Main spine

1. **David Eisenbud — *Commutative Algebra: with a View Toward Algebraic Geometry***  
   Graduate Texts in Mathematics 150, Springer, 1995.  
   [`books/eisenbud-commutative-algebra/`](books/eisenbud-commutative-algebra/)

2. **David Eisenbud and Joe Harris — *The Geometry of Schemes***  
   Graduate Texts in Mathematics 197, Springer, 2000.  
   [`books/eisenbud-harris-geometry-of-schemes/`](books/eisenbud-harris-geometry-of-schemes/)

3. **David Eisenbud — *The Geometry of Syzygies***  
   Graduate Texts in Mathematics 229, Springer, 2005.  
   [`books/eisenbud-geometry-of-syzygies/`](books/eisenbud-geometry-of-syzygies/)

4. **David Eisenbud and Joe Harris — *3264 and All That: A Second Course in Algebraic Geometry***  
   Cambridge University Press, 2016.  
   [`books/eisenbud-harris-3264-and-all-that/`](books/eisenbud-harris-3264-and-all-that/)

5. **William Fulton — *Intersection Theory***  
   2nd ed., Springer, 1998. This belongs canonically in [`walnut-burgundy/fulton`](https://github.com/walnut-burgundy/fulton); this repository keeps an explicit bridge because *3264 and All That* and Fulton meet at Chow groups/rings, Chern classes, excess intersection, and related machinery.  
   [`notes/fulton-intersection-theory-bridge.md`](notes/fulton-intersection-theory-bridge.md)

## Other books in the orbit

- Joe Harris — *Algebraic Geometry: A First Course* — [`books/harris-algebraic-geometry-a-first-course/`](books/harris-algebraic-geometry-a-first-course/)
- David Eisenbud and Joe Harris — *Curves in Projective Space* — [`books/eisenbud-harris-curves-in-projective-space/`](books/eisenbud-harris-curves-in-projective-space/)
- David Eisenbud and Joe Harris — *The Practice of Algebraic Curves: A Second Course in Algebraic Geometry* — [`books/eisenbud-harris-practice-of-algebraic-curves/`](books/eisenbud-harris-practice-of-algebraic-curves/)
- William Fulton and Joe Harris — *Representation Theory: A First Course* — [`books/fulton-harris-representation-theory/`](books/fulton-harris-representation-theory/)
- David Eisenbud, Daniel R. Grayson, Michael Stillman, and Bernd Sturmfels (eds.) — *Computations in Algebraic Geometry with Macaulay 2* — [`books/computations-with-macaulay2/`](books/computations-with-macaulay2/)

## Working direction

The important chain is not simply “algebra, then geometry.” Keep explicit track of how algebraic constructions become geometric ones:

- ideals and modules → affine and projective schemes;
- localization and associated primes → local structure and components;
- dimension/codimension → intersection expectations;
- flatness and families → geometric variation;
- free resolutions and syzygies → projective geometry;
- Gröbner bases and constructive commutative algebra → Macaulay2 experiments;
- Chow groups/rings and Chern classes → intersection theory;
- excess intersection and degeneracy loci → the concrete enumerative problems of *3264 and All That*.

## Repository rule

Source records first; source-specific notes second; synthesis only after the source trail exists. Do not mirror copyrighted books unless the copyright holder explicitly permits redistribution. Link to publisher, author, DOI, library, or an authorized free edition instead.

See [`SOURCES.md`](SOURCES.md).
