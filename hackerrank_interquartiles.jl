#=
Hackerrank problem - Interquartile Range
https://www.hackerrank.com/challenges/s10-interquartile-range/problem

Calculate the range between Q3 and Q1 (Q3 - Q1)

Date: 2020-06-30

Note: The code expands the array with the frequency, which is inefficient.
=#

using Printf
# Example values
# array = [6, 12, 8, 10, 20, 16]
# freq = [5, 4, 3, 2, 1, 5]
n = parse(Int, readline(stdin))
array = parse.(Int, split(readline(stdin)))
freq = parse.(Int, split(readline(stdin)))
array_with_freq = sort(collect(zip(array, freq)), by=first)
array = map((x) -> fill(x[1], x[2]), array_with_freq) |> Iterators.flatten |> collect

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

n = size(array)[1]
q1 = median(array[1:(n ÷ 2)])
q3 = median(array[(n % 2 == 0 ? n ÷ 2 + 1 : n ÷ 2 + 2):end])
println("$(@sprintf("%.1f", q3 - q1))")
