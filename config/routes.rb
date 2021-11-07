Rails.application.routes.draw do
  namespace :api do
		namespace :v1 do
			resources :users, :bones, :proteins, :pets, :portions, :meals, :veggies, :foods, :fruits, :organs, :livers, :nuts
      post '/portions/get_pet_portions', to: 'portions#get_pet_portions'
      post '/sessions', to: 'sessions#create'
      get '/sessions/current_user', to: 'sessions#show'
      post '/meals/get_all_categories', to: 'meals#get_all_categories'
		end
	end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
