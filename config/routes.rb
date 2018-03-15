Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :items

  root "items#index"

  get "items/new" , to: "items#new"

  get "items/:id/edit" , to: "items#edit"

  get "/items/:id" , to: "items#show"

end
