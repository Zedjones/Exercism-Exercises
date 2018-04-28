module Bob (responseFor, main) where

import Data.Char as Char

main = print(last "Ending with ? means a question." == '?')

isYelling :: String -> Bool 
isYelling xs = all isYell xs

oneLetter :: String -> Bool
oneLetter xs = any Char.isLetter xs

isYell :: Char -> Bool 
isYell c = Char.isUpper c || not (Char.isLetter c)

strip :: String -> String 
strip = f . f 
    where f = reverse . dropWhile isSpace

allSpace :: String -> Bool
allSpace xs = all Char.isSpace xs

responseFor :: String -> String
responseFor xs = 
    if allSpace xs
        then "Fine. Be that way!"
    else if isYelling xs && last(strip xs) == '?' && oneLetter xs
        then "Calm down, I know what I'm doing!"
    else if isYelling xs && oneLetter xs
        then "Whoa, chill out!"
    else if last(strip xs) == '?'
        then "Sure." 
    else "Whatever."