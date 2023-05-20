Rails.application.routes.draw do
  get "/residents", to: "residents#index"
end
