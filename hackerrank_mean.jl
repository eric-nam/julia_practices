#=
HackerRank - Mean, median, mode
https://www.hackerrank.com/challenges/s10-basic-statistics/problem

=#
using Printf
n = parse(Int, readline(stdin))
array = sort(parse.(Int, split(readline(stdin))))
# Example from the problem
# array = parse.(Int, split("64630 11735 14216 99233 99233 14470 4978 73429 38120 51135 67060"))

n = size(array)[1]
# mean
mu = sum(array) / n
@printf("%.1f\n", mu)
# median
med = (n % 2 == 0) ? (array[n ÷ 2] + array[n ÷ 2 + 1]) / 2.0 : array[n ÷ 2 + 1]
@printf("%.1f\n", med)
# mode
count = Dict{Int, Int}()
for v in array
    if v in keys(count)
        count[v] += 1
    else
        count[v] = 1
    end
end
mode = sort(collect(count), lt=(l, r)-> l[2] == r[2] ? l[1] < r[1] : l[2] > r[2])[1][1]
@printf("%d\n", mode)
