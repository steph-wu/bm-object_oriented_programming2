class System

  attr_reader :bodies

  def initialize(bodies = [])
    @bodies = bodies
  end

  def add(body)
    @bodies.push(body)
  end

end

class Body

  attr_reader :name, :mass

  def initialize(name,mass)
    @name = name
    @mass = mass
  end

end

##############################

class Planet < Body

  attr_reader :day, :year

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end

class Star < Body

  attr_reader :type

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end

class Moon < Body

  attr_reader :month, :planet

  def initialize(name, mass, month, planet)
    super(name, mass)
    @planet = planet
    @month = month
  end

end

###############################

solar = System.new
earth = Planet.new("Earth", 5.972, 24, 365)

puts earth.name
puts earth.mass
puts earth.day
puts earth.year
