Rails.application.routes.draw do
  get "/", to: "questions#index"
end
