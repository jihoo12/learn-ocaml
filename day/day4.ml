let a = [1;1]
let rec oper a acc = 
  match a with
  | [] -> acc
  | h :: t ->
    (oper t (acc+h))
  ;;
print_int (oper a 0)
