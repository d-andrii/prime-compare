const isPrime = (n) => {
	let i = 3;
	while (i < n / 2) {
		if (n % i === 0) {
			return false;
		}

		i += 2;
	}

	return true;
};

const max = +process.argv[process.argv.length - 1];

const start = Date.now();
let prime = 0;

let i = 1;
while (i < max) {
	if (isPrime(i)) {
		prime++;
	}

	i += 2;
}

console.log(Date.now() - start);
