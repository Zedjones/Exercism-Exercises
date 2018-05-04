module ETL (transform) where

import Data.Map (Map, toList, fromList)
import Data.Char

makeTuple :: (a, [Char]) -> [(Char, a)]
makeTuple a = map (makeTup (fst a)) (snd a) where makeTup a b = (toLower b, a)

transform :: Map a String -> Map Char a
transform legacyData = fromList $ concat $ (map (makeTuple) (toList legacyData))