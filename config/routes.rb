Rails.application.routes.draw do

  devise_for :users
  resources :days do
    resources :meals do
    end
  end

    root 'welcome#index'
  end
