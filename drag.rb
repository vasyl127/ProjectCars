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
        car.shift_speed
        car.shift_odo
      end
      t+=1
    end
    result
  end

  def result
    if car1.odo > car2.odo
      puts "| --------== CAR 1 WIN ==-------- |"
    elsif car1.odo > car2.odo
      puts "| --------== CAR 2 WIN ==-------- |"
    else car1.odo == car2.odo
      puts "| -----------== Draw ==---------- |"
    end
    cars_param
  end

  def cars_param
    puts "| ------== Drag time: #{time} ==------ |
| ---= #{car1.car_name} =--- | ---= #{car2.car_name} =--- |
| Odometr: #{car1.odo}  | Odometr: #{car2.odo}  |
| Speed: #{car1.speed}     | Speed: #{car1.speed}     |
|---------------------------------|"
  print "\n[ Press Enter to continue ]"
  i = gets.chomp()
  View.remove(9)
  end
end
