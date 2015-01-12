#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     January 04, 2015 (01/04/15)
# Description: Demonstrate hashes


# For class demonstration, start irb likeso
# irb --noecho --simple-prompt
# then copy and paste until the next comment
license_hash = {}
project_hash = { 'linux' => 'GPLv2',
                'apache' => 'Apache',
                'bsd' => 'MIT' }
puts project_hash['linux']
project_hash['chef'] = 'Apache'
puts project_hash['chef']
project_hash.each do |key,value|
  puts "Project " + key + " has the license: " + value
end

# End string splicing demonstration


# For class demonstration, start irb likeso
# irb --noecho --simple-prompt
# then copy and paste until the next comment
license_hash['Apache'] = [ 'apache' ]
puts license_hash['Apache']
license_hash['Apache'] << 'chef'
print license_hash['Apache'], "\n"

# End string splicing demonstration
