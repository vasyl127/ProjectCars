

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

  def shift_gear
    gear_up if car_model.rpm >= car_model.torque
  end

  def gear_up
    if car_model.gear < car_model.max_gear && car_model.rpm > 1200
      car_model.ch_gear(car_model.gear + 1)
      car_model.ch_rpm(car_model.rpm - 800)
    end
  end

  def gear_down
    car_model.ch_gear(car_model.gear - 1) if car_model.gear > 0
  end

end
