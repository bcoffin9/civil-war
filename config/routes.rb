Rails.application.routes.draw do
    root to: 'battles#index'
    resources :battles

end
