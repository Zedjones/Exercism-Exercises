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
    | Some (node) -> create node.Value (add x node.Next)

let next =
    function
    | None -> None
    | Some (x: Node) -> x.Next

let datum =
    function
    | None -> failwith "x is not a valid node"
    | Some (x: Node) -> x.Value

let rec toList =
    function
    | None -> []
    | Some (x: Node) -> List.append [ x.Value ] (toList x.Next)

let rec reverse =
    function
    | None -> None
    | Some (x: Node) -> add x.Value (reverse x.Next)

let fromList xs = List.fold (fun x n -> add n x) None xs
