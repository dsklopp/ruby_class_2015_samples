
an_int = 3
a_float = 3.0
a_str = "3"

if an_int == a_str
  puts "#{a_str} equals #{an_int}"
else
  puts "#{a_str} DOES NOT equal #{an_int}"
end


if an_int == a_float
  puts "#{a_float} equals #{an_int}"
else
  puts "#{a_float} DOES NOT equal #{an_int}"
end

if an_int == a_str.to_i
  puts "#{a_str} equals #{an_int}"
else
  puts "#{a_str} DOES NOT equal #{an_int}"
end

if an_int.to_s == a_str
  puts "#{a_str} equals #{an_int}"
else
  puts "#{a_str} DOES NOT equal #{an_int}"
end
