#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     January 02, 2015 (01/02/15)
# Description: Sample ruby code that opens haproxy.cfg, searches for the proper line
#              and prints it out.  Demonstrates conditionals, string comparison, and splicing

filename="minimal.cfg" 
a_file=File.open(filename)

# Search for the default_backend to figure out which one is
# currently active, then print out the servers associated with the
# backend
a_file.readlines.each do |line|
  line_items=line.split()
  if line_items[0] == "default_backend"
    puts line_items[1..-1].join(' ')
  end
end

a_file.close

# Add all server lines as entire strings into an array,
# omitting the "server" portion.  For example, with
# the string:
# server google1 www.google.com:80
# Only store
# google1 www.google.com:80
# And print out the results
servers=[]
File.open(filename).readlines.each do |line|
  line_items=line.split()
  if line_items[0] == "server"
    servers << line_items[1..-1].join(' ')
  end
end

puts servers
