namespace :cmsino do
  namespace :users do

    desc "create admin"
    task :create_admin => :environment do
      print "Provide e-mail of the admin user: "
      email = STDIN.gets.chomp

      u = User.new(:email => email)
      u.save!
    end

  end
end

