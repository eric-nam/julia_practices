#= 
HackerRank problem - 10 Days of Statistics: Day 1: Quartiles
https://www.hackerrank.com/challenges/s10-quartiles/problem

Calculate quartiles from user inputs.

Date: 2020-06-26

Issues:
  - The problem does not specify the screen output formatting,
e.g. 4 or 4.0. Possible answers are generally rational number, but the tests
seem to assume integer formatting output such as '4'. The test rejects
outputs in decimal numbers.
=#

using Printf
n = parse(Int, readline(stdin))
arr = sort(parse.(Int, split(readline(stdin))))

"""
  median(arr)

Calculate a median value in the way given in the problem.

# Arguments
- `arr`: An array of numbers
"""
function median(arr)
    n = size(arr)[1]
    n % 2 == 0 ? (arr[n ÷ 2] + arr[n ÷ 2 + 1]) / 2.0 : arr[n ÷ 2 + 1]
end


println("$(@sprintf("%d", median(arr[1:(n ÷ 2)])))")
println("$(@sprintf("%d", (median(arr))))")
println("$(@sprintf("%d", median(arr[(n % 2 == 0 ? n ÷ 2 + 1 : n ÷ 2 + 2):end])))")
