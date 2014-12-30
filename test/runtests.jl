using Clipper
using Base.Test

# testing printing
a = Path()
b = IntPoint(Vector2(1,0))
push!(a, b)
println(a)
push!(a, b)
push!(a, b)
println(a)

# test area
println("testing area")
p = Path()
push!(p, IntPoint(0,0))
push!(p, IntPoint(1,0))
push!(p, IntPoint(1,1))
push!(p, IntPoint(0,1))
@test area(p) == 1.0

p = Path()
push!(p, IntPoint(0,0))
push!(p, IntPoint(0,1))
push!(p, IntPoint(1,1))
push!(p, IntPoint(1,0))
@test area(p) == -1.0

# testing offset
p = Path()
push!(p, IntPoint(0,0))
push!(p, IntPoint(100,0))
push!(p, IntPoint(100,100))
push!(p, IntPoint(0,100))
p_n = offset(p, 10.0)
@show p_n