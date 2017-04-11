require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
end

burnaby = Store.new

burnaby.name = 'Burnaby'
burnaby.annual_revenue = 300000
burnaby.mens_apparel = true
burnaby.womens_apparel = true

burnaby.save

Store.create(name: 'Richmond',
             annual_revenue: 1260000,
             mens_apparel: false,
             womens_apparel: true)

Store.create(name: 'Gastown',
             annual_revenue: 190000,
             mens_apparel: true,
             womens_apparel: false)

puts Store.count