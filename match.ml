let check_value opt = 
  match opt with 
  | Some x -> string_of_int x
  | None -> "nothing here"
;;
print_string (check_value None) 