let rec yeah n = 
  if n = 0 then "yeah"
  else "y" ^ yeah (n-1)
;;
let rec e n = 
  if n = 0 then "!"
  else "!" ^ e (n-1)
;;
print_string (yeah 300);;
print_endline (e 300)