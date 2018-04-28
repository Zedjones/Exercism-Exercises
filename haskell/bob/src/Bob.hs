module Bob (responseFor, main) where

import Data.Char as Char

main = print(isYelling "1, 2, 3")

isYelling :: String -> Bool 
isYelling xs = all Char.isUpper xs

responseFor :: String -> String
responseFor xs = 
    if xs == []
        then "Fine. Be that way!"
    else if elem '!' xs && elem '?' xs 
        then "Calm down, I know what I'm doing!"
    else if elem '!' xs || isYelling xs 
        then "Whoa, chill out!"
    else if elem '?' xs
        then "Sure." 
    else "Whatever."

substring :: String -> String -> Bool 
substring (x:xs) [] = False 
substring xs ys 
        | prefix xs ys = True 
        | substring xs (tail ys) = True 
        | otherwise = False

prefix :: String -> String -> Bool
prefix [] ys = True
prefix (x:xs) [] = False
prefix (x:xs) (y:ys) = (x == y) && prefix xs ys