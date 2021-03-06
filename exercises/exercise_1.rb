require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0, only_integer: true}

  before_destroy do
    if !empty?
      abort("Can't not destroy this store");
    end
  end

  def empty?
    self.employees.size <= 0
  end
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