/*******************************************************************************
    File: 1.go
    Date: 03/05/2010
    Name: Salvador Fuentes Jr.
    Info: Euler Project Problem/Exercise #1 in Google's Go
*******************************************************************************/

package main 

import "fmt"

func solveEuler1(n int) int {
    if n < 0 {
        return -1
    }

    natNum := 1
    accuSum := 0 
    for natNum < n {
        if (natNum % 3) == 0 || (natNum % 5) == 0 {
            accuSum += natNum 
        }
        natNum += 1 
    }
    return accuSum 
}


func main() {
    data := solveEuler1(1000) // Answer: 233168
    fmt.Printf("solveEuler1(1000)=%d\n", data)
}

