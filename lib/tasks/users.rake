namespace :cmsino do
namespace :users do

  desc "test user"
  task :testuser => :environment do
    User.create! do |u|
      u.email = 'donapieppo@gmail.com'
    end
  end

end
end

