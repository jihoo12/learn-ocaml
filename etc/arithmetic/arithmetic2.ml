let arithmetic a oper b = 
  match oper with 
  | "+" -> Some (a + b)
  | "-" -> Some (a - b)
  | "*" -> Some (a * b)
  | "/" -> if b <> 0 then Some (a / b) else None
  | _   -> None
;;