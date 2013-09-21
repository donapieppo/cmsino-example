cmsino-example
==============

Example of a rails application using 
https://github.com/donapieppo/cmsino 


    $ git clone git@github.com:donapieppo/cmsino-example.git
    $ cd cmsino-example
    $ git clone git@github.com:donapieppo/cmsino.git
    $ bundle install 
    $ bundle exec rake db:schema:load
    $ rake cmsino:users:create_admin
    $ rails server

Then you can visit the usual http://127.0.0.1:3000
and login with gmail user.

