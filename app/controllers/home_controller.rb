class HomeController < ApplicationController
  def index
    # defined in CmsinoHelper 
    # ../gems/cmsino/app/helpers/cmsino_helper.rb
    editable_page(:home)
    @home_header = true
  end
end
