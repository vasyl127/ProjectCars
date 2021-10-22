require_relative "../model/car_model"


class Services
  attr_reader :car

  def initialize(config)
    @car = CarModel.new(config)
  end

  def get_rpm
    car.rpm
  end

  def get_max_rpm
    car.max_rpm
  end

  def get_torque
    car.torque
  end

  def get_gear
    car.gear
  end

  def get_max_gear
    car.max_gear
  end

  def get_speed
    car.speed
  end

  def get_max_speed
    car.max_speed
  end

#--------------------------

  def eng_start
    car.ch_rpm(1000)
    car.ch_gear(0)
  end

  def eng_stop
    car.ch_rpm(0)
    car.ch_gear(0)
  end

  def gear_up
    car.ch_gear(car.gear + 1) if car.gear < car.max_gear
  end

  def gear_down
    car.ch_gear(car.gear - 1) if car.gear > 0
  end

end
