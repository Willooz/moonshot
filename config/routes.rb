Rails.application.routes.draw do

  root to: "shots#index"

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :users, only: [:edit, :update, :destroy]

  # SETTINGS NAVIGATION
  get 'me', to: 'profiles#mine'
  post 'me', to: 'profiles#create'
  patch 'me', to: 'profiles#update'
  put 'me', to: 'profiles#update'
  delete 'me', to: 'profiles#destroy'
  get 'me/edit', to: 'profiles#edit'

  get 'account', to: 'accounts#show'
  patch 'account', to: 'accounts#update'
  put 'me', to: 'profiles#update'
  delete 'account', to: 'accounts#destroy'
  get 'account/edit', to: 'accounts#edit'

  # MAIN NAVIGATION
  get 'me/shots', to: 'shots#mine'

  get 'shots', to: 'shots#index'
  get 'shots/:id', to: 'shots#show'
  get 'shots/:id/invite', to: 'shot_invites#new'
  get 'shots/:id/update', to: 'updates#new'
  get 'shots/:id/badge', to: 'badges#index'

  get 'people', to: 'profiles#index'
  get 'people/:id', to: 'profiles#show', as: :people_show

end