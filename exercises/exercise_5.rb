require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum('annual_revenue')
total_stores = Store.count
average_revenue = total_revenue / total_stores
million_club = Store.where("annual_revenue > ?", 1000000).count

puts "Our total revenue from all stores is #{total_revenue}."
puts "Our average revenue is #{average_revenue}."
puts "We have #{million_club} store that make over 1M$"