require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create({ :name => "Surrey", :annual_revenue => 224000, :womens_apparel => true })
Store.create({ :name => "Whistler", :annual_revenue => 1900000, :mens_apparel => true })
Store.create({ :name => "Yaletown", :annual_revenue => 430000, :womens_apparel => true, :mens_apparel => true })

@mens_stores = Store.where(mens_apparel: true).find_each do |store|
  puts "The store in #{store.name} makes #{store.annual_revenue}"
end


@womens_stores = Store.where(womens_apparel: true ).find_each do |store|
    if store.annual_revenue > 1000000
        puts "Our women's store in #{store.name} makes #{store.annual_revenue}"
    end
end