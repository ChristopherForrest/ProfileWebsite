Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    get '/profiles' =>'profiles#index'
    get '/profiles/new' =>'profiles#new'
    get '/profiles/show/:id' => 'profiles#show'
    resources :profiles

end
