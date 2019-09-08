Rails.application.routes.draw do
  
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :recipes
      resources :ingredients
      resources :steps
    end
  end
end