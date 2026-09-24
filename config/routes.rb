Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resources :game_ideas, only: [ :index, :new, :create, :show, :edit, :update ]
  root "game_ideas#index"
end
