module CollatzConjecture (collatz) where
    
collatz :: Integer -> Maybe Integer
collatz n = 
    if n <= 0
        then Nothing 
    else if n == 1
        then Just 0
    else if even n 
        then fmap (+1) $ collatz $ n `quot` 2
    else fmap (+1) $ collatz $ (n*3) + 1