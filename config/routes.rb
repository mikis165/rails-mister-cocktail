Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, shallow: true
    resources :reviews, only: [:new, :create]
  end

  

  
end