Rails.application.routes.draw do
  devise_for :users 
  root to: "pages#home"

  get "landhome", to: "menus#landhome"

  resources :events, only: %i[index new create show destroy]

  resources :profiles

  resources :events, only: :show do
    member do
      post :participation
    end
  end

end
