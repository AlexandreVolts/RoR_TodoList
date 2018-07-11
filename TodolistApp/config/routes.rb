Rails.application.routes.draw do
  root 'main#home'
  get '/todo/:id' => 'main#show'
  get '/error/:error' => 'main#error'
  post '/' => 'main#add'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
