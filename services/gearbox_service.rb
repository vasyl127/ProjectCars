require_relative "../model/car_model"


class GearboxService
  attr_reader :car_model

  def initialize(car_model)
    @car_model = car_model
  end

  def gear
    car_model.gear
  end

  def max_gear
    car_model.max_gear
  end

  def gear_up
    car_model.ch_gear(car_model.gear + 1) if car_model.gear < car_model.max_gear
  end

  def gear_down
    car_model.ch_gear(car_model.gear - 1) if car_model.gear > 0
  end

end
