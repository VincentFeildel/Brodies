Rails.application.routes.draw do
  devise_for :users
  resources :activities do
    resources :pricings
  end

  root to: 'activities#index'
  mount Attachinary::Engine => "/attachinary"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
