teams = FactoryGirl.create_list(:team, 5)
topics = FactoryGirl.build_list(:topic, (20..100).to_a.sample)
statuses = FactoryGirl.build_list(:status, (20..100).to_a.sample)

teams.each do |team|
  users = FactoryGirl.create_list(:user, (1..5).to_a.sample,
                                  teams: [team])
end

topics.each do |topic|
  topic.user = User.all.sample
  topic.save!
  FactoryGirl.create_list(:response, (1..10).to_a.sample, topic: topic, user: User.all.sample)
end

statuses.each do |status|
  status.user = User.all.sample
  status.save!
end

first_user = User.all.first
first_user.email = 'george.best@whatever.com'
first_user.save!
