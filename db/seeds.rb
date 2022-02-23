puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
# CATEGORIES = %w[chinese italian japanese french belgian]
5.times do
  restaurant = Restaurant.create!(name: Faker::Restaurant.name, address: Faker::Address.street_address,
                     phone_number: Faker::PhoneNumber.phone_number_with_country_code, category: Restaurant::CATEGORIES.sample)
  2.times do
  Review.create!(content: Faker::ChuckNorris.fact, rating: (1..5).to_a.sample, restaurant: restaurant)
  end
end
puts 'Created'
