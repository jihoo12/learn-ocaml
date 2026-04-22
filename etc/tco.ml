(*Tail Call Optimization*)
let rec sum_tco acc n =
  if n = 0 then acc
  else sum_tco (acc + n) (n - 1) (* 호출 자체가 마지막 연산 *)