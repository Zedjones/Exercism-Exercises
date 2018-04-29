module Pangram (isPangram) where

import Data.List as List 
import Data.Char as Char

isPangram :: String -> Bool
isPangram text =
    let set = sort . nub $ map toLower text
        sortedAlphas = filter isAlpha $ set
    in sortedAlphas == ['a' .. 'z']