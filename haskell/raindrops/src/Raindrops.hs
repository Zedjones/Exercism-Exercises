module Raindrops (convert) where

convert :: Int -> String
convert n =
    if null factors then show n else concat factors
    where factors = [s | (f, s) <- zip [3, 5, 7] ["Pling", "Plang", "Plong"], n `mod` f == 0]