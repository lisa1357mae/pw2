Rails.application.routes.draw do
    get '/' => 'home#index', as: :root
    get '/news' => 'home#news'
    get '/repertoire' => 'home#repertoire'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :videos, only: [:index, :new, :create]
root to: 'videos#index'
end
