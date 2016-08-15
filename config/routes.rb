Rails.application.routes.draw do
  resources :sparks, except: [:new, :edit]
  resources :profiles, except: [:new, :edit]
  resources :influencers, except: [:new, :edit]
  resources :sponsors, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
