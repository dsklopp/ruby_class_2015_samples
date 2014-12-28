
host_file = File.open("/etc/hosts")

host_file.readlines.each do |line|
   puts line
end

host_file.close

