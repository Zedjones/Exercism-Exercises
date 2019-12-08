module Clock

type Clock(hours: int, minutes: int) = 
    member this.Hours = hours
    member this.Minutes = minutes
    override this.Equals(other) = 
        match other with
        | :? Clock as otherClock -> this.Hours = otherClock.Hours && this.Minutes = otherClock.Minutes
        | _ -> false
   
let fixNegative minutes = if minutes < 0 then 1440 + minutes else minutes

let calculateProper hours minutes = 
    let totalMinutes = ((60 * hours) + minutes) % 1440 |> fixNegative in
        totalMinutes / 60, totalMinutes % 60

let create hours minutes = 
    calculateProper hours minutes |> Clock

let add(minutes: int) (clock: Clock) =
    calculateProper clock.Hours (clock.Minutes + minutes) |> Clock

let subtract(minutes: int) (clock: Clock) = 
    calculateProper clock.Hours (clock.Minutes - minutes) |> Clock

let display (clock: Clock) = sprintf "%02i:%02i" clock.Hours clock.Minutes