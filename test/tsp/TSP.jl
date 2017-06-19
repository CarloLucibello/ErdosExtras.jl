@testset "TSP" begin
    @testset "random instances" begin
        g = CompleteGraph(30, G)
        w = EdgeMap(g, e->rand())
        status, W, tour = solve_tsp(g, w)
        @test status == :Optimal
        @test 0 < W < 30
        @test length(tour) == 30
        @test tour[1] == 1
        @test unique(tour) == tour

        # status, W, tour2 = solve_tsp(g, w, cutoff = 0.9)
        # @test status == :Optimal
        # @test 0 < W < 30
        # @test length(tour2) == 30
        # @test tour2[1] == 1
        # @test unique(tour2) == tour2
        # @test tour2 ==  tour1
    end
end
