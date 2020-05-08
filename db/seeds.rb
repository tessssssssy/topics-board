
require 'faker'

Topic.destroy_all
Vote.destroy_all
User.destroy_all

# Create users
user_1 = User.create(name: 'user_1', email: 'user1@mail.com', password: 'password')
user_2 = User.create(name: 'user_2', email: 'user2@mail.com', password: 'password')
user_3 = User.create(name: 'admin', email: 'admin@mail.com', password: 'password', admin: true)

# Create topics
5.times do
    Topic.create(
      title: Faker::Hacker.noun,
      description: Faker::Hacker.say_something_smart,
      user: user_1
    )
end
# Create votes on topics 1-4 by user_1
for i in (1..4) do
    Vote.create(
      topic_id: i,
      user_id: 1
    )
end

# Create a vote on topic 3 by user_2
Vote.create(
  topic_id: 3,
  user_id: 2
)

# => topic 3 has 2 votes, topics 1, 2, and 4 have 1 vote each, topic 5 has no votes    
=======
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



