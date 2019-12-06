module Clock

type Clock(hours: int, minutes: int) = 
    member this.Hours = hours
    member this.Minutes = minutes

let fixNegative minutes = if minutes < 0 then 1440 + minutes else minutes

let calculateProper hours minutes = 
    let totalMinutes = (60 * hours) + minutes |> fixNegative in
        totalMinutes / 60 % 24, totalMinutes % 60

let create hours minutes = 
    calculateProper hours minutes |> Clock

let add(minutes: int) (clock: Clock) =
    calculateProper clock.Hours (clock.Minutes + minutes) |> Clock

let subtract(minutes: int) (clock: Clock) = 
    calculateProper clock.Hours (clock.Minutes - minutes) |> Clock

let display clock = failwith "You need to implement this function."