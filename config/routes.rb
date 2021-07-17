Rails.application.routes.draw do
  get 'homes/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'books' => 'books#index'
  root :to => 'books#top'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as:'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  get 'show' => 'books#show'
end