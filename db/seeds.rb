# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.create(name: "Feer Enterprises")
Account.create(name: "Acme Corp.")

User.create(email: "hulk@marvel.com",
            name: "Hulk",
            password: "12345678")

Profile.create(account_id: 1,
                  user_id:    1,
                  role:       "Supersmasher",
                  team:       "Avengers",
                  owner:      true )

User.create(email: "ironman@marvel.com",
            name: "Iron Man",
            password: "12345678")

Profile.create(account_id: 1,
                  user_id:    2,
                  role:       "Playboy Millionaire",
                  team:       "Avengers",
                  owner:      false )

Shot.create(title: "Let's code this Moonshot shit!",
            description: "We can do it if we harness the power of cocaine",
            baseline_value: 5,
            target_value: 100,
            deadline: (Time.now + 1000000).to_date,
            account_id: 1,
            accomplished: false
            )

Shot.create(title: "We're going to steal the Moon!",
            description: "We need to figure out if it's made out of cheese. Sweet, delicious cheddar cheese.",
            baseline_value: 55,
            target_value: 2000,
            deadline: (Time.now + 1000000).to_date,
            accomplished: false,
            account_id: 1
            )

Shot.create(title: "Make a million paperplanes",
            description: "We'll use those to fly to Peru and see Macchu Picchu. Inka Kola baby!",
            baseline_value: 122003,
            target_value: 1000000,
            deadline: (Time.now + 1000000).to_date,
            accomplished: false,
            account_id: 2
            )

13.times do
  Badge.create(
    title: Faker::Lorem.word,
    description: Faker::Lorem.sentence(3),
    picture: "http://lorempixel.com/150/150/"
  )
end

