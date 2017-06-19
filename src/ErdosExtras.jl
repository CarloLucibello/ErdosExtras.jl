# __precompile__()
module ErdosExtras
using Erdos
using JuMP # Matching
using GLPKMathProgInterface
using Cbc
using Clp
using Gurobi

export minimum_weight_perfect_bmatching,
       solve_tsp

MIP_SOLVER  = GurobiSolver(OutputFlag=0) # [GurobiSolver(), GLPKSolverMIP(), CbcSolver()]

include("matching/Matching.jl")
include("tsp/TSP.jl")

end # module
