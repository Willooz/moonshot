Rails.application.routes.draw do

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  devise_for :users, controllers: {registrations: 'registrations'}

  resources :users, only: [:edit, :update, :destroy]

  # SETTINGS NAVIGATION
  get 'me', to: 'profiles#mine'
  post 'me', to: 'profiles#create'
  patch 'me', to: 'profiles#update', as: :me_update
  put 'me', to: 'profiles#update'
  delete 'me', to: 'profiles#destroy', as: :me_destroy
  get 'me/edit', to: 'profiles#edit'

  get 'people', to: 'profiles#index'
  get 'people/:id', to: 'profiles#show', as: :people_show
  get 'people/:id/invite', to: 'profiles#invite', as: :invite_teammember
  post 'people/:id/send_invites', to: 'shot_invites#add_teammember', as: :send_invites
  get 'people/:id/give_badges', to: 'profiles#give_badges', as: :give_badges
  post 'people/:id/assign_badges', to: 'profiles#assign_badges', as: :assign_badges

  get 'account', to: 'accounts#show'
  patch 'account', to: 'accounts#update', as: :account_update
  put 'account', to: 'account#update'
  delete 'account', to: 'accounts#destroy', as: :account_delete
  get 'account/edit', to: 'accounts#edit'

  # MAIN NAVIGATION
  get 'me/shots', to: 'shots#mine'
  get 'shots', to: 'shots#index'
  get 'shots/new', to: 'shots#new', as: :new_shot
  post 'shots/create', to: 'shots#create', as: :shot_create
  get 'shots/:id', to: 'shots#show', as: :shot
  get 'shots/:id/invite', to: 'shot_invites#new', as: :new_shot_invite
  get 'shots/:id/update', to: 'updates#new', as: :new_update
  get 'shots/:shot_id/badge/:id', to: 'badges#index', as: :badges
  post 'shots/:id/highfive', to: 'highfives#create', as: :highfive_create
  post 'shots/:id/invite', to: 'shot_invites#create_many', as: :shot_invite_create

end