package main

import (
	"os"
	"strconv"
	"time"
)

func isPrime(n int) bool {
	for i := 3; i < n/2; i += 2 {

		if n%i == 0 {
			return false
		}
	}

	return true
}

func main() {
	max, _ := strconv.Atoi(os.Args[len(os.Args)-1])

	start := time.Now()

	prime := 0
	for i := 1; i < max; i += 2 {
		if isPrime(i) {
			prime++
		}
	}

	println(time.Since(start).Milliseconds())

	_ = prime
}
