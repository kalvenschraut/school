def fibonacci(n):
    if n < 2:
        return 1
    else:
        return fibonacci(n-2) + fibonacci(n-1)
i = 0
while i < 20:
    print(fibonacci(i))
    i+=1
