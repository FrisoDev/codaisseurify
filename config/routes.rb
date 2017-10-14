Rails.application.routes.draw do
  resources :artists
  resources :songs

  get 'pages/home'
  root to: 'pages#home'
  #
  # artist_count = Artist.count
  # puts "#{artist_count} artists were added"
  #
  # get 'artists' =>"artists#index"
  # get 'contact' =>"artists#contact"
  # get 'destroy' =>"songs#destroy"
  delete "artists/:id" => "artist#destroy", as: :delete
  #

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
