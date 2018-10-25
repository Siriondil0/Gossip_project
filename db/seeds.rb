# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name  , email: Faker::Internet.email, age: rand(88),)
end
5.times do
  category = Category.create!(name: Faker::LordOfTheRings.location)
end
10.times do
  use = User.offset(rand(User.count)).first
  cat = Category.offset(rand(Category.count)).first
  article = Article.create!(title: Faker::LordOfTheRings.character, content: Faker::Lorem.paragraph, user: use, category: cat)
end

15.times do
  use = User.offset(rand(User.count)).first
  art = Article.offset(rand(Article.count)).first
  comment = Comment.create!(content: Faker::Lorem.paragraph, user: use, article: art) 
end
15.times do
  use = User.offset(rand(User.count)).first
  art = Article.offset(rand(Article.count)).first
  like = Like.create!(user: use, article: art)
end