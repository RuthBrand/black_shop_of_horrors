# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Item.destroy_all
Category.destroy_all

User.create!(first_name: "Ad", last_name: "min", email: "admin@admin.com", password: "admin1", password_confirmation: "admin1", role: 1)
organ = Category.create!(title: "Organs", image: "https://i.imgur.com/p8HIlRr.jpg")
weapons = Category.create!(title: "Weapons", image: "https://i.imgur.com/GLaydj2.jpg")
vehicles = Category.create!(title: "Vehicles", image: "http://media.caranddriver.com/images/media/51/2017-10best-lead-photo-672628-s-original.jpg")
nuclear_weapons = Category.create!(title: "Nuclear Weapons", image: "https://i.imgur.com/DJHRrOt.jpg")


organ.items.create!(title: "Heart",
            description: "All of our hearts will eventually wear out. Why let yours?",
            price: 25499,
            image: "http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/image_article_collections/anatomy_pages/heart_illustration.jpg"
            )
organ.items.create!(title: "Liver",
            description: "All that drinking of expensive alchol is gonna take down your liver. Just get a new one, and keep on drinking!",
            price: 34,
            image: "http://www.pcosnutrition.com/wp-content/uploads/2014/12/Liver-original-Getty.jpg"
            )
organ.items.create!(title: "Brain",
            description: "Thinking causes wear and tear. Despite how little you do, you'll need a new brain some day!",
            price: 25234499,
            image: "https://img.purch.com/h/1000/aHR0cDovL3d3dy5saXZlc2NpZW5jZS5jb20vaW1hZ2VzL2kvMDAwLzAzOS84NDcvb3JpZ2luYWwvc2h1dHRlcnN0b2NrXzEwMTAwMDcwNy5qcGc="
            )
