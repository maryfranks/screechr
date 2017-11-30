# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Screech.delete_all
User.delete_all

user_list = [
  ["chattycathy", "Cathy", "Jones", "1234"],
  ["regularguy", "John", "Doe", "1234"],
  ["neverposts", "Jim", "Smith", "1234"]
]


user_list.each do |user|
  user = User.create!(username: user[0], first_name: user[1], last_name: user[2], password_digest: user[3])
  puts "#{user.username} created"
end

screech_list = [
  [User.first.id, "Washouts on wardens and adjuncts on islands, Stringed bumpy returns and loose leaky highlands"],
  [User.first.id, "Handguns on hawkers and oysters on quarters, Wry ostrich spiders and deaf addled transporters"],
  [User.first.id, "Showers on shelters and dragons on lackeys, Swart daily mishaps and blue bubbly jackeys"],
  [User.first.id, "Grime in vile staples with rear feathered fevers, Fathoms that weigh on my jig and receivers"],
  [User.first.id, "Slack fearless fingernails liked up with bows, These are a few of my favorite ploughs"],
  [User.second.id, "a Hellenism is an antonym: squintier and troublefree"],
  [User.second.id, "a rhino is a wheelhouse: Algerine yet pardoned"],
  [User.second.id, "a dreadnaught is a zoölogy: infinito and measurable"],
]


screech_list.each do |screech|
  screech = Screech.create!(user_id: screech[0], content: screech[1])
  puts "#{screech.id} created"
end
