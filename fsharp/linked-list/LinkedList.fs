module LinkedList

type Node() =
    [<DefaultValue>] val mutable value: obj
    [<DefaultValue>] val mutable prev: Node option
    [<DefaultValue>] val mutable next: Node option

let mkLinkedList () =
    let node = Node()
    node.prev <- Some (Node())
    node.next <- Some (Node())
    node

let pop linkedList = failwith "You need to implement this function."

let shift linkedList = failwith "You need to implement this function."

let push newValue (linkedList: Node) =
    match linkedList.value with
    | null -> linkedList.value <- newValue
    | _ ->
        let mutable newList = Node()
        newList.value <- newValue
        newList.prev <- Some linkedList
        linkedList.next <- Some newList

let unshift newValue linkedList = failwith "You need to implement this function."