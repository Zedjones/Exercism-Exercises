module TwelveDays (recite, daysItemsMap) where

daysItemsMap :: Int -> String
daysItemsMap day = 
    case day of
        1 -> "a Partridge in a pear tree"
        2 -> "two Turtle Doves"
        3 -> "three French Hens"
        4 -> "four Calling Birds"
        5 -> "five Gold Rings"
        6 -> "six Geese-a-Laying"
        7 -> "seven Swans-a-Swimming"
        8 -> "eight Maids-a-Milking"
        9 -> "nine Ladies Dancing"
        10 -> "ten Lords-a-Leaping"
        11 -> "eleven Pipers Piping"
        12 -> "twelve Drummers Drumming"
        _ -> error "Invalid day"

recite :: Int -> Int -> [String]
recite start stop = error "You need to implement this function."
