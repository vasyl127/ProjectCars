require_relative "../model/car_model"


class EngService
  attr_reader :car_model

  def initialize(car_model)
    @car_model = car_model
  end

  def get_rpm
    car_model.rpm
  end

  def get_max_rpm
    car_model.max_rpm
  end

  def get_torque
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
