#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     January 2, 2015 (01/02/15)
# Description: Sample ruby code that opens haproxy.cfg, searches for the proper line
#              and prints it out.  Demonstrates conditionals, string comparison, and splicing

filename="minimal.cfg" 
a_file=File.open(filename)

# Search for the default_backend to figure out which one is
# currently active, then print out the servers associated with the
# backend
frontends_backend=nil
a_file.readlines.each do |line|
  line_items=line.split()
  if line_items.size == 0
    next
  elsif line_items[0] == "default_backend"
    frontends_backend=line_items[1]
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

print "The current backend is ", frontends_backend, "\n"
puts "It is set to: "
backends[frontends_backend].each do |server|
  print "   ", server.to_s
  puts
end
