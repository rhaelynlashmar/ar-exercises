require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Ask the user for a store name
puts "Enter a store name:"
store_name = gets.chomp

# Ask for additional details
puts "Enter the annual revenue for the store:"
annual_revenue = gets.chomp.to_i

puts "Does the store carry men's apparel? (yes/no)"
mens_apparel = gets.chomp.downcase == "yes"

puts "Does the store carry women's apparel? (yes/no)"
womens_apparel = gets.chomp.downcase == "yes"

# Attempt to create a store with the provided details
new_store = Store.create(
  name: store_name,
  annual_revenue: annual_revenue,
  mens_apparel: mens_apparel,
  womens_apparel: womens_apparel
)

# Display error messages if the store is invalid
if new_store.errors.any?
  puts "Error(s) occurred while creating the store:"
  new_store.errors.full_messages.each do |message|
    puts "- #{message}"
  end
else
  puts "Store '#{store_name}' created successfully!"
end
