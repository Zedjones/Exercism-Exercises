module SumOfMultiples (sumOfMultiples) where

isMult :: [Integer] -> Integer -> Bool 
isMult factors numb =
    any ((==0) . (numb `mod`)) factors

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = 
    sum $ filter (isMult factors) [1 .. limit-1]