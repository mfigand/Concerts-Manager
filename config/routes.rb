Rails.application.routes.draw do

  get '/' => 'site#home'

  get '/concerts/search'  => 'concerts#search'

  post '/concerts/show_search' => 'concerts#show_search'

  resources :concerts, only: [:index, :new, :create, :show] do
    resources :comments, only:[:create]

  end

end
