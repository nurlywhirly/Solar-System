class SolarSystem
  attr_accessor :name, :second_planets_array

  def initialize(name)
    @name = name
    @second_planets_array = []
  end

  def add_planet(planet_to_add)
    @second_planets_array << planet_to_add
  end

  def bulk_add_planets(planets_to_add)
    @second_planets_array << planets_to_add
  end

  def view_planet_array
    puts @planets.inspect
  end

  def distance_from_other_planet(first_planet, second_planet)
    dist = first_planet.distance_from_sun - second_planet.distance_from_sun
    puts "#{ first_planet.name } is #{ dist.abs } AUs from #{ second_planet.name }"
  end

end
