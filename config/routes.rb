ShoeShop::Application.routes.draw do
  root to: 'posts#index'
  
  resources :posts do 
    resources :images, shallow: true
    member do 
      get 'upvote'
      get 'downvote'
    end
  end
  
  resources :users
  get 'profile' => 'users#profile'
    
  resource :sessions, only: [:new, :create, :destroy]

  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
end
