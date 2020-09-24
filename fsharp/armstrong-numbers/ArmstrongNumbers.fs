module ArmstrongNumbers

let isArmstrongNumber (number: int): bool =
    let numList = number.ToString() |> Seq.toList
    List.fold (fun acc digit ->
        acc
        + (System.Char.GetNumericValue digit
           ** float numList.Length
           |> int)) 0 numList = number
