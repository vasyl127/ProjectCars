require_relative "view/view"

class Configurator
  attr_reader :car_model

  def initialize(car_model)
    @car_model = car_model
  end

  def show_config
    puts " Car params:
MAX RPM   --> #{car_model.max_rpm}
Torque    --> #{car_model.torque}
Max Gear  --> #{car_model.max_gear}
Max Speed --> #{car_model.max_speed}
    "
  end

  def change_config(value)
    case value
    when "1"
      ch_max_rpm
    when "2"
      ch_max_gear
    when "3"
      ch_torque
    when "4"
      ch_max_speed
    when "5"
      return false
    else
      puts "You did something wrong."
    end
  end

  def ch_max_rpm
    puts 'Enter new RPM parametr'
    car_model.ch_max_rpm(View.user_input)
    View.remove(1)
  end

  def ch_max_gear
    puts 'Enter new Gear parametr'
    car_model.ch_max_gear(View.user_input)
    View.remove(1)
  end

  def ch_max_speed
    puts 'Enter new Speed parametr'
    car_model.ch_max_speed(View.user_input)
    View.remove(1)
  end

  def ch_torque
    puts 'Enter new Torque parametr'
    car_model.ch_torque(View.user_input)
    View.remove(1)
  end
end
