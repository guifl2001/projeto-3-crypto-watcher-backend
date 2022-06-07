Rails.application.routes.draw do
  resources :cryptos
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
end
