module SumOfMultiples (sumOfMultiples) where

isMult :: [Integer] -> Integer -> Bool 
isMult factors numb =
    any eachFactor factors
    where eachFactor num = numb `mod` num == 0  

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = 
    sum $ filter isMultFactors [1 .. limit-1]
    where isMultFactors n = isMult factors n