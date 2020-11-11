# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
garden_flat = { name: 'Light & Spacious Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
montmartre_flat =  { name: "Beautiful Flat Montmartre", address: "Avenue Junot Paris 75018", description: 'Lovely flat near the Sacré Coeur. Two double bedrooms, open kitchen on the living room', price_per_night: 105, number_of_guests: 4 }
eiffel_flat =  { name: "Unique Appartement Eiffel Tower", address: "Avenue du Trocadero Paris 76016", description: 'Beautiful appartement near the Eiffel Tower. Three bedrooms and spacious living-room', price_per_night: 145, number_of_guests: 6 }
damremont_flat =  { name: "Lovely Town House", address: "Rue Damremont Paris 76018", description: 'Little house in the center of Paris. One bedroom. Pefect for a couple', price_per_night: 60, number_of_guests: 2 }

[ garden_flat, montmartre_flat, eiffel_flat, damremont_flat ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
