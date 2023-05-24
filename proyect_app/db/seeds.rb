# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.delete_all
Executive.delete_all
Supervisor.delete_all
Administrator.delete_all

AllUser.delete_all

AssignTicket.delete_all
TicketList.delete_all

Comment.delete_all
Chat.delete_all

Tag.delete_all
TagList.delete_all

Ticket.delete_all

ExecutiveReport.delete_all
PerformanceReport.delete_all


u=User.create mail:"aaaaa@gmail.com",name:"Juan",last_name:"Carrera",phone:"12345", password:"hiitsme"
u1=User.create mail:"use@gmail.com",name:"Carmen",last_name:"Quiroz",phone:"87421", password:"notpassword"
u2=User.create mail:"example@gmail.com",name:"Angela",last_name:"Garcia",phone:"43872", password:"mimascot"
puts "User ready"
exe=Executive.create mail:"exe@gmail.com",name:"Pedro",last_name:"Valdez",phone:"13245", password:"password"
exe1=Executive.create mail:"exe1@gmail.com",name:"Daniel",last_name:"Opazo",phone:"51240", password:"clave"
puts "Executive ready"
sup=Supervisor.create mail:"sup@gmail.com",name:"Diego",last_name:"Castro",phone:"14325", password:"answer"
adm=Administrator.create mail:"add@gmail.com",name:"Miguel",last_name:"Perez",phone:"15432", password:"secret"
puts "Administrator & supervisor ready"

t=Ticket.create [
    {title:"No me permite crear un usuario", incident_description:"Intente crear de nuevo mi cuenta utilizando un mail ya utilizado", creation_date:Time.now},
    {title:"Nadie quiere solucionar mi problema", incident_description:"COmo es posible que nadie pueda solucionar un problema tan simple", creation_date:Time.now},
    {title:"Nose como resumir", incident_description:"Tengo el problema de que no se como hacer que rails use bootstrap bien", creation_date:Time.now},
    {title:" Vacio ", incident_description:" vacio otra vez", creation_date:Time.now},
    {title:"UN ejemplo", incident_description:"esto no es nada mas que un ejemplo", creation_date:Time.now}
]
puts "Ticket ready"

tl=TicketList.create [
    {user:u,ticket:t.first},
    {user:u1,ticket:t.second},
    {user:u2,ticket:t.third},
    {user:u,ticket:t.fourth},
    {user:u2,ticket:t.last}
]
puts "TicketList ready"
at=AssignTicket.create [
    {executive:exe1,ticket:t.first},
    {executive:exe,ticket:t.second},
    {executive:exe,ticket:t.third},
    {executive:exe1,ticket:t.fourth},
    {executive:exe,ticket:t.last}
]
puts "AssignTicket ready"
tgl=TagList.create [
    {ticket:t.first},
    {ticket:t.second},
    {ticket:t.third},
    {ticket:t.fourth},
    {ticket:t.last}
]
puts "Taglist ready"
tg=Tag.create [
    {name:"capa 8",tag_list:tgl.first},
    {name:"Not method", tag_list:tgl.second},
    {name:"capa 8",tag_list:tgl.last},
    {name:"not answer",tag_list:tgl.second},
    {name:"ask error", tag_list:tgl.third}
]
puts "Tags ready"
ch=Chat.create [
    {ticket:t.first},
    {ticket:t.second},
    {ticket:t.third},
    {ticket:t.fourth},
    {ticket:t.last}
]
puts "Chat ready"
cm=Comment.create [
    {text:"buen ejemplo de comentario",writer:adm.name + " " + adm.last_name,chat:ch.first},
    {text:"problema para el que sigue", writer:exe1.name + " " + exe1.last_name,chat:ch.second},
    {text:"No deberias de decir eso",writer:sup.name + " " + sup.last_name,chat:ch.second},
    {text:"otro ejemplo",writer:exe.name + " " + exe.last_name,chat:ch.last},
    {text:"No se que responder",writer:exe1.name + " " + exe1.last_name,chat:ch.fourth}
]
puts "Comments ready"

pfr=PerformanceReport.create [
    {report_date:Time.now,administrator:adm},
    {report_date:Time.now,supervisor:sup},
    {report_date:Time.now,administrator:adm}
]
puts "PerformanceReport ready"
exr=ExecutiveReport.create [
    {executive:exe,performance_report:pfr.first},
    {executive:exe,performance_report:pfr.second},
    {executive:exe1,performance_report:pfr.first},
    {executive:exe1,performance_report:pfr.third},
]
puts "ExecutiveReport ready"

puts "All Complete"