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
let rec delete_data_from_tree t x = 
  match t with 
  | Nil -> Nil
  | Int n -> 
    if n = x then Nil
    else Int n
  | Node (l,r) -> Node (delete_data_from_tree l x, delete_data_from_tree r x)
  ;;

let newtree = delete_data_from_tree mytree 20;;
print_tree newtree