# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Post.destroy_all

puts "Start"
users = User.create([
  {name: "Алиса", email: "alisa@gmail.com", password: "123456", isadmin: true}

  ])
posts = Post.create([
  {image: "55.png", name: "Урок 1", title: "Алфавит"},
  {image: "6.png", name: "Урок 2", title: "Приветствие"},
  {image: "3.png", name: "Урок 3", title: "Знакомство"},
  {image: "4.png", name: "Урок 4", title: "Добрый день!"},
  {image: "5.png", name: "Урок 5", title: "Уже скоро"},

  ])
puts "End"
