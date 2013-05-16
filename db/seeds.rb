# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


u1 = User.new
u1.name = "Raghu"
u1.email = "r@r.com"
u1.password = "test"
u1.save

u2 = User.new
u2.name = "Jeff"
u2.email = "j@j.com"
u2.password = "test"
u2.save

puts "2 users created"



e1 = Event.new
e1.title = "Starter Night"
e1.location = "1871"
e1.date = "6/14/13"
e1.time = "7:00pm"
e1.price = 5.0
e1.description = "Presentations of Starter League projects"
e1.save

puts "1 event created"

h1 = Host.new
h1.user_id = u1.id
h1.event_id = e1.id
h1.save

h2 = Host.new
h2.user_id = u2.id
h2.event_id = e1.id
h2.save

puts "2 hosts created"


i1 = Invitation.new
i1.host_id = h1.id
i1.name = "Eric"
i1.email = "e@e.com"
i1.rsvp = false
i1.save

i2 = Invitation.new
i2.host_id = h1.id
i2.name = "Richard"
i2.email = "r@r.com"
i2.rsvp = false
i2.save

i3 = Invitation.new
i3.host_id = h2.id
i3.name = "Alex"
i3.email = "al@al.com"
i3.rsvp = false
i3.save

puts "3 invitations created"











