module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | n == 1 = Just 0
  | even n = fmap (+1) $ collatz $ n `quot` 2
  | otherwise = fmap (+1) $ collatz $ (n*3) + 1