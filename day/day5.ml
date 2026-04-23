let rec kawaii n = 
  if n<=0 then Printf.printf "\n"
  else begin
    Printf.printf "kawaii ";
    kawaii (n-1)
  end
  ;;
kawaii 300