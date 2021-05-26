Rails.application.routes.draw do
  resources :books
  root to: 'homes#top'
<<<<<<< HEAD
  post 'books' => 'books#create'
  get 'books' => 'books#show'
=======
  get 'books' => 'books#'
>>>>>>> origin/main
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
