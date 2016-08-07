Rails.application.routes.draw do

  resources :days

  root 'welcome#index'
end
