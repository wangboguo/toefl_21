Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'words#show', id: 1

  resources :words, only: [:new, :create, :edit, :update, :destroy]

  resources :words, only: [:index, :show] do
    put :remember, on: :member
    put :not_remember, on: :member
  end
end
