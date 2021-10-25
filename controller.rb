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

  def rpm
    eng_service.rpm
  end

  def add_rpm(value)
    eng_service.add_rpm(value)
  end

  def max_rpm
    eng_service.max_rpm
  end

  def torque
    eng_service.torque
  end

  def gear
    gearbox_service.gear
  end

  def max_gear
    gearbox_service.max_gear
  end

  def speed
    car_service.speed
  end

  def add_speed(value)
    car_service.add_speed(value)
  end

  def max_speed
    car_service.max_speed
  end

  def shift_speed
    car_service.shift_speed
  end

  def odo
    car_service.odo
  end

  def ch_odo
    car_service.ch_odo
  end

  def shift_odo
    car_service.shift_odo
  end

  def car_name
    car_service.car_name
  end

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

  def shift_gear
    gearbox_service.shift_gear
  end

end
