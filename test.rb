require_relative "application"



puts '------==Car 1==------'
car_model1 = CarModel.new
car1 = Car.new(car_model1)
if View.change?
while car1.change_config(View.change_list)
end
end
View.remove(1)
puts '------==Car 2==------'
car_model2 = CarModel.new
car2 = Car.new(car_model2)
if View.change?
while car2.change_config(View.change_list)
end
end
View.remove(1)

drag = Drag.new(60, car1, car2)
drag.start



car1.show_config
puts "Speed --> #{car1.speed}"
puts "-"*60
puts "Engine start"
car1.eng_start
car1.add_rpm(100)
puts "CAR1: RPM       --> #{car1.rpm}"
car1.gear_up
car1.gear_up
puts "CAR1: Gear      --> #{car1.gear}"
puts "-"*60
car2.show_config
puts "Speed --> #{car2.speed}"
puts "-"*60
puts "Engine start"
car2.eng_start
puts "CAR2: RPM       --> #{car2.rpm}"
car2.gear_up
car2.gear_up
puts "CAR2: Gear      --> #{car2.gear}"
puts "-"*60
car1.show_full_params
car2.show_full_params
