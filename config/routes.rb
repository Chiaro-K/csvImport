Rails.application.routes.draw do
  # get 'students/index'

  # get 'students/import'

  resources :students do
    collection { post :import }
  end

  root to: "students#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
