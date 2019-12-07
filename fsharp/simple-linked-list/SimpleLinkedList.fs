module SimpleLinkedList

//TODO: define LinkedList type

type Node(value, nextNode: Node option) = 
    member this.Value = value
    member this.Next = nextNode

let nil = None

let create x n = failwith "You need to implement this function."

let isNil (x: Node option) = x = None

let next (x: Node) = x.Next 

let datum x = failwith "You need to implement this function."

let toList x = failwith "You need to implement this function."

let fromList xs = failwith "You need to implement this function."

let reverse x = failwith "You need to implement this function."