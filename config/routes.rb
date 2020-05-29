Rails.application.routes.draw do
  resources :students do
    collection { post :import }
  end

  root to: "students#index"
end
