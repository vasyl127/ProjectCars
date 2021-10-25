require_relative "application"



car_model1 = CarModel.new('Car1')
car1 = Car.new(car_model1)
car_model2 = CarModel.new('Car2')
car2 = Car.new(car_model2)
drag = Drag.new(60, car1, car2)




car1.change_config
car2.change_config
drag.start
