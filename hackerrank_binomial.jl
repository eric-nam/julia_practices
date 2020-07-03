#=
HackerRank - Binomial distribution
https://www.hackerrank.com/challenges/s10-binomial-distribution-1/problem =#
using Printf
# Ratio of a boy or an event
ratio = 1.09
p = ratio / (1.0 + ratio)
# at least 3 out of 6
n = 6
c = 3
function comb(n::Int, r::Int)
    reduce(*, n-r+1:n, init=1) / reduce(*, 1:r, init=1)
end

function binomial(p::Float64, n::Int64, x::Int64)
    comb(n, x) * p ^ x * (1 - p) ^ (n - x)
end
result = mapreduce(c -> binomial(p, n, c), +, c:n)
@printf("%.3f", result)
