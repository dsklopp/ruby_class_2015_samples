# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     December 28, 2014 (12/28/14)
# Description: Demonstrate one way to open a file in Ruby and print it out

host_file = File.open("/etc/hosts")

host_file.readlines.each do |line|
   puts line
end

host_file.close

