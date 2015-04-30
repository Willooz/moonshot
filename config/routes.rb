Rails.application.routes.draw do


   # root to: "home#index"

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :users, only: [:show, :edit, :update, :destroy]
    resources :accounts, only: [:edit, :update] do
      resources :profiles, only: [:index, :show]
      resources :shots do
        collection do
          get 'mine'
        end
      resources :shot_invites, only: [:new, :create, :edit, :update, :destroy]
    end
  end
end


 # root to: "home#index"

 #  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

 #  resources :users, only: [:show]

 #  resources :chalets, only: [:index, :show] do
 #    collection do
 #      get 'search'
 #    end
 #    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
 #  end

 #  namespace :account do
 #    resource :user, only: [:show]
 #    resources :chalets, only: [:new, :create, :destroy, :index]
 #    resources :chalets, only: [:edit, :update] do
 #      resources :chalet_pictures, only: [:destroy]
 #    end
 #    resources :bookings, only: :index
 #  end


