module Hamming

let distance (strand1: string) (strand2: string): int option = 
    let seq1, seq2 = Seq.toList strand1, Seq.toList strand2 in
        match seq1.Length = seq2.Length with
        | true -> 
            List.zip seq1 seq2 |> 
            List.filter (fun (x, y) -> x.Equals y |> not) |> 
            List.length |> 
            Some
        | false -> None