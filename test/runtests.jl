using Erdos
using ErdosExtras
using Test
using SparseArrays: sprand
using LinearAlgebra: Diagonal
using Random

testdir = dirname(@__FILE__)

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
    # @testset "$G" begin
    println("@@@@ Testing $G")
    for t in tests
        include(joinpath(testdir,"$(t).jl"))
    end
    # end
end
