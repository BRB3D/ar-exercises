require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

burnaby = Store.create do |s|
s.name = "Burnaby"
s.annual_revenue = 300000
s.mens_apparel = true
s.womens_apparel = true
end


rich = Store.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel: true, mens_apparel: false)

gas = Store.new
gas.name = "Gastown"
gas.annual_revenue = 190000
gas.mens_apparel = true
gas.womens_apparel = false
gas.save 

puts Store.count