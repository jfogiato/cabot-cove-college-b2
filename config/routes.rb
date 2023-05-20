Rails.application.routes.draw do
  get "/residents", to: "residents#index"
  get "/residents/:id", to: "residents#show"
end
