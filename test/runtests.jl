using Erdos
using ErdosExtras
using Base.Test

testdir = dirname(@__FILE__)

tests = [
    "tsp/TSP",
    "matching/Matching"
    ]

GLIST =    [
            (Graph{Int64}, DiGraph{Int64}),
            (Graph{UInt32}, DiGraph{UInt32}),
            (Network, DiNetwork)
            ]

for GDG in GLIST, t in tests
    global G = GDG[1]
    global DG = GDG[2]
    global TEST = t
    global E = edgetype(G)
    global V = vertextype(G)

    include(joinpath(testdir,"$(t).jl"))
end
