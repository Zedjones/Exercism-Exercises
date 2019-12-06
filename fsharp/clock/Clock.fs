module Clock

type Clock(hours: int, minutes: int) = 
    member this.Hours = hours
    member this.Minutes = minutes

let create hours minutes = failwith "You need to implement this function."

let add minutes clock = failwith "You need to implement this function."

let subtract minutes clock = failwith "You need to implement this function."

let display clock = failwith "You need to implement this function."