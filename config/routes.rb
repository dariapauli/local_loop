Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
  resources :events, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create]
    collection do
      get 'search'
    end
  end

  get "landhome", to: "menus#landhome"

  resources :events, only: %i[index new create show destroy]

  resources :profiles

  resources :bookings, only: :index

  resources :contacts, only: :index

  resources :events, only: :show do
    member do
      post :participation
    end
  end
end
