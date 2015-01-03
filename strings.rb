#!/usr/bin/env ruby
# Copyright:   GPL
# Author:      Daniel Klopp (dsklopp@gmail.com)
# Created:     January 03, 2015 (01/03/15)
# Description: Demonstrate strings


# For class demonstration, start irb likeso
# irb --noecho --simple-prompt
# then copy and paste until the next comment
sentence='nothing is worse than having an itch you can\'t scratch'
puts sentence
sentence="nothing is worse than having an itch you can't scratch"
puts sentence
name="Leo"
puts "Hi there #{name}"

# End basic string demonstration

# For class demonstration, start irb likeso
# irb --noecho --simple-prompt
# then copy and paste until the next comment
phrase="You flatter me.  I would have reserved a seat specifically for you."
puts phrase[0]
puts phrase[-1]
puts phrase[0..2]
puts phrase[-4..-1]
puts phrase[-4..-2]
puts phrase[30..44]
# End string splicing demonstration

word="AnDrOIds\n"
puts
puts '=== Useful String Methods'
puts
puts 'word is: '
puts word
puts 'word.chomp'

phrase="You flatter me.  I would have reserved a seat specifically for you."
puts
puts phrase
puts phrase.gsub("seat", "table")
puts phrase.upcase
puts phrase.downcase
puts phrase.size


