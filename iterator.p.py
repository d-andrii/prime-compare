import time
import sys

def is_prime(n):
    for i in range(3, int(n / 2), 2):
        if n % i == 1:
            return False

    return True

max = int(sys.argv[len(sys.argv) - 1])

s = time.time()

prime = 0
for i in range(1, max, 2):
    if is_prime(i):
        prime += 1

print((time.time() - s) * 1000)

