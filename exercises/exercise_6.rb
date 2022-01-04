require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: 'Jose', last_name: "Islas", hourly_rate: 60)
@store1.employees.create(first_name: 'Sofiya', last_name: "Lipova", hourly_rate: 40)
@store1.employees.create(first_name: 'Tedd', last_name: "Lasso", hourly_rate: 30)


@store2.employees.create(first_name: 'Nico', last_name: "Alkurry", hourly_rate: 20)
@store2.employees.create(first_name: 'Han', last_name: "Solo", hourly_rate: 50)
@store2.employees.create(first_name: 'Boba', last_name: "Fett", hourly_rate: 30)