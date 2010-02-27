module Main ( ) where

fib :: Int -> [Int]
fib n = fib' n [] 
    where fib' x res | x == 1 || x == 2 = 1 : res
          fib' x res | otherwise = (fib' (x - 1) + fib' (x - 2)) : res


main :: IO ()
main = print (fib 5)
-- main = putStrLn $ show (find isRsize fib 5)
--    where isRsize x = (length (show x)) == 4

nums = 1 : map (+1) nums

-- nums = 1 : map (+1) ( 1 : map (+1) nums ) 
-- nums = 1 : map (+1) ( 1 : map (+1) (1 : map (+1) nums) ) 

