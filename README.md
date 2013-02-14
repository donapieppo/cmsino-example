cmsino-example
==============

Example of a rails application using 
https://github.com/donapieppo/cmsino 


    $ git clone git@github.com:donapieppo/cmsino-example.git
    $ cd cmsino-example
    $ bundle install 
    $ bundle exec rake db:schema:load
    $ bunlde exec rake cmsino:users:testuser
    $ rails start

Then you can visit the usual http://127.0.0.1:3000
and login with user 'example@gmail.com' and password 
'testtest' as specified on `lib/tasks/users.rake`
