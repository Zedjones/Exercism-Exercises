module IsbnVerifier (isbn) where

import Data.Char

removeTrailingX x =
        if last x == 'X'
                then
                        init x ++ "10"
        else x

mainSum isbn n =
        if n == 8
                then read ((isbn !! n):[]) * (10-n)
        else
        (read ((isbn !! n):[]) * (10-n)) + mainSum (isbn) (n+1)

isValid :: String -> Bool
isValid isbn =
    all validChar isbn
    where validChar c = isDigit c || (c == 'X' && c == last isbn) || c == '-'

removeHyphens x = filter (/='-') (removeTrailingX x)

isbn :: String -> Bool
isbn x
  | null x = False
  | not $ isValid x = False
  | not (isDigit (last x)) && last x /= 'X' = False
  | length (removeHyphens x) == 11 = (mainSum (removeHyphens x) 0 + 10) `mod` 11 == 0
  | length (removeHyphens x) < 10 || length (removeHyphens x) > 11 = False
  | otherwise =
   let
           secondary = read ((last (removeHyphens x)):[]) :: Int
   in (mainSum (removeHyphens x) (0) + secondary) `mod` 11 == 0
