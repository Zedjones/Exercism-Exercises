module RobotSimulator

type Direction = North | East | South | West
type Position = int * int
type Robot = { direction: Direction; position: Position }

let create direction position = { direction = direction 
                                  position = position }

let moveRobot (robot: Robot) (instruction: char) = 
    match instruction with 
    | 'L' -> 
        match robot.direction with
        | North -> create West robot.position
        | East -> create North robot.position
        | South -> create East robot.position
        | West -> create South robot.position
    | 'R' -> 
        match robot.direction with
        | North -> create East robot.position
        | East -> create South robot.position
        | South -> create West robot.position
        | West -> create North robot.position
    | 'A' ->
        let (x, y) = robot.position in
            match robot.direction with 
            | North -> create robot.direction (x, y + 1)
            | South -> create robot.direction (x, y - 1)
            | East -> create robot.direction (x + 1, y)
            | West -> create robot.direction (x - 1, y)
    | _ -> robot

let move instructions robot =
    Seq.fold moveRobot robot instructions