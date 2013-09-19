# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([( name: 'Chicago' ), ( name: 'Copenhagen' )])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  best = User.create(
    first_name: 'George',
    last_name: 'Best',
    nick_name: 'Georgy',
    email: 'george.best@whatever.de',
    role: 'developer',
    password: 'invision'
  )

  podolski = User.create(
    first_name: 'Lucas',
    last_name: 'Podolski',
    nick_name: 'Poldi',
    email: 'lucas.podolski@whatever.de',
    role: 'developer',
    password: 'invision'
  )

  rusty = User.create(
    first_name: 'Robert Charles',
    last_name: 'Rian',
    nick_name: 'Rusty',
    email: 'rusty@whatever.de',
    role: 'developer',
    password: 'invision'
  )

  ocean = User.create(
    first_name: 'Daniel',
    last_name: 'Ocean',
    nick_name: 'Danny',
    email: 'danny.ocean@oceans11.de',
    role: 'developer',
    password: 'invision'
  )

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

  topic_lilly = Topic.create(
    title: 'How to play like Lilly Andres',
    content: 'Practise hard',
    user: podolski
  )

  Response.create(
    content: 'But you need also a big bunch of talent!!!',
    user: best,
    topic: topic_lilly
  )

  topic_benedict = Topic.create(
    title: 'How to cheat Terry Benedict',
    content: 'Be careful and don\'t let you being caught!',
    user: ocean
  )

  Response.create(
    content: 'But if he gets you, he will destroy your life',
    user: rusty,
    topic: topic_benedict
  )

  Response.create(
    content: 'Yea, that\'s true, but to be honest. I hate this guy,' + 
    ' because his girlfriend is Tess',
    user: ocean,
    topic: topic_benedict
  )

  Status.create(
    content: 'As usual: In prison.',
    user: ocean
  )

  Status.create(
    content: 'It\'s Danny\'s fault that I sit next to him in prison.',
    user: rusty
  )

  Status.create(
    content: 'I love Hennes',
    user: podolski
  )

  Status.create(
    content: 'I spent a lot of money on booze, birds and fast cars. ' +
             'The rest I just squandered.',
    user: best
  )