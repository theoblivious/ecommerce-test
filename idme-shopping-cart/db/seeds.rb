# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/shoes.csv"), headers: true) do |row|
  Item.find_or_create_by(title: row[0], price: row[1], description: row[2], item_id: row[3], item_image: row[4])
end