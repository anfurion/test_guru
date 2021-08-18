Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :about, only: :index do
    collection do
      get '/author', to: 'about#author'
    end
  end
end
