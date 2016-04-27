function sum_multiples(limit)
    sum = 0
    for i=0,limit-1 do
        if i % 3 == 0 or i % 5 == 0 then
            sum = sum + i
        end
    end
    return sum
end

print(sum_multiples(10))
print(sum_multiples(1000))

--[[
Intertesting alternate implementation
]]--
function tri(n)
    return n * (n + 1) / 2
end

function sum35(n)
    n = n - 1
    return (
        3 * tri(math.floor(n / 3)) +
        5 * tri(math.floor(n / 5)) -
        15 * tri(math.floor(n / 15))
    )
end

print(sum35(1000))
print(sum35(1e+20))
