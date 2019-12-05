module Raindrops

let isPling (number: int) = if number % 3 = 0 then "Pling" else ""
let isPlang (number: int) = if number % 5 = 0 then "Plang" else ""
let isPlong (number: int) = if number % 7 = 0 then "Plong" else ""

let convert (number: int): string = 
    let res = String.concat "" [isPling(number); isPlang(number); isPlong(number)] in
        if res = "" then number.ToString() else res