# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

<<<<<<< HEAD
Day.destroy_all
User.destroy_all

user = User.create(email:"mail@email.com", password: "password")

user.days.create!([

  { date: '09/25/16' },

  { date: '09/26/16' }
=======
user = User.create(email: "ahmed.elkheshin@gmail.com", password: "password")

days = Day.all

user.days.create!([

  { date: '09/26/16' },

  { date: '09/25/16' }
>>>>>>> 4fb0953831bf1430a038f4e2dc759151b4cfd891

])
