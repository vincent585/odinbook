# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'jim@email.com', password: 'password1', name: 'Jim Jones')
User.create(email: 'steve@email.com', password: 'password1', name: 'Steve Stones')
User.create(email: 'bo@email.com', password: 'password1', name: 'Bo Jangles')
User.create(email: 'mick@email.com', password: 'password1', name: 'Mick Tems')
User.create(email: 'gooby@email.com', password: 'password1', name: 'Gary Goober')
