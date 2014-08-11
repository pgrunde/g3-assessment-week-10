Rails.application.routes.draw do
  root "home#index"

  get "/about" => "home#about"

  get "/gifs/new" => "gif#new"
  post "/gifs/new" => "gif#create"

end
