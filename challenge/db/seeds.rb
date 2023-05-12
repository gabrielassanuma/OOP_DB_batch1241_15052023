require 'faker'

5.times do 
  Game.create(name: Faker::Game.title, genre: Faker::Game.genre, address: Faker::Internet.url )
end
