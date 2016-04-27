package main

import "fmt"

func main() {
	fmt.Println(sum_multiples(10, []int{3, 5}))   // 23
	fmt.Println(sum_multiples(1000, []int{3, 5})) // 233168
}

func sum_multiples(limit int, multiples []int) int {
	// fmt.Println(limit)
	// fmt.Println(multiples)
	sum := 0
	for i := 1; i < limit; i++ {
		// fmt.Println(i)
		for _, multiple := range multiples {
			// fmt.Println(multiple)
			if i%multiple == 0 {
				sum += i
				break
			}
		}
	}

	return sum
}
