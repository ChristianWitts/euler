def fib(limit):
    a, b = 0, 1
    yield a
    yield b
    while b < limit:
        a, b = b, a + b
        yield b


print sum(x for x in fib(4000000) if not x % 2)  # 4613732
