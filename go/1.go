package main 

import "fmt"
import "container/vector"

func fibonacci(n int) int {
    var fib func(int) int
    //fibCache := [...]int{1, 2}
    fibCache := new(vector.IntVector) 
    fibCache.Push(1)
    fibCache.Push(2)

    if n < 0 {
        return -1
    }

    fib = func(x int) int {
        if x < 2 {
            return fibCache.At(x)
        }

        if fibCache.Len() > x {
            return fibCache.At(x) 
        }

        fibCache.Push(fibCache.At(x-1) + fibCache.At(x-2))
        return fibCache.At(x)
    };

    return fib(n)
}


func main() {
  data := fibonacci(5)
  fmt.Print("Fib(5) =%d", data)
}

