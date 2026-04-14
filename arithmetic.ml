open Scanf

let () =
  scanf "%d %d" (fun a b ->
    Printf.printf "%d\n" (a + b);
    Printf.printf "%d\n" (a - b);
    Printf.printf "%d\n" (a * b);
    Printf.printf "%d\n" (a / b);
    Printf.printf "%d\n" (a mod b)
  )