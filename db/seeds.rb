# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

8.times do |index|
  Product.create!(
    name: Faker::Coffee.unique.blend_name,
    description: Faker::Coffee.unique.notes,
    price: Faker::Commerce.price,
    image: Faker::LoremPixel.image,
    origin: Faker::Coffee.unique.origin,
    variety: Faker::Coffee.unique.variety
    )
end

admin_list = [
  [ "admin@admin.com", "password123456"],
]

admin_list.each do |email, password|
  User.create( email: email, password: password, admin: true )
end

p "Created #{Product.count} products"
p "Created #{User.count} admin"
