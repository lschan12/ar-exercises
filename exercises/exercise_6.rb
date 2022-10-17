require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(
  first_name: "Khurram",
  last_name: "Virani",
  hourly_rate: 60
)

@store1.employees.create(
  first_name: "Bob",
  last_name: "Smith",
  hourly_rate: 100
)

@store1.employees.create(
  first_name: "Ben",
  last_name: "Wong",
  hourly_rate: 40
)

@store1.employees.create(
  first_name: "Jimmy",
  last_name: "Woo",
  hourly_rate: 50
)


@store2.employees.create(
  first_name: "Liz",
  last_name: "Lemon",
  hourly_rate: 60
)

@store2.employees.create(
  first_name: "Vlad",
  last_name: "Poutine",
  hourly_rate: 120
)
@store2.employees.create(
  first_name: "Michael",
  last_name: "Scott",
  hourly_rate: 100
)
@store2.employees.create(
  first_name: "Steve",
  last_name: "Rogers",
  hourly_rate: 50
)
