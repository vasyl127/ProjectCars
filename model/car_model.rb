class CarModel
  attr_reader :rpm, :torque, :gear, :max_gear, :max_rpm, :speed, :max_speed

  def initialize
    @rpm = 0
    @gear = 0
    @speed = 0
    @torque = 4100
    @max_gear = 6
    @max_rpm = 8000
    @max_speed = 210
  end

  def ch_rpm(value)
    @rpm = value.to_i
  end

  def ch_gear(value)
    @gear = value.to_i
  end

  def ch_speed(value)
    @speed = value.to_i
  end

  def ch_torque(value)
    @torque = value
  end

  def ch_max_gear(value)
    @max_gear = value.to_i
  end

  def ch_max_rpm(value)
    @max_rpm = value.to_i
  end

  def ch_max_speed(value)
    @max_speed = value.to_i
  end
end
