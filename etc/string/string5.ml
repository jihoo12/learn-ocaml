let c = "1,1"
let char_list = 
  c
  |> String.to_seq
  |> Seq.filter (function '0'..'9' -> true | _ -> false)
  |> List.of_seq

let rec print_list l =
  match l with
  | [] -> Printf.printf "\n"
  | h :: t  -> 
    Printf.printf "%c " h;
    print_list t
  ;;              

print_list char_list;;