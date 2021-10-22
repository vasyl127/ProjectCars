require_relative "services/services"


class Controller
  attr_reader :services

  def initialize (config)
    @services = Services.new(config)
  end

  def get_rpm
    services.get_rpm
  end

  def get_max_rpm
    services.get_max_rpm
  end

  def get_torque
    services.get_torque
  end

  def get_gear
    services.get_gear
  end

  def get_max_gear
    services.get_max_gear
  end

  def get_speed
    services.get_speed
  end

  def get_max_speed
    services.get_max_speed
  end

#--------------------------

  def eng_start
    services.eng_start
  end

  def eng_stop
    services.eng_stop
  end

  def gear_up
    services.gear_up
  end

  def gear_down
    services.gear_down
  end

end
