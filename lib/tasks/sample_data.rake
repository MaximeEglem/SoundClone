namespace :db do
  desc "Fill database with sample data"
  task populateDatabase: :environment do
  Rake::Task['db:reset'].invoke
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
    50.times do
      User.all(:limit => 6).each do |user|
        user.microposts.create!(:content => Faker::Lorem.sentence(5))
      end
    end
  end
end