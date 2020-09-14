module School (School, add, empty, grade, sorted) where

import Data.List

newtype School = School { classes :: [(Int, String)] } deriving (Show)

add :: Int -> String -> School -> School
add gradeNum student school = School $ classes school ++ [(gradeNum, student)]

empty :: School
empty = School []

grade :: Int -> School -> [String]
grade gradeNum school = map snd (filter byGrade (classes school))
    where byGrade x = fst x == gradeNum

sorted :: School -> [(Int, [String])]
sorted school = sort $ nub $ [(grades, sort $ grade grades school) | (grades, s) <- schoolClasses]
    where schoolClasses = classes school 