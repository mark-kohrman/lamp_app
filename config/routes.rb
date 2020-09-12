Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/lamps" => "lamps#index"
    post "/lamps" => "lamps#create"
    get "/lamps/:id" => "lamps#show"
    patch "/lamps/:id" => "lamps#update"
    delete "/lamps/:id" => "lamps#destroy"


  end
end
