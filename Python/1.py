def sum_multiples(limit, multiples=None):
    total = 0
    for i in xrange(limit):
        for multiple in multiples:
            if not i % multiple:
                total += i
                break

    return total

print sum_multiples(10, [3, 5])    # 23
print sum_multiples(1000, [3, 5])  # 233168
