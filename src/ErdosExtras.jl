# __precompile__()
module ErdosExtras
using Erdos
using JuMP # Matching
using GLPKMathProgInterface

export set_lp_solver, set_mip_solver, get_lp_solver, get_mip_solver

export minimum_weight_perfect_bmatching

export solve_tsp

LP_SOLVER = GLPKSolverLP()   #GurobiSolver(OutputFlag=0)
MIP_SOLVER = GLPKSolverMIP()

set_lp_solver(solv) = (LP_SOLVER=solv; solv)
set_mip_solver(solv) = (MIP_SOLVER=solv; solv)

get_lp_solver() = LP_SOLVER
get_mip_solver() = MIP_SOLVER

include("matching/Matching.jl")
include("tsp/TSP.jl")

end # module
