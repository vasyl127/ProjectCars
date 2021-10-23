
class CarService
  attr_reader :car_model

  def initialize(car_model)
    @car_model = car_model
  end

  def get_speed
    car_model.speed
  end

  def get_max_speed
    car_model.max_speed
  end


end
