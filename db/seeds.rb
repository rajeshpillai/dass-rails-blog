# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Category.destroy_all
Tagging.destroy_all
Tag.destroy_all
User.destroy_all

Category.create(title: "Programming")
Category.create(title: "Web Development")
Category.create(title: "Ruby on Rails")
Category.create(title: "React")

javascript = Tag.create(name: "javascript")
react = Tag.create(name: "react")
ruby = Tag.create(name: "ruby")
node = Tag.create(name: "node")

admin_user = User.create(email: "rajesh@algorisys.com",
        username:"admin",password:"123456",
        password_confirmation:"123456")

Category.all.each do |category|
    20.times do |i|
        # tag_offset =  rand(Tag.count)
        # tag = Tag.offset(tag_offset).first
        Post.create(title: "Post #{i}", 
            body: "Post details", category: category,
            tags: i % 2 == 0 ? [javascript, react] : [ruby, node])
    end
end