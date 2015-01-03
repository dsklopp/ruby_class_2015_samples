# Author: Daniel Klopp
# Copyright: GPL2
# Description: Sample ruby code that opens file and prints it out
#              Demonstrates File Output, file iteration, and each loops

filename="minimal.cfg" 
a_file=File.open(filename)

#
a_file.readlines.each do |line|
  puts line
end

a_file.close

