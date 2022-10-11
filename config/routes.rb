Rails.application.routes.draw do

  root to:"homes#top"
  devise_for :users

   resources :books, only: [:index, :show, :edit, :create, :destroy, :update]

    resources :users, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

   get "home/about" => "homes#about",as:"about"

end
