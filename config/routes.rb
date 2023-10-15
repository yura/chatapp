Rails.application.routes.draw do
  resources :chats
  resources :messages

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :chats, only: [ :index ]
      resources :messages, only: [ :create ]
    end
  end

  root "chats#index"
end
