require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
@all_revenue = Store.sum('annual_revenue')
@average_revenue = @all_revenue / Store.count
@million_dollar_store_number =Store.where('annual_revenue > 1000000').count

puts @all_revenue
puts @average_revenue
puts @million_dollar_store_number