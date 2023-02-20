require 'faker'

options = ['Street', "Avenue"]

10.times do
  Restaurant.create(
    name: Faker::Coffee.blend_name,
    address: "#{Faker::Movies::StarWars.planet} #{options.sample}",
    rating: rand(1..5)
  )
end
