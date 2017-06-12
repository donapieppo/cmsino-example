CmsinoExample::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  root to: 'home#index'
  get 'helps' => "helps#index", as: 'helps'

  # devise_scope :user do
  #   get 'sign_in',  to: 'devise/sessions#new', as: :new_user_session
  #   get 'sign_out', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
end
