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
end

class Store < ActiveRecord::Base
    has_many :employees
end


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Tom", last_name: "Avant", hourly_rate: 100)
@store2.employees.create(first_name: "Elyott", last_name: "Unknown", hourly_rate: 6)
@store2.employees.create(first_name: "Craig", last_name: "Rice", hourly_rate: 20)
@store2.employees.create(first_name: "Chairman", last_name: "Meow", hourly_rate: 33)


