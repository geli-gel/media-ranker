# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

WORKS_FILE = Rails.root.join('db', 'media-seeds.csv')
puts "Loading raw media-seeds data from #{WORKS_FILE}"

work_failures = []
CSV.foreach(WORKS_FILE, :headers => true) do |row|
  work = Work.new
  work.etc = row['etc']
  work.etc = row['etc']
  work.etc = row['etc']
  work.etc = row['etc']
  successful = work.save
  if !successful
    work_failures << work
    puts "Failed to save work: #{work.inspect}"
  else
    puts "Saved work: #{work.inspect}"
  end
end

puts "Added #{Work.count} works"
puts "#{work_failures} works failed to save"
