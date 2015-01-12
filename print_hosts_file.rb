# Author: Daniel Klopp
# Copyright: GPL2
# Description: Sample ruby code that opens file and prints it out
#              Demonstrates File Output, file iteration, and each loops

host_file=File.open("/etc/hosts")

host_file.readlines.each do |line|
  puts line
end

host_file.close

