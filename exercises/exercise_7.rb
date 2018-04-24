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
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :hourly_rate, length: { in: 40..200 }
    belongs_to :store
    validates :store, presence: true
end

class Store < ActiveRecord::Base
    validates :name, length: { minimum: 3 }
    validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
end


Store.create({ :name => "Nanimo" })

# Error messages
# D, [2018-04-24T21:54:05.028817 #5265] DEBUG -- :    (0.5ms)  BEGIN
# D, [2018-04-24T21:54:05.057140 #5265] DEBUG -- :    (0.4ms)  ROLLBACK