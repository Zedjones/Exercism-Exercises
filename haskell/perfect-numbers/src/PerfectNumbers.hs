module PerfectNumbers (classify, Classification(..)) where
    
data Classification = Deficient | Perfect | Abundant deriving (Eq, Show)

isFactor :: Int -> Int -> Bool 
isFactor factor num = 0 == num `mod` factor

classifyHelp :: Int -> Int -> Maybe Classification
classifyHelp sum num
    | sum < num = Just Deficient 
    | sum > num = Just Abundant
    | otherwise = Just Perfect 

classify :: Int -> Maybe Classification
classify num = 
    if num <= 0 then Nothing
    else let aliquotSum = sum $ filter (flip isFactor num) [1 .. num `div` 2]
        in classifyHelp aliquotSum num