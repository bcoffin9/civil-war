Rails.application.routes.draw do
    root to: 'battles#index'
    
    resources :battles do
    	resources :scenes
    end
    resources :tags

end
