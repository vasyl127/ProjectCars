require_relative "services/car_service"
require_relative "services/eng_service"
require_relative "services/gearbox_service"



class Controller
  attr_reader :services, :car_service, :eng_service, :gearbox_service

  def initialize (car_model)
    @car_service = CarService.new(car_model)
    @eng_service = EngService.new(car_model)
    @gearbox_service = GearboxService.new(car_model)
  end

  def get_rpm
    eng_service.get_rpm
  end

  def get_max_rpm
    eng_service.get_max_rpm
  end

  def get_torque
    eng_service.get_torque
  end

  def get_gear
    gearbox_service.get_gear
  end

  def get_max_gear
    gearbox_service.get_max_gear
  end

  def get_speed
    car_service.get_speed
  end

  def get_max_speed
    car_service.get_max_speed
  end

#--------------------------

  def eng_start
    eng_service.eng_start
  end

  def eng_stop
    eng_service.eng_stop
  end

  def gear_up
    gearbox_service.gear_up
  end

  def gear_down
    gearbox_service.gear_down
  end

end
