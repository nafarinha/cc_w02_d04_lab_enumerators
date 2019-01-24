require("pry")
class StarSystem
  attr_reader :name, :planets

def initialize(name, planets)
  @name = name
  @planets = planets
end


def planet_names
  @planets.map { |planet|  planet.name() }
end

def get_planet_by_name(name)
  @planets.find{ |planet| "Mars" == planet.name}
end

def get_largest_planet

  diameter = 0
  largest_planet = 0

  @planets.each do |planet|
    if planet.diameter > diameter
      diameter = planet.diameter
      largest_planet = planet
    end
  end
  return largest_planet
end



# def get_smallest_planet
# planet_min = 0
# @planets.each{|planet| planet_min = planet if planet.diameter <= planet_min.diameter}
# end

def get_smallest_planet

  diameter = 1_000_000
  smallest_planet = 0

  @planets.each do |planet|
    if planet.diameter < diameter
      diameter = planet.diameter
      smallest_planet = planet
    end
  end
  return smallest_planet
end









end
