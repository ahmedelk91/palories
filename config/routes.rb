Rails.application.routes.draw do

  resources :days do
    resources :meals do
    end
  end

    root 'welcome#index'
  end
