# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

=begin 20.times do
  task = Task.create!(
    title:        Faker::Lorem.sentence
    description:  Faker::Lorem.paragraph
    )
=end

admin = User.find_or_initialize_by(
  name:     'Admin User',
  email:    'admin@example.com'
)
admin.password = 'helloworld'
admin.skip_confirmation!
admin.save!

10.times do
  task = Task.create!(
    user: admin,
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph)

  task.update_attributes!(created_at: rand(10.minutes .. 10.hours).ago)
end

 puts "Seed finished"