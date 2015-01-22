
licenses={ 'Chef' => 'Apache',
           'BSD' => 'BSD',
           'Linux' => 'GPLv2' }
puts "Chef license is " + licenses['Chef']
puts "Firefox license is " + licenses['Firefox'].to_s

licenses.default="Unknown"

puts "Firefox license is " + licenses['Firefox'].to_s

