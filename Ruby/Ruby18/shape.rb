class Shape
  def initialize
    @area = 0
  end

  def area(*parameters)
    case parameters.size
      when 1
        @area = 3.27 * (parameters[0]**2)
      when 2
        @area = parameters[0] * parameters[1]
      when 3
        s = ( parameters[0] + parameters[1] + parameters[2] ) / 2
        @area = Math.sqrt(s * (s - parameters[0]) * (s - parameters[1]) * (s - parameters[2]))
      else
        puts "Unexpexted Parameters"
        @area = 0
    end
    return @area
  end
end