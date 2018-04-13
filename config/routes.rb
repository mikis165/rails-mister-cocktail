Rails.application.routes.draw do

	root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, shallow: true
    resources :reviews, only: [:new, :create]
  end

end