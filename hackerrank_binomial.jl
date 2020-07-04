#=
HackerRank - Binomial distribution
https://www.hackerrank.com/challenges/s10-binomial-distribution-1/problem
https://www.hackerrank.com/challenges/s10-binomial-distribution-2/problem
=#
using Printf

function comb(n::Int, r::Int)
    r == 0 ? 1.0 : reduce(*, n-r+1:n, init=1) / reduce(*, 1:r, init=1)
end

function binomial(p::Float64, n::Int64, r::Int64)
    comb(n, r) * p ^ r * (1 - p) ^ (n - r)
end

# Binomial Problem 1
# What is the probability of having at least three boys out of six kids.
let ratio = 1.09    # Ratio of a boy or an event
    local p = ratio / (1.0 + ratio)
    # at least 3 out of 6
    local n = 6
    local c = 3
    local result = mapreduce(c -> binomial(p, n, c), +, c:n)
    @printf("%.3f", result)
end

## Binomial Problem 2
## What are the probabilities of:
##  No more than two rejected, and
##  At least two rejected.
let defect_ratio = 0.12, n = 10
    # No more than two rejected
    local result1 = mapreduce(x -> binomial(defect_ratio, n, x), +, 0:2)
    @printf("%.3f\n", result1)
    local result2 = 1.0 - mapreduce(x -> binomial(defect_ratio, n, x), +, 0:1)
    @printf("%.3f\n", result2)
end
