# ErdosExtras.jl

[![Build Status](https://travis-ci.org/CarloLucibello/ErdosExtras.jl.svg?branch=master)](https://travis-ci.org/CarloLucibello/ErdosExtras.jl)
[![codecov.io](http://codecov.io/github/CarloLucibello/ErdosExtras.jl/coverage.svg?branch=master)](http://codecov.io/github/CarloLucibello/ErdosExtras.jl?branch=master)

More algorithms for the [Erdos.jl](https://github.com/CarloLucibello/Erdos.jl) graph library.
This package contains the following functions:

- `solve_tsp`: solves the travelling salesman problem by linear programming + lazy addition of constraints.
- `minimum_weight_perfect_matching`: solve the minimum weight perfect matching  problem  with the [BlossomV](https://github.com/mlewe/BlossomV.jl) algorithm.
- `minimum_weight_perfect_bmatching`: solve the minimum weight perfect b-matching problem by integer programming.

## Installation
On Linux systems, install the library `libgmp-dev`, since it is required by the package [GPLK.jl](https://github.com/JuliaOpt/GLPK.jl).
Install *ErdosExtras* with
```julia
]add ErdosExtras
```
