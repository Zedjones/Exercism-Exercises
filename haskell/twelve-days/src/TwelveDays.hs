module TwelveDays (recite) where

import Text.Printf

daysItemsMap :: Int -> (String, String)
daysItemsMap day =
    case day of
        1 -> ("first", "a Partridge in a Pear Tree")
        2 -> ("second", "two Turtle Doves")
        3 -> ("third", "three French Hens")
        4 -> ("fourth", "four Calling Birds")
        5 -> ("fifth", "five Gold Rings")
        6 -> ("sixth", "six Geese-a-Laying")
        7 -> ("seventh", "seven Swans-a-Swimming")
        8 -> ("eighth", "eight Maids-a-Milking")
        9 -> ("ninth", "nine Ladies Dancing")
        10 -> ("tenth", "ten Lords-a-Leaping")
        11 -> ("eleventh", "eleven Pipers Piping")
        12 -> ("twelfth", "twelve Drummers Drumming")
        _ -> error "Invalid day"

stringForDay :: Int -> String
stringForDay day =
    let dayStr = fst $ daysItemsMap day
        itemStr = foldr (\x b -> b ++ snd (daysItemsMap x) ++ ", ") "" [2..day]
        lastStr = if day /= 1 then "and " ++ snd (daysItemsMap 1) else snd $ daysItemsMap 1
    in printf "On the %s day of Christmas my true love gave to me: %s%s." dayStr itemStr lastStr


recite :: Int -> Int -> [String]
recite start stop = map stringForDay [start..stop]