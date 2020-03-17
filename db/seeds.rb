# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employee.destroy_all

Employee.create(:name => 'karthik', :email => 'karthik@gmail.com', :password => 'karthik', :admin => true )
Employee.create(:name => 'michael', :email => 'michael@gmail.com', :password => 'michael')

puts "#{ Employee.count } employees created."
