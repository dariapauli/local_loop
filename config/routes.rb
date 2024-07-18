Rails.application.routes.draw do
  devise_for :users 
  root to: "pages#home"

  resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
  end

  get "landhome", to: "menus#landhome"

  resources :events, only: %i[index new create show destroy]

  resources :profiles

  resources :events, only: :show do
    member do
      post :participation
    end
  end

end
