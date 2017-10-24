Rails.application.routes.draw do

  resources :artists do
  resources :songs
end
  get 'pages/home'
  root to: 'pages#home'

  namespace :api do
    resources :artists do
      resources :songs
      delete '/songs', to: 'songs#destroy_all'
    end
  end

end
