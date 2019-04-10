__precompile__()
module ErdosExtras
using Erdos
using JuMP
using GLPK
import BlossomV # matching

LP_OPTIMIZER = GLPK.Optimizer
MIP_OPTIMIZER = GLPK.Optimizer


# export set_lp_solver, set_mip_solver, get_lp_solver, get_mip_solver

# set_lp_solver(solv) = (LP_SOLVER=solv; solv)
# set_mip_solver(solv) = (MIP_SOLVER=solv; solv)
#
# get_lp_solver() = LP_SOLVER
# get_mip_solver() = MIP_SOLVER

include("matching/Matching.jl")
<<<<<<< HEAD
export minimum_weight_perfect_bmatching, minimum_weight_perfect_matching
=======

export MatchingResult, minimum_weight_perfect_matching,
       minimum_weight_perfect_bmatching
>>>>>>> f9b85b8ac1a522741d69899dcd08c9ca0e4f5adf

include("tsp/TSP.jl")
export solve_tsp

end # module
