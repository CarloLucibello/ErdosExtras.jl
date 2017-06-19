@testset "bmatching" begin
    g = random_regular_graph(50, 10)
    w = EdgeMap(g, e->rand())
    for b =2:4
        status, W, mates = minimum_weight_perfect_bmatching(g, b, w)
        @test status == :Optimal
        @test  0 < W < 50
        @test length.(mates) == fill(b, nv(g))
        mts = vcat(mates...)
        for i=1:nv(g)
            count(x->x==i, mts) == b
        end
    end
end
