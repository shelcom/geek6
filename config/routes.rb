Rails.application.routes.draw do
  devise_for :users
  resources :tickets
  resources :passengers
  resources :planes
  resources :airports
  resources :cities


  resources :countries do
    resources :cities do
        resources :airports do
            resources :planes do
                resources :passengers do
                    resources :tickets
                    end
                end
            end
        end
  end


   root 'countries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

