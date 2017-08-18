Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  get 'activities/dashboard', to: "activities#dashboard"
  get 'activities/dashboard_supplyer', to: "activities#dashboard_supplyer"
  # get 'activities/new_pricing', to: "activities#new_pricing"

  resources :activities do
    resources :bookings
  end

  root to: 'activities#home'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
