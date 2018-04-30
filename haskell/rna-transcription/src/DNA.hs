module DNA (toRNA) where

isDNA :: Char -> Bool 
isDNA c = c `elem` "CTGA"

singleToRNA :: Char -> Char 
singleToRNA c =
    case c of 
        'G' -> 'C'
        'C' -> 'G'
        'T' -> 'A'
        'A' -> 'U'

toRNA :: String -> Maybe String
toRNA xs 
    | not $ all isDNA xs = Nothing
    | otherwise = Just $ map singleToRNA xs