# watoc2020poster

Poster title: *On Symmetry and Degeneracy in the Construction of the Adiabatic Connection Based on the Lieb Variational Principle*

This work has been carried out in the Teale Group at the University of Nottingham, United Kingdom.

Poster to be presented at WATOC 2020, Vancouver, Canada in July 2022.

## Compilation
- TeXLive 2022 is recommended.
- The required fonts are:
  - Raleway
  - Lato
  - STIX Two Math
  - Firo Math
- The default compilation mode uses `tikzexternalize` via `lualatex` with `--shell-escape`, together with the `fontspec` and `PGFPLOTS 1.17` packages to handle fonts and generate diagrams and graphs.\
To compile in this mode, run
  ```
  make cleanall
  ```
  to clean all auxiliary files and precompiled figures, followed by
  ```
  make all
  ```
  
- To avoid recompiling the diagrams and graphs, make sure to check out a fresh copy of `master` and then simply run
  ```
  make all
  ```

- As `fontspec` is used, it is not possible to compile with `pdflatex`.

## Acknowledgement
The theme used in this poster is based on the Gemini theme which can be found [here](https://github.com/anishathalye/gemini).
