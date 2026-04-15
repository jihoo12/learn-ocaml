let rec fibonacci n = 
  if n <= 1 then
    1
  else
    fibonacci (n-1) + fibonacci(n-2);;
print_int (fibonacci 5);;
print_string "\n";;