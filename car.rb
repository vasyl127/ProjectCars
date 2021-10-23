require_relative "controller.rb"

class Car
  attr_reader :controller

  def initialize(car_model)
    @controller = Controller.new(car_model)
  end

  def get_rpm
    controller.get_rpm
  end

  def get_max_rpm
    controller.get_max_rpm
  end

  def get_torque
    controller.get_torque
  end

  def get_gear
    controller.get_gear
  end

  def get_max_gear
    controller.get_max_gear
  end

  def get_speed
    controller.get_speed
  end

  def get_max_speed
    controller.get_max_speed
  end


  #----------------------------

  def eng_start
    controller.eng_start
  end

  def eng_stop
    controller.eng_stop
  end

  def gear_up
    controller.gear_up
  end

  def gear_down
    controller.gear_down
  end

end
