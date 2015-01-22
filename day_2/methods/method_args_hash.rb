
def backup(opts = {
    'src' => 'src_dir',
    'dst' => 'bkup_dir' })
  puts "rm -rf #{opts['dst']}"
  puts "cp -a #{opts['src']} #{opts['dst']}"
end

backup()

backup({'dst' => 'backed_up', 'src' => 'not_backed_up'})
