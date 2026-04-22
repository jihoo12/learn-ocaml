print_endline "bread&butter";;
let bread butter = 
  match butter with
  | 1 -> "butter"
  | 2 -> "butter&butter"
  | 3 -> "butter&butter&butter"
  | _ -> "just a butter"
;;
print_endline (bread 4);;