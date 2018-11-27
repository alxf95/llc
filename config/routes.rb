Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :languages, only: [:index, :show] do
    resources :user_languages, only: [:new]
    get "languages/:language_id/user_languages/new", to: "pages#home"
  end
end
