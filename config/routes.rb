Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
namespace :api, defaults:{ format: :json }do
  	namespace :v1 do
  		resources :users, :only => [:show, :create, :update, :destroy]
  	end
  end 

end
