Rails.application.routes.draw do

  resources :artists do
  resources :songs
end
  get 'pages/home'
  root to: 'pages#home'

  namespace :api do
    resources :songs
  end

end
