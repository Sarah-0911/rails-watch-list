# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# Examples:
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Movie.destroy_all


10.times do
  movies = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image(size: '300x450', search_terms: ['film']),
    rating: format('%.1f', rand(0.0..10.0))
  )
end
