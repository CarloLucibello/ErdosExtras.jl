__precompile__()
module ErdosExtras
using Erdos
using JuMP # Matching
using GLPKMathProgInterface

export minimum_weight_perfect_bmatching,
       solve_tsp

include("matching/Matching.jl")
include("tsp/TSP.jl")

end # module
