{-  File: 2.hs
    Date: 02/28/2010
    Name: Salvador Fuentes Jr.
    Info: Euler Project Problem/Exercise #2
-}

module Main ( main ) where

main :: IO ()
main = print solveEuler2

solveEuler2 :: Int
solveEuler2 = last (takeWhile (<5000000) (scanl (+) 0 evenFibs))

evenFibs = filter even fibSeq 

fibSeq :: [Int]
fibSeq = 1 : 2 : zipWith (+) fibSeq (tail fibSeq)


{- Fib function 
                    

fib :: Int -> Int
fib x = fib (x - 1) + fib (x - 2)

fib x   | x > 2 = (fib x-1) + (fib x-2) 
        | otherwise = x

-}
