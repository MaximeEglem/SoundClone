namespace :db do
  desc "Fill database with sample data"
  task :populateDatabase => :environment do
    Rake::Task['db:reset'].invoke
    make_users
    make_microposts
    make_relationships
  end
end

def make_users
    administrateur = User.create!(:name => "Administrator",
                         :email => "Administrator@soundclone.com",
                         :password => "administrator",
                         :password_confirmation => "administrator")
    administrateur.toggle!(:admin)
    User.create!(name: "Maxime Eglem",
                 email: "maxime.eglem@gmail.com",
                 password: "maxime",
                 password_confirmation: "maxime")
    99.times do |n|
      name  = Faker::Name.name
      email = "AccountTest-#{n+1}@gmail.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
end

def make_microposts
  User.all(:limit => 6).each do |user|
    50.times do
      content = Faker::Lorem.sentence(5)
      user.microposts.create!(:content => content)
    end
  end
end

def make_relationships
  users = User.all
  user  = users.first
  following = users[1..50]
  followers = users[3..40]
  following.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end