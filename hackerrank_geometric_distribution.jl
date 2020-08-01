#=
Hackerrank problem - Geometric Distribution
https://www.hackerrank.com/challenges/s10-geometric-distribution-1/problem
https://www.hackerrank.com/challenges/s10-geometric-distribution-2/problem

Date: 2020-07-30
Author: Eric Nam
=#

using Printf

function dist_geomteric(p, n)
    (1. - p) ^ (n - 1) * p
end

# Part 1
function day4_1()
    # STDIN 
    nu, denom = parse.(Int, split(readline(stdin)))
    nth = parse(Int, readline(stdin))

    result = dist_geomteric(nu / denom, nth)
    println("$(@sprintf("%.3f", result))")
end

# day4_1()

# Part 2
function day4_2()
    # STDIN 
    nu, denom = parse.(Int, split(readline(stdin)))
    nth = parse(Int, readline(stdin))

    result = sum(x -> dist_geomteric(nu / denom, x), 1:5)
    println("$(@sprintf("%.3f", result))")
end

day4_2()
