let rec kawaii n = 
  if n = 0 then "可愛い"
  else "めちゃ" ^ kawaii (n-1)
;;
(*print_endline (kawaii 300)*)

let kawaii_pro n =
  (* 'acc' is our accumulator, carrying the string built so far *)
  let rec loop n acc =
    if n = 0 then acc ^ "可愛い"
    else loop (n - 1) ("めちゃ" ^ acc)
  in
  loop n ""
;;

let kawaii_pro_ultra n =
  let buf = Buffer.create (n * 6 + 9) in (* Pre-allocate memory *)
  for i = 1 to n do
    Buffer.add_string buf "めちゃ"
  done;
  Buffer.add_string buf "可愛い";
  Buffer.contents buf
;;
print_string "私は";;
print_endline (kawaii_pro_ultra 3)