require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

s = Store.create(name: 'Surrey', annual_revenue: 224000, womens_apparel: true, mens_apparel: false)

w = Store.create(name: 'Whistler', annual_revenue: 1900000, womens_apparel: false, mens_apparel: true)

y = Store.create(name: 'Yaletown', annual_revenue: 430000, womens_apparel: true, mens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each {|store| puts "name: #{store.name} annual revenue: #{store.annual_revenue}"}

@womens_stores_less_than_1M_revenue = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

@womens_stores_less_than_1M_revenue.each {|store| puts "name: #{store.name} annual revenue: #{store.annual_revenue}" }