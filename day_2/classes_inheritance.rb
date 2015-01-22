class Bicycle
  def initialize()
    puts "Object initialized:"
    puts "   Class: " + self.class.to_s
    puts "   Object: " + self.object_id.to_s
  end
end

class RoadBike < Bicycle
end


a_bike = Bicycle.new()
road_bike = RoadBike.new()

