import sys

def primes (max):
	array = []
	for i in range(2, (max + 1)):
		isPrime = True
		for n in range ((i - 1), 2, -1):
			if (i % n == 0):
				isPrime = False
				break
		if (isPrime): array.append(i)
	return array

print(primes(int(sys.argv[1])))
