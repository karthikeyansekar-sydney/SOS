# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all

Order.create(:item => 'VisualStudio', :name => 'version2', :projectname => 'unisys', :status => 'pending', :employee_id => 7)
Order.create(:item => 'RailsServer', :name => 'version3', :projectname => 'ernestandyoung', :status => 'pending', :employee_id => 8)

puts "#{ Order.count } orders created."

Employee.destroy_all

Employee.create(:name => 'karthik', :email => 'karthik@gmail.com', :password => 'karthik', :admin => true, :tfnnumber => 2122)
Employee.create(:name => 'michael', :email => 'michael@gmail.com', :password => 'michael', :admin => false, :tfnnumber => 2132)

puts "#{ Employee.count } employees created."
