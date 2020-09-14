module SpaceAge (Planet(..), ageOn, main) where

main = print(ageOn Earth 1000000000)

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

planetGetEarthDays :: Planet -> Float
planetGetEarthDays planet =
    case planet of
        Mercury -> 0.2408467
        Venus -> 0.61519726
        Earth -> 1
        Mars -> 1.8808158
        Jupiter -> 11.862615
        Saturn -> 29.447498
        Uranus -> 84.016846
        Neptune -> 164.79132

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / (planetGetEarthDays(planet) * 86400 * 365.25)