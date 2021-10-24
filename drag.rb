require_relative "car"

class Drag
  attr_reader :time, :car1, :car2

  def initialize(time, car1, car2)
    @time = time
    @car1 = car1
    @car2 = car2
  end

  def start
    storage = {}
    storage[:car1] = car1
    storage[:car2] = car2
    car1.eng_start
    car2.eng_start
    t=0
    while t <= time
      storage.each_pair do |k, car|
        car.add_rpm(500)
        car.shift_gear
        puts "#{k} --> rpm: #{car.rpm}"
        puts "#{k} --> gear: #{car.gear}"
        car.shift_speed
        car.shift_odo
        puts "#{k} --> speed: #{car.speed}"
        puts "#{k} --> odo: #{car.odo}"
        # car.add_odo
      end
      t+=1
    end

  end


end
