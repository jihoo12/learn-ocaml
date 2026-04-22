type arith =
  | Int of int
  | Oper of char

let expr = [Int 1;Oper '+';Int 2]

let rec operate expression acc temp = 
  match expression with
  | [] -> acc
  | h :: t ->
    match h with
    | Int n -> (operate t (acc+n) ' ')
    | Oper c -> (operate t acc c)
  ;