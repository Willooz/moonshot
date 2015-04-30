Rails.application.routes.draw do

   # root to: "home#index"
  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get 'account/profile', to: 'profiles#mine'

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :users, only: [:edit, :update, :destroy]

  resources :accounts, only: [:edit, :update] do
    resources :profiles, only: [:index, :show] do
      resources :shots do
        resources :updates, only: [:new, :create]
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