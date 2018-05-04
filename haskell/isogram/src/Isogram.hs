module Isogram (isIsogram) where

import Data.Char
import Data.List

isIsogram :: String -> Bool
isIsogram xs = nub isogram == isogram 
    where isogram = map toLower $ filter isAlpha xs