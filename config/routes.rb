Rails.application.routes.draw do
  resources :photos
  resources :users
  post '/log_in' => 'users#log_in'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
