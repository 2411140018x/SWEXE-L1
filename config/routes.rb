Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :game_ideas, only: [ :index ]
  root "game_ideas#index"
end
