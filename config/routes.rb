Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  get 'about', to: 'pages#about'

  get 'newsletter', to: 'pages#newsletter'

  get 'buildapp', to: 'pages#buildapp'

  root "pages#index"

  resources :articles do
    resources :comments 
  end

end
