#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     January 02, 2014 (01/02/15)
# Description: Sample ruby code that opens haproxy.cfg, searches for the proper line
#              and prints it out.  Demonstrates conditionals, string comparison, and splicing

# Search for the default_backend to figure out which one is
# currently active, then print it out

filename="minimal.cfg" 
a_file=File.open(filename)

a_file.readlines.each do |line|
  line_items=line.split()
  print line_items, "\n"
end

a_file.close

