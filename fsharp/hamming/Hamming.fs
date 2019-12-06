﻿module Hamming

let distance (strand1: string) (strand2: string): int option = 
    match strand1.Length = strand2.Length with
    | true -> 
        Seq.zip strand1 strand2 |> 
        Seq.filter (fun (x, y) -> x <> y) |> 
        Seq.length |> 
        Some
    | false -> None