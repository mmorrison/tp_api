Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :locations
    end
    namespace :v2 do
      post "/graphql", to: "graphql#execute"
    end
  end
end
