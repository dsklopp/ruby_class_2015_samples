
def backup(src: "bkup_dir", dst: "bkup_dir")
  puts "rm -rf #{dst}"
  puts "cp -a #{src} #{dst}"
end

backup()

def backup(src: "bkup_dir", dst: "bkup_dir")
  puts "rm -rf #{dst}"
  puts "cp -a #{src} #{dst}"
end

backup(dst: "backed_up", src: "not_backed_up")

def backup(src:, dst:)
  puts "rm -rf #{dst}"
  puts "cp -a #{src} #{dst}"
end

backup(dst: "backed_up", src: "not_backed_up")
