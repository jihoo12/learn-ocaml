let add_one = fun x -> x + 1;;
(*print_int (add_one 5);;*)

let numbers = [1; 2; 3];;
(*
let rec print_list intarr n = 
  if n = Array.length intarr then print_endline "\n"
  else
    print_int intarr.(n);
    print_list intarr (n+1)
;;
*)
(*;는 시퀀스 연산자 이 명령어를 실행하고 그 다음에 오는 명령어를 실행하라*)
(*;;는 구문종료 표식*)
let rec print_list l = 
  match l with
  | [] -> print_endline ""
  | head :: tail -> 
    print_int head;
    print_string " ";
    print_list tail
  ;;
let result = List.map (fun x -> x*10) numbers;;
(*
head 가장 앞에 있는 값
tail 나머지 값
*)
print_list result
let is_empty = function
| [] -> true
| _ -> false
;;