# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.delete_all
Ticket.delete_all
TicketList.delete_all


u=User.create mail:"aaaaa@gmail.com",name:"a",last_name:"b",phone:"1", password:"hi"
t=Ticket.create()
tl=TicketList.create user:u,ticket:t