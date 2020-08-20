puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."

9.times do
  Flat.create!(
    name: Faker::Quote.robin,
    address: Faker::Address.full_address,
    description: Faker::TvShows::RickAndMorty.quote,
    price_per_night: rand(40..80),
    number_of_guests: rand(2..6)
  )
end

puts "Finished!"
