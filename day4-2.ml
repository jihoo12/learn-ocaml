type expr = 
  | I of int
  | C of char
let expression = [C '+';I 1;I 2;];;
let rec operate expr acc oper =
  match expr with
  | [] -> acc
  | h :: t ->
    match h with
      | I n -> 
          let new_acc = 
            match oper with
              | '+' -> acc+n
              | '-' -> acc-n
              | _ -> acc+n
          in operate t new_acc ' '
      | C c -> operate t acc c
        ;;
let result = operate expression 0 ' ';;
print_int result