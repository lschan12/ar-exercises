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
class Employee < ActiveRecord::Base
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true}
  validates :hourly_rate, numericality: { in: 40..200 }
  validates :store, presence: true
end

class Store < ActiveRecord::Base
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {only_integer: true}
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_carry_men_or_women_apparel

  def must_carry_men_or_women_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:store, "must carry at least either mens or womens apparel")
    end
  end
end

new_store_name = gets.chomp
new_store = Store.create(name: new_store_name)

puts new_store.errors.full_messages

new_employee_name = gets.chomp
new_employee = Employee.create(first_name: new_employee_name)

puts new_employee.errors.full_messages