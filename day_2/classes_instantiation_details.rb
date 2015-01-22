class Bicycle
  def initialize()
    puts "Object initialized:"
    puts "   Class: " + self.class.to_s
    puts "   Object: " + self.object_id.to_s
  end
end

my_bike = Bicycle.new()
your_bike = Bicycle.new()

