ClJr::Application.routes.draw do

  root to: 'categories#index'
  resources :categories, :except => [:index, :edit, :update, :destroy]
  resources :posts

end

