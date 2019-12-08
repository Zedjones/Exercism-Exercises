module SimpleLinkedList

type Node(value, nextNode: Node option) = 
    member this.Value = value
    member this.Next = nextNode

let nil = None

let isNil (x: Node option) = x = None

let create (x: int) (n: Node option) = Node(x, n) |> Some

let rec add (x: int) (n: Node option) = 
    match n with
    | None -> Node(x, None) |> Some
    | Some(node) -> create node.Value (add x node.Next)

let next (x: Node option) =
    match x with
    | None -> None
    | Some(x) -> x.Next

let datum (x: Node option) =
    match x with
    | None -> failwith "x is not a valid node"
    | Some(x) -> x.Value

let rec toList (x: Node option) = 
    match x with
    | None -> []
    | Some(x) -> List.append [x.Value] (toList x.Next)

let rec reverse (x: Node option) = 
    match x with
    | None -> x
    | Some(x) -> add x.Value (reverse x.Next)

let fromList xs = List.fold (fun x n -> add n x) None xs