# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([( name: 'Chicago' ), ( name: 'Copenhagen' )])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  best = User.create(first_name: 'George',last_name: 'Best',nick_name: 'Georgy',email: 'george.best@whatever.de',role: 'developer')

  podolski = User.create(
    first_name: 'Lucas',
    last_name: 'Podolski',
    nick_name: 'Poldi',
    email: 'lucas.podolski@whatever.de',
    role: 'developer'
  )

  rusty = User.create(
    first_name: 'Robert Charles',
    last_name: 'Rian',
    nick_name: 'Rusty',
    email: 'lucas.podolski@whatever.de',
    role: 'developer'
  )

  ocean = User.create(
    first_name: 'Daniel',
    last_name: 'Ocean',
    nick_name: 'Danny',
    email: 'danny.ocean@oceans11.de',
    role: 'developer'
  )

  [podolski, ocean, rusty, best].each { |u| u.save! }

  team_ocean = Team.new(
    name: 'Team Ocean',
    description: 'Guys who like to steel money'
  )

  team_forward = Team.new(
    name: 'Team Goalies',
    description: 'Guys shooting the keeper into the goal'
  )

  team_forward.users << best
  team_forward.users << podolski

  team_ocean.users << ocean
  team_ocean.users << rusty

  team_forward.save!
  team_ocean.save!


