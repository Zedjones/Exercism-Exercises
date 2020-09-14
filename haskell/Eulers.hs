euler :: Int -> Maybe Int
euler x
    | x < 0 = Nothing 
    | otherwise = Just $ length $ filter (\y -> (gcd x y) == 1)  [1 .. x-1]

main = do
    putStrLn "Enter number to get Euler's: "
    x <- getLine
    print (euler (read x :: Int))