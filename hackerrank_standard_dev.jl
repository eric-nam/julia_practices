#= 
Hackerrank problem: Standard deviation
https://www.hackerrank.com/challenges/s10-standard-deviation/problem

Note: I think it is a variance not a std dev. =#

using Printf

n = parse(Int, readline(stdin))
array = parse.(Int, split(readline(stdin)))

avg = sum(array) / n
sum_residues_sq = sum((array .- avg) .^ 2)
stdev = sqrt(sum_residues_sq / n)

@printf("%.1f", stdev)
