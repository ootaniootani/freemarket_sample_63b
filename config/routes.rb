Rails.application.routes.draw do
  root  'signup#index'
  resources :test, only: [:index, :show] do
    collection do 
      get :logout
    end
  end
  resources :signup, only: [:index] do
    collection do
      get :login
      get :registration
      get :sms_confirmation
      get :address
      get :card
      get :complete
    end
  end
end
