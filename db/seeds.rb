puts "Start seeding 🍑"

puts "Cleaning up database 🧹"
Flat.destroy_all

5.times do
  puts "Creating new flat 🏡"
  Flat.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.sentence,
    price_per_night: (50..200).step(10).to_a.sample,
    number_of_guests: (1..10).to_a.sample)
end

puts "Finish seeding 🍑"
