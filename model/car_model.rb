class CarModel
  attr_reader :rpm, :torque, :gear, :max_gear, :max_rpm, :speed, :max_speed

  def initialize
    @rpm = 0
    @gear = 0
    @speed = 0
    @torque = 4100
    @max_gear = 6
    @max_rpm = 7000
    @max_speed = 220
  end

  def ch_rpm(value)
    @rpm = value
  end

  def ch_gear(value)
    @gear = value
  end

  def ch_speed(value)
    @speed = value
  end
end
