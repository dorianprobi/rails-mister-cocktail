Rails.application.routes.draw do
  get 'ingredients/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:create, :destroy]
  end

  root to: 'cocktails#index'
end
