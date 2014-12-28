#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     December 28, 2014 (12/28/14)
# Description: Demonstrate one way to open a file in Ruby and print it out
#              we start it with using parenthesis, then demonstrate they are
#              not needed.

a_file = File.open("/etc/haproxy/haproxy.cfg")

a_file.readlines().each() do |line|
   puts line
end

a_file.close()

