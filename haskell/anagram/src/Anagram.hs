module Anagram (anagramsFor) where
import Data.Char
import Data.List

determineAnagram anagram word = 
    (sort $ map toLower anagram) == sort (map toLower word) 
        && map toLower word /= map toLower anagram

anagramsFor :: String -> [String] -> [String]
anagramsFor xs xss = filter (flip determineAnagram xs) xss