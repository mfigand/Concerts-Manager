Rails.application.routes.draw do

  get '/' => 'concerts#home'

  resources :concerts, only: [:index, :new, :create, :show]

end
