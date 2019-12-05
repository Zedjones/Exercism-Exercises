module QueenAttack

let create (position: int * int) = 
    match position with
    | (x, y) -> 0 <= x && x < 8 && 0 <= y && y < 8

let checkQueens(queen1: int * int) (queen2: int * int) = failwith "Implement"

let canAttack (queen1: int * int) (queen2: int * int) =
    match (queen1, queen2) with
    | ((x1, y1), (x2, y2)) ->
        if y1 = y2 then true
        else if x1 = x2 then true
        else false