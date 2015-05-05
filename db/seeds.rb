# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Account.create(name: "Avengers")
Account.create(name: "X-Men")

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

User.create(email: "jeangrey@marvel.com",
            name: "Jean Grey",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/jeangrey.jpg"))

User.create(email: "wolverine@marvel.com",
            name: "Wolverine",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/wolverine.jpg"))

User.create(email: "storm@marvel.com",
            name: "Storm",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/storm.jpg"))

User.create(email: "mystique@marvel.com",
            name: "Mystique",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/mystique.jpg"))

User.create(email: "professor-x@marvel.com",
            name: "Professor X",
            password: "12345678",
            picture: File.new("app/assets/images/seed_profiles/original/professorx.jpg"))

Profile.create(account_id: 1,
                  user_id:    1,
                  role:       "Smasher",
                  owner:      true )

Profile.create(account_id: 1,
                  user_id:    2,
                  role:       "Playboy Millionaire",
                  owner:      false )

Profile.create(account_id: 1,
                  user_id:    3,
                  role:       "Lethal Spy",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    4,
                  role:       "Friendly Neighborhood Savior",
                  owner:      false )

Profile.create(account_id:    1,
                  user_id:    5,
                  role:       "God of Thunder",
                  owner:      false )

Profile.create(account_id:    2,
                  user_id:    6,
                  role:       "Telekinetist",
                  owner:      false )

Profile.create(account_id:    2,
                  user_id:    7,
                  role:       "Savage Warrior",
                  owner:      false )

Profile.create(account_id:    2,
                  user_id:    8,
                  role:       "Weather Manipulator",
                  owner:      false )

Profile.create(account_id:    2,
                  user_id:    9,
                  role:       "Shapeshifter",
                  owner:      false )

Profile.create(account_id:    2,
                  user_id:    10,
                  role:       "Mindreader",
                  owner:      true )

Profile.create(account_id:    2,
                  user_id:    4,
                  role:       "Favored Ally",
                  owner:      false )

shot = Shot.create(title: "Eat a ton of cupcakes",
            description: "Loki has hidden tiny soldiers in cupcakes all over America. We need to eat all of them to make sure cupcakes are safe for children to eat.",
            baseline_value: 0,
            target_value: 200,
            deadline: (Time.now + 900000).to_date,
            accomplished: false,
            account_id: 1,
            unit: "metric tons"
            )

shot.created_at = Time.now - 1010000
shot.save

Shot.create(title: "Save all Chinese people",
            description: "Spring rolls are in trouble. Dr. Doom is trying to hypnotize all of China to do his bidding. We have to fly over there and save all of them.",
            baseline_value: 500000,
            target_value: 1000000000,
            deadline: (Time.now + 1000000).to_date,
            accomplished: false,
            account_id: 1,
            unit: "Chinese saved"
            )

Shot.create(title: "Repair the Stark Tower",
            description: "I need to find 5 people to help me repair the Stark Tower Saturday. We might paint it too.",
            baseline_value: 3,
            target_value: 6,
            deadline: (Time.now + 400000).to_date,
            accomplished: false,
            account_id: 1,
            unit: "bricks laid"
            )

Shot.create(title: "Find Loki's Spies",
            description: "Our intel tells us that Loki has 19 spies in the US government. We need to find them all and bring them to justice.",
            baseline_value: 0,
            target_value: 19,
            deadline: (Time.now + 400000).to_date,
            accomplished: false,
            account_id: 1,
            unit: "spies uncovered and punished"
            )

Shot.create(title: "Destroy Magneto's bases",
            description: "Magneto has got a ton of superevil bases and they're messing with our compasses. They need to be destroyed!",
            baseline_value: 45,
            target_value: 50,
            deadline: (Time.now + 1500000).to_date,
            account_id: 2,
            accomplished: false,
            unit: "bases"
            )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 1 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 3 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 4 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 5 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 5,
                    in_team: true,
                    invitee_id: 1 )

ShotInvite.create( shot_id: 2,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 4 )

ShotInvite.create( shot_id: 2,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 5 )

ShotInvite.create( shot_id: 2,
                    inviter_id: 5,
                    in_team: true,
                    invitee_id: 1 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 4,
                    in_team: true,
                    invitee_id: 2 )

ShotInvite.create( shot_id: 1,
                    inviter_id: 5,
                    in_team: true,
                    invitee_id: 3 )

ShotInvite.create( shot_id: 2,
                    inviter_id: 2,
                    in_team: true,
                    invitee_id: 5 )

update = Update.create( shot_id: 1,
                profile_id: 3,
                description: "Hulk was on a rampage so he gave us a good bump. Good job so far, team.",
                current_value: 15 )

update.created_at = Time.now - 1000000
update.save

update = Update.create( shot_id: 1,
                profile_id: 4,
                description: "Wow, not much has happened since last. Try a bit harder.",
                current_value: 20 )

update.created_at = Time.now - 900000
update.save

update = Update.create( shot_id: 1,
                profile_id: 4,
                description: "We made a special napkin dispenser",
                current_value: 35 )

update.created_at = Time.now - 800000
update.save

update = Update.create( shot_id: 1,
                profile_id: 3,
                description: "Holy moly, great job everyone. A lot has happened",
                current_value: 56 )

update.created_at = Time.now - 700000
update.save

update = Update.create( shot_id: 1,
                profile_id: 1,
                description: "I'm proud of everyone working on this project. Good job!",
                current_value: 94 )

update.created_at = Time.now - 600000
update.save

update = Update.create( shot_id: 1,
                profile_id: 4,
                description: "Moving a bit slow but we're ahead of schedule",
                current_value: 103 )

update.created_at = Time.now - 500000
update.save

update = Update.create( shot_id: 1,
                profile_id: 3,
                description: "My wife left me but I'm still happy because this Shot is going so well!",
                current_value: 120 )

update.created_at = Time.now - 400000
update.save

update = Update.create( shot_id: 1,
                profile_id: 1,
                description: "Good pace everyone.",
                current_value: 145 )

update.created_at = Time.now - 300000
update.save

update = Update.create( shot_id: 1,
                profile_id: 4,
                description: "Fantastic. This Shot is exceeding everyone's expectations!",
                current_value: 175 )

update.created_at = Time.now - 200000
update.save

update = Update.create( shot_id: 1,
                profile_id: 3,
                description: "Almost there. Get ready for the last cupcake",
                current_value: 198 )

update.created_at = Time.now - 100000
update.save


Badge.create(
    title: "Fighter",
    description: "Someone who never gave up when odds were against us.",
    picture: "badges/fighter.png"
  )

Badge.create(
    title: "Diplomat",
    description: "Someone who built bridges and reconciled differences",
    picture: "badges/original/diplomat.png"
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

