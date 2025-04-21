require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Load the first store and assign it to @store1
@store1 = Store.find(1)

# Load the second store and assign it to @store2
@store2 = Store.find(2)

# Update the first store's name
@store1.update(name: "Metrotown")

puts "Updated store name: #{@store1.name}"
