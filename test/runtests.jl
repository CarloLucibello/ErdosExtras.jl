using Erdos
using ErdosExtras
using Test
<<<<<<< HEAD
using SparseArrays: sprand
using LinearAlgebra: Diagonal
using Random

testdir = dirname(@__FILE__)
=======
using LinearAlgebra
using Random
using SparseArrays
>>>>>>> f9b85b8ac1a522741d69899dcd08c9ca0e4f5adf

tests = [
    "tsp/TSP",
    "matching/matching",
    "matching/b-matching",
    ]

GLIST =    [
            (Graph{Int64}, DiGraph{Int64}),
            (Graph{UInt32}, DiGraph{UInt32}),
            (Network, DiNetwork)
            ]

for GDG in GLIST
    global G = GDG[1]
    global DG = GDG[2]
    global E = edgetype(G)
    global V = vertextype(G)
    
    for t in tests
        include(joinpath(@__DIR__,"$(t).jl"))
    end
end
