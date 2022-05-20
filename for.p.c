#include <time.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

bool is_prime(int n)
{
	for (int i = 3; i < n / 2; i += 2)
	{
		if (n % i)
		{
			return false;
		}
	}

	return true;
}

int main(int argc, char *argv[])
{
	int max = atoi(argv[argc - 1]);

	clock_t start = clock();

	volatile int prime = 0;

	for (int i = 1; i < max; i += 2)
	{
		if (is_prime(i))
		{
			prime++;
		}

		i += 2;
	}

	printf("%f\n", (double)(clock() - start) / CLOCKS_PER_SEC * 1000);

	return 0;
}
