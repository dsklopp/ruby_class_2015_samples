#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     January 02, 2014 (01/02/15)
# Description: Sample ruby code that opens haproxy.cfg, searches for the proper line
#              and prints it out.  Demonstrates conditionals, string comparison, and splicing

filename="minimal.cfg" 
a_file=File.open(filename)

# Search for the default_backend to figure out which one is
# currently active, then print it out
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
