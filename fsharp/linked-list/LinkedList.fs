module LinkedList

type Node(objVal) = 
    let mutable value = objVal
    [<DefaultValue>] val mutable prev: Node option
    [<DefaultValue>] val mutable next: Node option

type LinkedList = Value of Node | Empty

let mkLinkedList () = Empty

let pop linkedList = failwith "You need to implement this function."

let shift linkedList = failwith "You need to implement this function."

let push newValue linkedList : LinkedList =
    match linkedList with
    | Empty -> Value (Node newValue)
    | Value(list) ->
        let newList = Node newValue
        newList.prev <- Some list
        list.next <- Some newList
        Value list

let unshift newValue linkedList = failwith "You need to implement this function."