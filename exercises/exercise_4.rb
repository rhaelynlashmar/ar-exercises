require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Create 3 more stores
Store.create(name: "Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: "Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: "Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

# Fetch stores that carry men's apparel
@mens_stores = Store.where(mens_apparel: true)

# Output name and annual revenue for each men's store
@mens_stores.each do |store|
  puts "Men's Store: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and have annual revenue < $1M
@womens_stores = Store.where(womens_apparel: true).where("annual_revenue < ?", 1000000)

# Output name and annual revenue for each women's store
@womens_stores.each do |store|
  puts "Women's Store: #{store.name}, Annual Revenue: #{store.annual_revenue}"
end
