Rails.application.routes.draw do
  resources :tarefas, only: [:index, :create, :update, :destroy]

  root "tarefas#index"
end
