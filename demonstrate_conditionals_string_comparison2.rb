# Author: Daniel Klopp
# Copyright: GPL2
# Description: Sample ruby code that opens haproxy.cfg, searches for the proper line
#              and prints it out.  Demonstrates conditionals, string comparison, and splicing

filename="/etc/haproxy/haproxy.cfg" 
a_file=File.open(filename)

# Search for the default_backend to figure out which one is
# currently active, then print out the servers associated with the
# backend
a_file.readlines.each do |line|
  line_items=line.split()
  if line_items.size == 0
    next
  elsif line_items[0] == "default_backend"
    puts line_items[1..-1].join(' ')
  else
    nil
  end
end

a_file.close

# Now find the backend and print that out
# Note that this is not the most efficient way
# to do this, but this is far easier to demonstrate

backends = {}
backend_block = false
current_backend = nil
File.open(filename).readlines.each do |line|
  line_items=line.split()
  if line_items.size == 0
    next
  elsif line_items[0] == "backend"
    current_backend = line_items[1]
    backends[current_backend] = []
    backend_block = true
  elsif backend_block and line_items[0] == "server"
    backends[current_backend] << line_items[1..-1].join(' ')
  else
    backend_block = false
    current_backend = nil
  end
end

puts backends
