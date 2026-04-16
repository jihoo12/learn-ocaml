type user = {
  id : int;
  name : string;
  email : string;
}
let person = {id =1; name="gemini"; email="gemini@gmail.com"};;

type shape = 
  | Circle of float
  | Rect of float*float
  | Point

let my_shape = Circle 5.0;;

type int_list = 
  | Nil
  | Cons of int*int_list

type arr_list = 
  | Nil
  | Int of int
  | Acons of arr_list*arr_list
let my_list = Cons(3,Cons(2,Cons(1,Cons(0,Nil))));;

let my_tree = Acons (Acons (Int 5, Nil), Acons (Int 5, Nil));;
let rec print_int_list (l : int_list) =
  match l with
  | Nil -> Printf.printf "Nil\n"
  | Cons (v, next) ->
      Printf.printf "%d -> " v;
      print_int_list next

let () = print_int_list my_list
(* 출력: 3 -> 2 -> 1 -> 0 -> Nil *)
            