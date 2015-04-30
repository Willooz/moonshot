Rails.application.routes.draw do

  # root to: "home#index"

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :users, only: [:show, :edit, :update, :destroy]

  resources :accounts, only: [:edit, :update] do
    resources :profiles, only: [:index, :show] do
      resources :shots do
        collection do
          get 'mine'
        end
        resources :shot_invites, only: [:new, :create, :edit, :update, :destroy]
        resources :badges, only: :index
        resources :highfives, only: :create
      end
    end
  end
end