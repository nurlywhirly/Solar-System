require_relative 'planet'
require_relative 'solar_system'

# New up some planets
mercury = Planet.new("Mercury",0.055,3.7,0.4,"terrestrial","42% oxygen")
venus = Planet.new("Venus", 0.815, 8.87, 0.7, "terrestrial", "96.5% carbon dioxide")
earth = Planet.new("Earth", 1, 9.807, 1, "terrestrial", "78.08% nitrogen")
mars = Planet.new("Mars", 0.107, 3.711, 1.5, "terrestrial", "95.97% carbon dioxide")
jupiter = Planet.new("Jupiter", 317.8, 24.79, 5.2, "gas", "89.8% hydrogen")
saturn = Planet.new("Saturn", 95.159, 10.44, 9.5, "gas", "96% hydrogen")
uranus = Planet.new("Uranus", 14.536, 8.69, 9.2, "gas", "83% hydrogen")
neptune = Planet.new("Neptune", 17.147, 11.15, 30.1, "gas","80% hydrogen")

first_planets_array = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]   #couldn't quite figure out how to do this without this "extra" array here. There's basically two identical arrays, this one and the second one in solar_system.rb

#New up a solar system as well
ss = SolarSystem.new("Ours")

#This shoves the first array of planets into a second one in solar_system.rb
ss.bulk_add_planets(first_planets_array)

#A loop that dumps the statistics on whichever planet the user chooses
again = "yes"
while again == "yes" || again == "y"
  puts "\rLet's learn about planets! Please choose a number from the following list:"

  n = 1
  first_planets_array.each do |temp_vari|   # I wanted to use the second_planets_array from solar_system.rb in here, but couldn't figure out how to call it. I tried second_planets_array.each and ss.second_planets_array.each
    puts "#{ n }.) #{ temp_vari.name }"
    n += 1
  end

  choice = gets.chomp.to_i
  until choice.between?(1,first_planets_array.length)
    print "Please enter a valid number from the list: "
    choice = gets.chomp.to_i
  end
  choice = first_planets_array[choice - 1]

  puts "\rHere are the stats on your planet:"
  puts "#{choice.stats_dump}\r"
  print "Would you like to know more? (Type yes or no): "

  again = gets.chomp.downcase
  until again == "yes" || again == "no" || again = "y" || again = "n"
    print "I don't understand. Do you want to know more, yes/no? "
    again = gets.chomp.downcase
  end
end

#A loop that asks the user to choose to planets and outputs the distance between them (assuming they're on a straight line, of course.)
distance_again = "yes"
while distance_again == "yes" || distance_again == "y"
  puts "Let's calculate the distance between two planets. Please select yours first planet from this list:"

  n = 1
  first_planets_array.each do |temp_vari|
    puts "#{ n }.) #{ temp_vari.name }"
    n += 1
  end

  first_planet = gets.chomp.to_i
  until first_planet.between?(1,first_planets_array.length)
    print "Please enter a valid number from the list: "
    first_planet = gets.chomp.to_i
  end
  first_planet = first_planets_array[first_planet - 1]

  puts "Now choose the second planet number:"
  second_planet = gets.chomp.to_i
  until second_planet.between?(1,first_planets_array.length)
    print "Please enter a valid number from the list: "
    first_planet = gets.chomp.to_i
  end
  second_planet = first_planets_array[second_planet - 1]

  ss.distance_from_other_planet(first_planet,second_planet)

  puts "Would you like to calculate more distances?"
  distance_again = gets.chomp.downcase
  until again == "yes" || again == "no" || again = "y" || again = "n"
    print "I don't understand. Do you want to know more, yes/no? "
    distance_again = gets.chomp.downcase
  end
end
