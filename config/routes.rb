CmsinoExample::Application.routes.draw do
  devise_for :users

  root :to => 'home#index', :as => :home
  match 'helps' => "helps#index", :as => 'helps'

end
