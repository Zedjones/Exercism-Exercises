module SpaceAge

type Planet = Earth | Mercury | Venus | Mars | Jupiter | Saturn | Uranus | Neptune

let getPlanetFactor (planet: Planet) = 
    let earthSeconds = 31557600.0 in
        match planet with
        | Earth -> earthSeconds
        | Mercury -> earthSeconds * 0.2408467
        | Venus -> earthSeconds * 0.61519726
        | Mars -> earthSeconds * 1.8808158
        | Jupiter -> earthSeconds * 11.862615
        | Saturn -> earthSeconds * 29.447498
        | Uranus -> earthSeconds * 84.016846
        | Neptune -> earthSeconds * 164.79132

let age (planet: Planet) (seconds: int64): float =
    let seconds = seconds |> float in 
        System.Math.Round (seconds / getPlanetFactor planet, 2)