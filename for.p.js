const isPrime = (n) => {
	for (let i = 3; i < n / 2; i += 2) {
		if (n % i === 0) {
			return false;
		}
	}

	return true;
};

const max = +process.argv[process.argv.length - 1];

const start = Date.now();
let prime = 0;

for (let i = 1; i < max; i += 2) {
	if (isPrime(i)) {
		prime++;
	}
}

console.log(Date.now() - start);
