Rails.application.routes.draw do

  resources :days do
    resources :meals
  end

  root 'welcome#index'
end
