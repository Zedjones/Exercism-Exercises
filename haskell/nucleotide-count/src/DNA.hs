module DNA (nucleotideCounts) where

import Data.Map as Map
import Data.Either

nucleotideCounts :: String -> Either String (Map Char Int)
nucleotideCounts xs 
    | not $ all (`elem` "GCTA") xs = Left $ "Invalid String"  
    | length xs == 0 = Right $ Map.fromList [('A', 0),('C', 0), ('G', 0), ('T', 0)]
    | otherwise = Right $ Map.unionWith (+) (Map.fromList [(head xs, 1)]) newMap
        where newMap = fromRight (Map.empty) (nucleotideCounts (tail xs))