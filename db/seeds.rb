# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Category.destroy_all
PostCategory.destroy_all

puts "creating categories"
3.times do 
    Category.create(name: Faker::Book.genre)
end

puts "creating post"
15.times do
    Post.create(title: Faker::Games::Overwatch.hero, content: Faker::Games::Overwatch.quote)
end

puts "creating post_categories"
15.times do
    PostCategory.create(post_id: Post.all.sample.id, category_id: Category.all.sample.id)
end