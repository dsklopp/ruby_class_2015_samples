# Author: Daniel Klopp
# Copyright: GPL2
# Description: Sample ruby code that opens file and prints it out
#              Demonstrates File Output, file iteration, and each loops

 
a_file=File.open("/etc/haproxy/haproxy.cfg")

#
a_file.readlines.each do |line|
  puts line
end

a_file.close

