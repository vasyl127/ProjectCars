require_relative "car.rb"



config = {
  max_rpm: 8000,
  torque: 4100,
  max_gear: 6,
  max_speed: 210
}

car1 = Car.new(config)

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
