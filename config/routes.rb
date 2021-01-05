Rails.application.routes.draw do
  namespace :api do
    resources :cards do
      resources :questions
    end
  end
end
