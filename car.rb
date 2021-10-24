require_relative "controller"
require_relative "configurator"


class Car
  attr_reader :controller, :config

  def initialize(car_model)
    @controller = Controller.new(car_model)
    @config = Configurator.new(car_model)
  end

  def rpm
    controller.rpm
  end

  def add_rpm(value)
    controller.add_rpm(value)
  end

  def max_rpm
    controller.max_rpm
  end

  def torque
    controller.torque
  end

  def gear
    controller.gear
  end

  def max_gear
    controller.max_gear
  end

  def speed
    controller.speed
  end

  def add_speed(value)
    controller.add_speed(value)
  end

  def max_speed
    controller.max_speed
  end

  def shift_speed
    controller.shift_speed
  end

  def odo
    controller.odo
  end

  def ch_odo
    controller.ch_odo
  end

  def shift_odo
    controller.shift_odo
  end

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

  def shift_gear
    controller.shift_gear
  end


    #----------------------------


  def show_config
    config.show_config
  end

  def change_config(value)
    config.change_config(value)
  end

  def show_full_params
    config.show_full_params
  end

end
