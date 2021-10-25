require_relative "car"
require_relative "model/car_model"
require_relative "view/view"
require_relative "drag"

#initialize

car_model1 = CarModel.new('Car1')
car1 = Car.new(car_model1)
car_model2 = CarModel.new('Car2')
car2 = Car.new(car_model2)
drag = Drag.new(60, car1, car2)


#main logic
car1.change_config
car2.change_config
drag.start
