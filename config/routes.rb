Rails.application.routes.draw do

  resources :concerts, only: [:index]

end
