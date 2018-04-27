module SpaceAge (Planet(..), ageOn, main) where

import Data.Map(Map)
import qualified Data.Map as Map

main = print("What")

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = error "You need to implement this function."

createMap :: Map Planet [Integer]
createMap = error "You need to implement this function."