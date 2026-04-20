let c = "1,1";;
let rec parse s s1 = 
  match s with
  | [] -> s1
  | h :: t ->
    match h with
    | '0'..'9' -> parse t (h :: s1)
    | _ -> parse t s1
  ;;
let char_list = c |> String.to_seq |> List.of_seq;;
let result = parse char_list [];;

let rec print_list l =
  match l with
  | [] -> Printf.printf "\n"
  | h :: t  -> 
    Printf.printf "%c " h;
    print_list t
  ;;              

print_list result;;