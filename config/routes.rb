Rails.application.routes.draw do
  resources :cards
  resources :creates
  resources :posts
  resources :tags
  get 'posts/index'
  # scope '/api/v1' do
  #   resources :posts
  # end

  devise_for :user,
     controllers: {
        omniauth_callbacks: 'users/omniauth_callbacks',
        sessions: 'users/sessions',
        registrations: 'users/registrations'
  }

  get 'users/index'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'


  # scope '/api/v1' do
  #   resources :users
  # end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  devise_scope :user do
    get "signup", to: "devise/registrations#new", as: :create_login
    get "login", to: "devise/sessions#new"
    get "logout", to: "devise/sessions#destroy"

    authenticated :user do
      root 'posts#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

end
