condition=true
condition2=false

if condition
  puts "condition was true"
elsif condition2
  puts "condition2 was true"
else
  puts "No condition was met, default option."
end

puts "condition was true" if condition
puts "condition2 was true" if condition2

unless condition
  puts "condition was not true"
end

arg=2
case arg
when 1
  puts "arg was 1"
when 2
  puts "arg was 2"
else
  puts "arg was not matched, printing default"
end


