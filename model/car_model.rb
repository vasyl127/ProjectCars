class CarModel
  attr_reader :rpm, :torque, :gear, :max_gear, :max_rpm, :speed, :max_speed

  def initialize (config)
    @rpm = 0
    @gear = 0
    @speed = 0
    @torque = config[:torque]
    @max_gear = config[:max_gear]
    @max_rpm = config[:max_rpm]
    @max_speed = config[:max_speed]
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
