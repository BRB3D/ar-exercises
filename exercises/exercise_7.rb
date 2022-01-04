require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

# class Employee < ApplicationRecord
#   validates :first_name
#   validates :last_name
#   validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
#   validates :store_id
# end

# class Store < ApplicationRecord
#   validates :name, length: {minimum: 3}
#   validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
# end

# class ApparelValidator < ActiveModel::Validator
#   def validate(record)
#     unless record.mens_apparel || record.womens_apparel
#       record.errors.add attribute, (options[:message] || "Needs to have etiehr mens or womens apparel")
#     end
#   end
# end

# class Store 
#   include ActiveModel::Validator
#   validates_with ApparelValidator
# end

puts "please enter a store Name"
print "> "

store_name = gets.chomp

n = Store.create(name: store_name)
n.valid?
puts n.errors.full_messages
