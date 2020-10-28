Rails.application.routes.draw do
  devise_for :admins

  # Backoffice
  namespace :backoffice do
    get 'dashboards', to: 'dashboards#index' , as: :root

    # # Personalized routes for Settings
    # resources :settings, only: :index do
    #   collection do
    #     # get 'some', as: 'some'
    #   end
    # end

    # resources :prototypes
    resources :categories
    resources :items
  end

  root to: 'pages#index'
end
