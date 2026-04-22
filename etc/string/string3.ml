let data = "apple,banana,orange";;
let result = String.split_on_char ',' data

let rec print_list l =
  match l with
  | [] -> Printf.printf "\n"
  | h :: t  -> 
    Printf.printf "%s " h;
    print_list t
  ;;                                                                      
print_list result;;