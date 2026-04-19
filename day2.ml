let operate a oper b =
  match oper with
  | "+" -> Some (a+b)
  | "-" -> Some (a-b)
  | "*" -> Some (a*b)
  | "/" -> if b <> 0 then Some (a / b) else None
  | _ -> None
;;
let print str = 
  match str with 
  | Some x -> Printf.printf "%d\n" x
  | None -> Printf.printf "none\n"
;;
let a = (operate 1 "+" 1);;
print a