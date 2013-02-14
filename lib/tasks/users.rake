namespace :cmsino do
namespace :users do

  desc "test user"
  task :testuser => :environment do
    User.create! do |u|
      u.email = 'example@gmail.com'
      u.password = 'testtest'
      u.password_confirmation = 'testtest'
    end
  end

end
end

