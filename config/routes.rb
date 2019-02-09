Rails.application.routes.draw do
  get 'users/edit'
  get 'users/update'
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  get '/about', to: 'pages#about', as: 'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :languages, only: [:index, :show] do
    resources :user_languages, only: [:show, :new, :create]
  end
  resources :users, only: [:edit, :update]
end
