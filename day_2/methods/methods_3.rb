
def print_uname(arg1)
  puts "uname says: " + `uname #{arg1}`
end


print_uname("-r")

