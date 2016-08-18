class Planet
  attr_accessor :name, :mass, :gravity, :distance_from_sun, :planet_type, :max_volume_element #:solar_rotation

  def initialize(name, mass, gravity, distance_from_sun, planet_type, max_volume_element)
    @name = name      # In human English words
    @mass = mass      # In earth masses
    @gravity = gravity      #surface gravity in m/s^2
    @distance_from_sun = distance_from_sun      # in Astronomical Units: AUs
    @planet_type = planet_type      # Terrestrial or Gas
    @max_volume_element = max_volume_element      # Percentage of largest element by volume
    # @solar_rotation = solar_rotation
  end

  def stats_dump
    puts "#{ @name } has a mass of #{ @mass } Earths. On the surface, its gravity is #{ @gravity } meters per second squared. It is #{ @distance_from_sun } AUs from the sun. This #{ @planet_type } planet is #{ @max_volume_element }."
  end

end












#########################################
# mercury = Planet.new("Mercury",0.055,3.7,0.4,"terrestrial","42% oxygen")
# venus = Planet.new("Venus", 0.815, 8.87, 0.7, "terrestrial", "96.5% carbon dioxide")
# earth = Planet.new("Earth", 1, 9.807, 1, "terrestrial", "78.08% nitrogen")
# mars = Planet.new("Mars", 0.107, 3.711, 1.5, "terrestrial", "95.97% carbon dioxide")
# jupiter = Planet.new("Jupiter", 317.8, 24.79, 5.2, "gas", "89.8% hydrogen")
# saturn = Planet.new("Saturn", 95.159, 10.44, 9.5, "gas", "96% hydrogen")
# uranus = Planet.new("Uranus", 14.536, 8.69, 9.2, "gas", "83% hydrogen")
# neptune = Planet.new("Neptune", 17.147, 11.15, 30.1, "gas","80% hydrogen")
#
# planets_display_array = ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"]
#
# planets_class_array = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]
#
# puts "Let's learn about planets! Please choose a number from the following list:"
#
# n = 1
# planets_display_array.each do |temp_vari|
#   puts "#{ n }.) #{ temp_vari.capitalize }"
#   n += 1
# end
#
# choice = gets.chomp.to_i
#
# if choice <= planets_display_array.length || choice >= 1
#   puts "Here are the stats on your planet:"
#   choice = planets_class_array[choice - 1]
# elsif
#   print "Please enter a valid number from the list: "
#   choice = gets.chomp.to_i
# end
#
# puts "#{choice.stats_dump}\r"
