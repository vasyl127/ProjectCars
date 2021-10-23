
class Param
  attr_reader :max_rpm, :max_gear, :torque, :max_speed

  def initialize
    @max_rpm = 4000
    @max_gear = 6
    @torque = 3100
    @max_speed = 180
  end

  def ch_max_rpm(value)
    @max_rpm=value
  end

  def ch_max_gear(value)
    @max_gear=value
  end

  def ch_torque(value)
    @torque=value
  end

  def ch_max_speed(value)
    @max_speed=value
  end

end
