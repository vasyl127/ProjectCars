require_relative "application"
param1 = Param.new
param2 = Param.new

car_model1 = CarModel.new(param2)
car1 = Car.new(car_model1)

car_model2 = CarModel.new(param2)
car2 = Car.new(car_model2)



puts "CAR1: RPM       --> #{car1.rpm}"
puts "CAR1: MAX RPM   --> #{car1.max_rpm}"
puts "CAR1: Torque    --> #{car1.torque}"
puts "CAR1: Gear      --> #{car1.gear}"
puts "CAR1: Max Gear  --> #{car1.max_gear}"
puts "CAR1: Speed     --> #{car1.speed}"
puts "CAR1: Max Speed --> #{car1.max_speed}"
puts "-"*60
car1.eng_start
car1.add_rpm(100)
puts "CAR1: RPM       --> #{car1.rpm}"
car1.gear_up
car1.gear_up
puts "CAR1: Gear      --> #{car1.gear}"
puts "-"*60
puts "CAR2: RPM       --> #{car2.rpm}"
puts "CAR2: MAX RPM   --> #{car2.max_rpm}"
puts "CAR2: Torque    --> #{car2.torque}"
puts "CAR2: Gear      --> #{car2.gear}"
puts "CAR2: Max Gear  --> #{car2.max_gear}"
puts "CAR2: Speed     --> #{car2.speed}"
puts "CAR2: Max Speed --> #{car2.max_speed}"
puts "-"*60
car2.eng_start
puts "CAR2: RPM       --> #{car2.rpm}"
car2.gear_up
car2.gear_up
puts "CAR2: Gear      --> #{car2.gear}"
puts "-"*60
