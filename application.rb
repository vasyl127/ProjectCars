require_relative "car"
require_relative "model/car_model"

car_model = CarModel.new
car1 = Car.new(car_model)











puts "RPM       --> #{car1.get_rpm}"
puts "MAX RPM   --> #{car1.get_max_rpm}"
puts "Torque    --> #{car1.get_torque}"
puts "Gear      --> #{car1.get_gear}"
puts "Max Gear  --> #{car1.get_max_gear}"
puts "Speed     --> #{car1.get_speed}"
puts "Max Speed --> #{car1.get_max_speed}"
puts "-"*60
car1.eng_start
puts "RPM       --> #{car1.get_rpm}"
car1.gear_up
car1.gear_up
puts "Gear      --> #{car1.get_gear}"
car1.eng_stop
puts "-"*60

puts "RPM       --> #{car1.get_rpm}"
puts "MAX RPM   --> #{car1.get_max_rpm}"
puts "Torque    --> #{car1.get_torque}"
puts "Gear      --> #{car1.get_gear}"
puts "Max Gear  --> #{car1.get_max_gear}"
puts "Speed     --> #{car1.get_speed}"
puts "Max Speed --> #{car1.get_max_speed}"
