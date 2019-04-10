"""
    minimum_weight_perfect_matching(g, weights::AEdgeMap{T}; cutoff=typemax{T}) where {T<:Real}

Given a graph `g` and an edgemap `weights` containing non-negative weights associated
to edges, returns a matching with the mimimum total weight among the ones containing
exactly `nv(g)/2` edges.

Edges in `g` not present in `weights` will not be considered for the matching.

To reduce computational time, a `cutoff` argument can be given. Only edges
with weight lower than `cutoff` will be considered for the matching.

This function relies on the BlossomV.jl package, a julia wrapper
around Kolmogorov's BlossomV algorithm.

The **return value** is a `NamedTuple` object `match` with fields:

    match.weight: total weight of the matching

    match.mate:    `mate[i] = j` if vertex `i` is matched to vertex `j`.
                   `mate[i] = -1` for unmatched vertices.
"""
function minimum_weight_perfect_matching(
        g::AGraph,
        w::AEdgeMap{T};
        cutoff = typemax(T)) where {T<:Real}

    m = BlossomV.Matching(T, nv(g))
    for e in edges(g)
        c = get(w, e, cutoff)
        if c < cutoff
            BlossomV.add_edge(m, src(e)-1, dst(e)-1, c)
        end
    end
    BlossomV.solve(m)

    mate = fill(-1, nv(g))
    totweight = T(0)
    for i=1:nv(g)
        j = BlossomV.get_match(m, i-1) + 1
        mate[i] = j <= 0 ? -1 : j
        if i < j
            totweight += w[i, j]
        end
    end
    return (weight=totweight, mate=mate)
end
