module ArmstrongNumbers (armstrong) where

raiseChar c p = (fromEnum c - fromEnum '0') ^ p

armstrong :: Integral a => a -> Bool
armstrong a = (sum $ map (flip raiseChar $ length $ show num) $ show num) == num 
    where num = fromIntegral a
