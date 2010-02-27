{-  File: 1.hs
    Date: 02/27/2010
    Name: Salvador Fuentes Jr.
    Info: Euler Project Problem/Exercise #1 
-}

module Main ( ) where

main :: IO ()
main = print $ solveEuler1 1000

solveEuler1 :: Int -> Int
solveEuler1 x = foldl multiples35 0 [1..(x-1)]
    where multiples35 accum listElem =  
            if listElem `mod` 3 == 0 || listElem `mod` 5 == 0 then
                accum + listElem
            else
                accum 

