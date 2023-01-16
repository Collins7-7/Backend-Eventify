Rails.application.routes.draw do
  resources :mpesas
   
  post 'stkpush', to: 'mpesas#stkpush'
  post 'stkquery', to: 'mpesas#stkquery'

  namespace :api do 
    namespace :v1 do
       resources :users, only: [:create] 
       post '/login', to: 'auth#create'
       get '/profile', to: 'users#profile'
       resources :categories
       resources :bookings
       resources :events
      end 
    end
end
