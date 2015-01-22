
def backup(src, dst)
  puts "rm -rf #{dst}"
  puts "cp -a #{src} #{dst}"
end

backup("not_backed_up", "backed_up")
