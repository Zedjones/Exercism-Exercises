module Acronym (abbreviate) where

import Data.Char

fixString :: Char -> Char
fixString c 
    | isAlpha c = c   
    | otherwise = ' '

specialCondition :: Char -> Bool 
specialCondition c = 
    isUpper c || isSpace c

fixCapital :: String -> String 
fixCapital xs = 
    if length xs == 1
        then xs 
    else if isUpper (head xs) && not (all specialCondition xs)
        then " " ++ (head xs) : fixCapital (drop 1 xs)
    else (head xs) : fixCapital (drop 1 xs)

fixCapitals :: String -> String 
fixCapitals xs = " " ++ fixCapital xs ++ " "

abbreviate :: String -> String
abbreviate xs = 
    let fixedString = words $ concat $ map fixCapitals $ words $ map fixString xs
    in map toUpper $ map head fixedString 