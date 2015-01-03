#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     January 03, 2015 (01/03/15)
# Description: Demonstrate arrays


# For class demonstration, start irb likeso
# irb --noecho --simple-prompt
# then copy and paste until the next comment
basic_array = [ 'a', 'b', 'c', 'd']
print basic_array, "\n"
print basic_array.reverse(), "\n"
print basic_array[1], "\n"
basic_array << 'e'
print basic_array, "\n"
basic_array[1..2] = 'z'
print basic_array, "\n"
basic_array[1..2] = ['m', 'n']
print basic_array, "\n"

# End string splicing demonstration

# For class demonstration, start irb likeso
# irb --noecho --simple-prompt
# then copy and paste until the next comment

phrase="You flatter me.  I would have reserved a seat specifically for you."
array_phrase = phrase.split
print array_phrase, "\n"
puts array_phrase[-1]
puts array_phrase[6]
puts array_phrase.join('-')

# End string splicing demonstration

