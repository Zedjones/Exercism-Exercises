module CollatzConjecture (collatz) where

import Data.Maybe(fromJust)

collatz :: Integer -> Maybe Integer
collatz n = 
    if n <= 0
        then Nothing 
    else if n == 1
        then Just 0
    else if even n 
        then Just (1 + (fromJust $ collatz (n `quot` 2)))
    else Just (1 + (fromJust $ collatz ((n*3) + 1)))