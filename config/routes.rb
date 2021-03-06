Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: :json} do
    resources :job_listings, only: [:index, :show]
    resources :companys, only: [:index, :show]
    resources :search, only: [:index]
    resources :experience_levels, only: [:index]
    resources :regions, only: [:index]
    resources :skills, only: [:index]
  end

  root to: 'static_pages#root'




end
