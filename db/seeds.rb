# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.create(name: "S.H.I.E.L.D")

User.create(email: "hulk@marvel.com",
            name: "Hulk",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/hulk.jpg"))

User.create(email: "ironman@marvel.com",
            name: "Iron Man",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/ironman.jpg"))

User.create(email: "black-widow@marvel.com",
            name: "Black Widow",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/blackwidow.jpg"))

User.create(email: "spiderman@marvel.com",
            name: "Spider-Man",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/spidey.jpg"))

User.create(email: "thor@marvel.com",
            name: "Thor",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/thor.jpg"))

User.create(email: "wolverine@marvel.com",
            name: "Wolverine",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/wolverine.jpg"))

User.create(email: "thevision@marvel.com",
            name: "The Vision",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/vision.jpg"))

User.create(email: "ant-man@marvel.com",
            name: "Ant-Man",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/antman.jpg"))

User.create(email: "blackpanther@marvel.com",
            name: "Black Panther",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/blackpanther.jpg"))

User.create(email: "cap@marvel.com",
            name: "Captain America",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/captainamerica.jpg"))

User.create(email: "agent-coulson@marvel.com",
            name: "Agent Coulson",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/coulson.jpg"))

User.create(email: "drax@marvel.com",
            name: "Drax the Destroyer",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/drax.jpg"))

User.create(email: "firebird@marvel.com",
            name: "Firebird",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/firebird.jpg"))

User.create(email: "gamora@marvel.com",
            name: "Gamora",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/gamora.jpg"))

User.create(email: "groot@marvel.com",
            name: "Groot",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/groot.jpg"))

User.create(email: "hawkeye@marvel.com",
            name: "Hawkeye",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/hawkeye.jpg"))

User.create(email: "agent-hill@marvel.com",
            name: "Agent Hill",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/hill.jpg"))

User.create(email: "msmarvel@marvel.com",
            name: "Miss Marvel",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/msmarvel.jpg"))

User.create(email: "nickfury@marvel.com",
            name: "Nick Fury",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/nickfury.jpg"))

User.create(email: "quicksilver@marvel.com",
            name: "Quicksilver",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/quicksilver.jpg"))

User.create(email: "rocket@marvel.com",
            name: "Rocket",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/rocket.jpg"))

User.create(email: "scarletwitch@marvel.com",
            name: "Scarlet Witch",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/scarletwitch.jpg"))

User.create(email: "shehulk@marvel.com",
            name: "She-Hulk",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/shehulk.jpg"))

User.create(email: "starlord@marvel.com",
            name: "Starlord",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/starlord.jpg"))

User.create(email: "wasp@marvel.com",
            name: "The Wasp",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/wasp.jpg"))




Profile.create(account_id: 1,
                  user_id:    1,
                  role:       "Smasher",
                  team:       "Engineering",
                  owner:      true )

Profile.create(account_id: 1,
                  user_id:    2,
                  role:       "Playboy Millionaire",
                  team:       "Engineering",
                  owner:      false )

Profile.create(account_id: 1,
                  user_id:    3,
                  role:       "Lethal Spy",
                  team:       "Corporate",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    4,
                  role:       "Friendly Neighborhood Savior",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    5,
                  role:       "God of Thunder",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    6,
                  role:       "Savage Warrior",
                  team:       "Corporate",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    7,
                  role:       "Altruist Android",
                  team:       "Engineering",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    8,
                  role:       "Head of Engineering",
                  team:       "Engineering",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    9,
                  role:       "Master Fighter",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    10,
                  role:       "True Patriot",
                  team:       "Corporate",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    11,
                  role:       "Head of Corporate",
                  team:       "Corporate",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    12,
                  role:       "Zealous Salesman",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    13,
                  role:       "Power Source",
                  team:       "Engineering",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    14,
                  role:       "Sneaky Marketer",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    15,
                  role:       "I AM GROOT",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    16,
                  role:       "Accurate Analyst",
                  team:       "Corporate",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    17,
                  role:       "Reliable Ally",
                  team:       "Corporate",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    18,
                  role:       "Charismatic Field Operator",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    19,
                  role:       "Head of S.H.I.E.L.D",
                  team:       "Corporate",
                  owner:      false )


Profile.create(account_id:    1,
                  user_id:    20,
                  role:       "Speedster",
                  team:       "Sales",
                  owner:      false )


Profile.create(account_id:    1,
                  user_id:    21,
                  role:       "Space Raccoon",
                  team:       "Sales",
                  owner:      false )


Profile.create(account_id:    1,
                  user_id:    22,
                  role:       "Lab Assistant",
                  team:       "Engineering",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    23,
                  role:       "Head of Sales",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    24,
                  role:       "Maverick",
                  team:       "Sales",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    25,
                  role:       "Lab Analyst",
                  team:       "Engineering",
                  owner:      false )

Shot.create(title: "Release Marvel films",
            description: "We need to tell our stories to the world. Let's make big Hollywood blockbusters about our lives.",
            baseline_value: 0,
            target_value: 12,
            deadline: (Time.now + 400000).to_date,
            accomplished: false,
            account_id: 1,
            unit: "films released"
            )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 2 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 1 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 5 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 7 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 10 )

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Iron Man",
                current_value: 1 )

update.created_at = Time.now - 221356800
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Incredible Hulk",
                current_value: 2 )

update.created_at = Time.now - 217779525
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Iron Man 2",
                current_value: 3 )

update.created_at = Time.now - 157904325
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Thor",
                current_value: 4 )

update.created_at = Time.now - 126454725
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Captain America: The First Avenger",
                current_value: 5 )

update.created_at = Time.now - 119801925
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "The Avengers",
                current_value: 6 )

update.created_at = Time.now - 95005125
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Iron Man 3",
                current_value: 7 )

update.created_at = Time.now - 63555525
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Thor: The Dark World",
                current_value: 8 )

update.created_at = Time.now - 47225925
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Captain America: The Winter Soldier",
                current_value: 9 )

update.created_at = Time.now - 34525125
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Guardians of the Galaxy",
                current_value: 10 )

update.created_at = Time.now - 24243525
update.save

update = Update.create( shot_id: 1,
                profile_id: 2,
                description: "Avengers: Age of Ultron",
                current_value: 11 )

update.created_at = Time.now - 656325
update.save


Badge.create(
    title: "Fighter",
    description: "Someone who never gave up when odds were against us.",
    picture: "badges/fighter.png"
  )

Badge.create(
    title: "Diplomat",
    description: "Someone who built bridges and reconciled differences",
    picture: "badges/diplomat.png"
  )

Badge.create(
    title: "Morale Booster",
    description: "Someone who made the team at ease and gave them moral support.",
    picture: "badges/morale_booster.png"
  )

Badge.create(
    title: "Motivator",
    description: "Someone who knew how to get the best out of you.",
    picture: "badges/motivator.png"
  )

Badge.create(
    title: "Team Player",
    description: "Someone who put others and the project ahead of himself.",
    picture: "badges/team_player.png"
  )

Badge.create(
    title: "Free Thinker",
    description: "Someone is not afraid to think outside of the box.",
    picture: "badges/free_thinker.png"
  )

Badge.create(
    title: "Energizer",
    description: "Someone who inspipred and energized others.",
    picture: "badges/energizer.png"
  )

Badge.create(
    title: "Creative Mind",
    description: "Someone who found solutions in creative ways.",
    picture: "badges/creative_mind.png"
  )

Badge.create(
    title: "Tech Hero",
    description: "Someone who made sure that things worked properly.",
    picture: "badges/tech_hero.png"
  )

Badge.create(
    title: "Mr Meticulous",
    description: "Someone who didn't miss a single little detail.",
    picture: "badges/mr_meticulous.png"
  )



