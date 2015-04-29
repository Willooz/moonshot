# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.create(name: "Feer Enterprises")
User.create(email: "hulk@marvel.com",
            password: "12345678")
Membership.create(account_id: 1,
                  user_id:    1,
                  role:       "Supersmasher",
                  team:       "Avengers",
                  owner:      true )