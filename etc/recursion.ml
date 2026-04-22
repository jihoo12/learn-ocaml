let rec sum lst = 
  match lst with
  | [] -> 0
  | h :: t -> h + sum t (*h 는 가장 첫번째 요소 t는 h를 제외한 모든 요소*)
;;

let rec mul lst = 
  match lst with
  | [] -> 1
  | h :: t -> h * mul t

