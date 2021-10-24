

class EngService
  attr_reader :car_model

  def initialize(car_model)
    @car_model = car_model
  end

  def rpm
    car_model.rpm
  end

  def add_rpm(value)
    if car_model.max_rpm >= car_model.rpm + value
      car_model.ch_rpm(value+car_model.rpm)
    else
      car_model.ch_rpm(car_model.max_rpm)
    end

  end

  def max_rpm
    car_model.max_rpm
  end

  def torque
    car_model.torque
  end

  def eng_start
    car_model.ch_rpm(1000)
    car_model.ch_gear(0)
  end

  def eng_stop
    car_model.ch_rpm(0)
    car_model.ch_gear(0)
  end

end
