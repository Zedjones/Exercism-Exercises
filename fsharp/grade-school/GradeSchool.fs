module GradeSchool

type School = Map<int, string list>

let empty: School = Map.empty

let add (student: string) (grade: int) (school: School): School =
    school.Add
        (grade,
         match school.TryFind grade with
         | None -> [ student ]
         | Some (oldGrade) -> List.sort (student :: oldGrade))

let roster (school: School): string list =
    List.collect (fun (_, value) -> value) (school |> Map.toList)

let grade (number: int) (school: School): string list =
    school.TryFind number |> Option.defaultValue []
