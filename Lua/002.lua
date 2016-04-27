function even_fib(limit)
    local a, b, sum = 0, 1, 0
    while (b < limit) do
        local temp = a + b
        if (temp > limit) then
            break
        end

        a = b
        b = temp
        if (temp % 2 == 0) then
            sum = sum + temp
        end
    end

    return sum
end

print(even_fib(4000000))  -- 4613732
