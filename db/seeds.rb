# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Tag.create([{ text: 'fitness' }, { text: 'wellness' }, { text: 'vegan' }, { text: 'smoothies' }])

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'hashtags.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Tag.new
  t.text = row['text']
  t.save
  puts "#{t.text} saved"
end
