type tree =
  | Nil
  | Int of int
  | Node of tree*tree

let mytree = Node(Int 10,Node(Int 20,Int 30))
let rec print_tree t = 
  match t with
  | Nil -> ()
  | Int n -> Printf.printf "%d " n
  | Node (l,r) -> 
    print_tree l;
    print_tree r
  ;;
print_tree mytree