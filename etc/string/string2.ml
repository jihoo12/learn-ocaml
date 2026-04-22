let s = "ocaml2026";;
Printf.printf "%s\n" s;; (*ocaml2026*)
let has_digit = String.exists (fun c -> c >= '0' && c <= '9') s;;
Printf.printf "%b\n" has_digit;; (*true*)
let shift_next = String.map (fun c -> Char.chr (Char.code c + 2)) "abc";;
Printf.printf "%s\n" shift_next;; (*cde*)

let build_string list = 
  let buf = Buffer.create 16 in 
  List.iter (fun s -> Buffer.add_string buf s) list;
  Buffer.contents buf
;;
let result = build_string ["Ocaml ";"is ";"fast! "];;
Printf.printf "%s\n" result;; (*Ocaml is fast!*)