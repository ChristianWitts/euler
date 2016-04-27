package main

import "fmt"

func main() {
	f := fib()
	var sum int = 0
	for {
		a := f()
		if a%2 == 0 {
			sum += a
		}
		if a >= 4000000 {
			break
		}
	}
	fmt.Println(sum)
}

func fib() func() int {
	a, b := 0, 1
	return func() int {
		a, b = b, a+b
		return a
	}
}
