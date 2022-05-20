package main

import (
	"os"
	"strconv"
	"time"
)

func isPrime(n int) bool {
	i := 3
	for i < n/2 {
		if n%i == 0 {
			return false
		}

		i += 2
	}

	return true
}

func main() {
	max, _ := strconv.Atoi(os.Args[len(os.Args)-1])

	start := time.Now()

	prime := 0
	i := 1
	for i < max {
		if isPrime(i) {
			prime++
		}

		i += 2
	}

	println(time.Since(start).Milliseconds())

	_ = prime
}
