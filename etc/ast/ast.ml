type expr =
  | Int of int                 (* 정수 리터럴 *)
  | Add of expr * expr         (* 더하기 (재귀적 구조) *)
  | Sub of expr * expr         (* 빼기 *)
  | Mul of expr * expr         (* 곱하기 *)
  | Div of expr * expr
  | Variable of string         (* 변수 *)

let my_ast = 
  Mul (
    Add (Int 3, Int 5), 
    Variable "x"
  )
;;
(* (x + 10) / (3 - 1) 계산하기 *)
let my_complex_ast = 
  Div (
    Add (Variable "x", Int 10),
    Sub (Int 3, Int 1)
  )

let env = [("x"),10]

let rec eval e environ = 
  match e with
  | Int n -> n
  | Variable x -> List.assoc x environ
  | Add (e1,e2) -> eval e1 environ + eval e2 environ
  | Sub (e1,e2) -> eval e1 environ - eval e2 environ
  | Mul (e1,e2) -> eval e1 environ * eval e2 environ
  | Div (e1,e2) -> eval e1 environ / eval e2 environ
;;
let result = eval my_complex_ast env;;
Printf.printf "%d\n" result