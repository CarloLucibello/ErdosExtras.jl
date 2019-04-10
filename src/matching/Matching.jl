<<<<<<< HEAD
=======
"""
    struct MatchingResult{T}
        weight::T
        mate::Vector{Int}
    end

A type representing the result of a matching algorithm.

    weight: total weight of the matching

    mate:    `mate[i] == j` if vertex `i` is matched to vertex `j`.
             `mate[i] == -1` for unmatched vertices.
"""
struct MatchingResult{T<:Real}
    weight::T
    mate::Vector{Int}
end

>>>>>>> f9b85b8ac1a522741d69899dcd08c9ca0e4f5adf
include("blossomv.jl")
include("b-matching.jl")
