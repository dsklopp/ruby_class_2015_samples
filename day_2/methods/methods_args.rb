
def arg_order(first="first", second="second")
  puts "first is #{first}"
  puts "second is #{second}"
  puts ""
end

arg_order(first="first", second="second")
arg_order(first="second", second="first")
arg_order(second="second", first="first")
arg_order(second="second", first="first")

