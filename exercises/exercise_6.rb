require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates :hourly_rate, numericality: {greater_than: 40, less_than: 200}
  validates_associated :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 45)
@store2.employees.create(first_name: "Monica", last_name: "Smith", hourly_rate: 65)
@store1.employees.create(first_name: "Joan", last_name: "Smith", hourly_rate: 45)
@store2.employees.create(first_name: "Jack", last_name: "Smith", hourly_rate: 80)
@store1.employees.create(first_name: "Hank", last_name: "Smith", hourly_rate: 50)