module Accumulate

let accumulate (func: 'a -> 'b) (input: 'a list): 'b list =
    let rec reverseMap lst acc =
        match lst with
        | [] -> acc
        | head :: tail -> reverseMap tail (func head :: acc)

    reverseMap input [] |> List.rev
