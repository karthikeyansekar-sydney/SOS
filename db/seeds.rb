# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
o1 = Order.create(:item => 'VisualStudio', :name => 'version2', :projectname => 'UNISYS')
o2 = Order.create(:item => 'RailsServer', :name => 'version3', :projectname => 'E&Y')
puts "#{ Order.count } orders created."

Employee.destroy_all
e1 = Employee.create(:name => 'karthik', :email => 'karthik@gmail.com', :password => 'chicken', :admin => true, :tfnnumber => 2122)
e2 = Employee.create(:name => 'michael', :email => 'michael@gmail.com', :password => 'chicken', :tfnnumber => 2132)
puts "#{ Employee.count } employees created."

e1.orders << o1
e2.orders << o2
