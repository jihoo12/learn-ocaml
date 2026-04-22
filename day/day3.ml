let rec hello n =
  if n = 0 then Printf.printf "\n"
  else (
    Printf.printf "hello "; 
    hello (n-1)
  );;
hello 3