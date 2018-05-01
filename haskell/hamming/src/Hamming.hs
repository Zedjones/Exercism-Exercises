module Hamming (distance) where

distance :: String -> String -> Maybe Int
distance xs ys
    | not (length xs == length ys) = Nothing
    | otherwise = Just $ length [x | x <- xs, y <- ys, x /= y]