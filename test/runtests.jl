using KaimonGate
using Test
using Aqua

@testset "KaimonGate.jl" begin
    @testset "Code quality (Aqua.jl)" begin
        Aqua.test_all(KaimonGate)
    end
    # Write your tests here.
end
