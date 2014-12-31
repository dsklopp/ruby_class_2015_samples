
a_file=File.open("/etc/haproxy/haproxy.cfg")

a_file.readlines.each do |line|
  puts line
end

a_file.close

