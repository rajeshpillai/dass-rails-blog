# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Category.destroy_all

Category.create(title: "Programming")
Category.create(title: "Web Development")
Category.create(title: "Ruby on Rails")
Category.create(title: "React")


Category.all.each do |category|
    3.times do |i|
        Post.create(title: "Post #{i}", body: "Post details", category: category)
    end
end