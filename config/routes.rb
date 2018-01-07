Rails.application.routes.draw do
  root 'questions#index' 
  devise_for :users
	resources :questions do
		resources :votes, only: [:create, :destroy]
		resources :answers, only: [:create]
	end
end
