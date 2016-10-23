Rails.application.routes.draw do
  root to: 'courses#list'
  get 'debug', to: 'courses#debug' if Rails.env.development?
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
