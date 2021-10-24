
class CarService
  attr_reader :car_model

  def initialize(car_model)
    @car_model = car_model
  end

  def speed
    car_model.speed
  end

  def odo
    car_model.odo
  end

  def ch_odo(value)
    car_model.ch_odo(car_model.odo + value)
  end

  def shift_odo
    ch_odo(car_model.speed / 10)
  end

  def add_speed(value)
    car_model.ch_speed(car_model.speed + value)
  end

  def max_speed
    car_model.max_speed
  end

  def shift_speed
    if max_speed > speed
      if car_model.rpm <= car_model.torque
        add_speed(15)
      else
        add_speed(5)
      end
    end
  end

end
