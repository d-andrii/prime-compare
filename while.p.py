import time
import sys

def is_prime(n):
    i = 3
    while i < n / 2:
        if n % i == 1:
            return False
        i += 2

    return True

max = int(sys.argv[len(sys.argv) - 1])

s = time.time()

prime = 0
i = 1
while i < max:
    if is_prime(i):
        prime += 1
    i += 2

print((time.time() - s) * 1000)

